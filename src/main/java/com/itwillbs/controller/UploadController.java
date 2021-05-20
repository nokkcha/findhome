package com.itwillbs.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.IOUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.itwillbs.dao.BoardDAO;
import com.itwillbs.upload.MediaUtils;
import com.itwillbs.upload.UploadFileUtils;

@Controller
public class UploadController {

	Logger logger = LoggerFactory.getLogger(UploadController.class);
	
	@Inject
	BoardDAO boardDAO;

	// xml에 설정된 리소스 참조
	// bean의 id가 uploadPath인 태그를 참조
	@Resource(name = "uploadPath")
	String uploadPath;

	// 업로드 흐름 : 업로드 버튼클릭 => 임시디렉토리에 업로드=> 지정된 디렉토리에 저장 => 파일정보가 file에 저장
	@RequestMapping(value = "/upload/uploadForm", method = RequestMethod.GET)
	public void uplodaForm() {
		// upload/uploadForm.jsp(업로드 페이지)로 포워딩
	}

	// produces="text/plain;charset=utf-8" : 파일 한글처리
	@ResponseBody
	@RequestMapping(value = "/upload/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=utf-8")
	public ResponseEntity<String> uploadAjax(MultipartFile file, HttpServletRequest request) throws Exception {
		logger.info("originalName : " + file.getOriginalFilename());
		logger.info("size : " + file.getSize());
		logger.info("contentType : " + file.getContentType());

		// 상대 경로 설정
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/upload/";
		uploadPath = root_path + attach_path;

		return new ResponseEntity<String>(
				UploadFileUtils.uploadFile(uploadPath, file.getOriginalFilename(), file.getBytes()), HttpStatus.OK);
	}

	@ResponseBody // view가 아닌 data리턴
	@RequestMapping("/upload/displayFile")
	public ResponseEntity<byte[]> displayFile(String fileName) throws Exception {
		// 서버의 파일을 다운로드하기 위한 스트림
		InputStream in = null; // java.io
		ResponseEntity<byte[]> entity = null;
		try {
			// 확장자를 추출하여 formatName에 저장
			String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
			// 추출한 확장자를 MediaUtils클래스에서 이미지파일여부를 검사하고 리턴받아 mType에 저장
			MediaType mType = MediaUtils.getMediaType(formatName);
			// 헤더 구성 객체(외부에서 데이터를 주고받을 때에는 header와 body를 구성해야하기 때문에)
			HttpHeaders headers = new HttpHeaders();
			// InputStream 생성
			in = new FileInputStream(uploadPath + fileName);
			// 이미지 파일이면
			if (mType != null) {
				headers.setContentType(mType);
				// 이미지가 아니면
			} else {
				fileName = fileName.substring(fileName.indexOf("_") + 1);
				// 다운로드용 컨텐트 타입
				headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
				//
				// 바이트배열을 스트링으로 : new String(fileName.getBytes("utf-8"),"iso-8859-1") *
				// iso-8859-1 서유럽언어, 큰 따옴표 내부에 " \" 내용 \" "
				// 파일의 한글 깨짐 방지
				headers.add("Content-Disposition",
						"attachment; filename=\"" + new String(fileName.getBytes("utf-8"), "iso-8859-1") + "\"");
				// headers.add("Content-Disposition", "attachment; filename='"+fileName+"'");
			}
			// 바이트배열, 헤더, HTTP상태코드
			entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in), headers, HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			// HTTP상태 코드()
			entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
		} finally {
			in.close(); // 스트림 닫기
		}
		return entity;
	}

	// 7. 파일 삭제 매핑
	@ResponseBody // view가 아닌 데이터 리턴
	@RequestMapping(value = "/upload/deleteFile", method = RequestMethod.POST)
	public ResponseEntity<String> deleteFile(String fileName, int room_id, HttpServletRequest request) {
		// 상대 경로 설정
		String root_path = request.getSession().getServletContext().getRealPath("/");
		String attach_path = "resources/upload/";
		uploadPath = root_path + attach_path;

		// 파일의 확장자 추출
		String formatName = fileName.substring(fileName.lastIndexOf(".") + 1);
		// 이미지 파일 여부 검사
		MediaType mType = MediaUtils.getMediaType(formatName);
		// 이미지의 경우(썸네일 + 원본파일 삭제), 이미지가 아니면 원본파일만 삭제

		boolean bIsDeleted = false;
		
		// 이미지 파일이면
		if (mType != null) {
			// 썸네일 이미지 파일 추출
			String front = fileName.substring(0, 12);
			String end = fileName.substring(14);
			String deletePath = uploadPath + (front + end).replace('/', File.separatorChar);
			System.out.println("파일삭제 경로 : " + deletePath);
			// 썸네일 이미지 삭제
			bIsDeleted = new File(deletePath).delete();
		}
		// 원본 파일 삭제
		bIsDeleted = new File(uploadPath + fileName.replace('/', File.separatorChar)).delete();

		// 데이터와 http 상태 코드 전송
		if (bIsDeleted) {
			boardDAO.deleteRoomImage(room_id);
			
			return new ResponseEntity<String>("deleted", HttpStatus.OK);
		} else {
			return new ResponseEntity<String>("not_deleted", HttpStatus.BAD_REQUEST);
		}
	}

	@RequestMapping(value = "/upload/uploadForm", method = RequestMethod.POST)
	public ModelAndView uplodaForm(MultipartFile file, ModelAndView mav) throws Exception {

		logger.info("파일이름 :" + file.getOriginalFilename());
		logger.info("파일크기 : " + file.getSize());
		logger.info("컨텐트 타입 : " + file.getContentType());

		String savedName = file.getOriginalFilename();

		File target = new File(uploadPath, savedName);

		// 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
		// FileCopyUtils.copy(바이트배열, 파일객체)
		FileCopyUtils.copy(file.getBytes(), target);

		mav.setViewName("upload/uploadResult");
		mav.addObject("savedName", savedName);

		return mav; // uploadResult.jsp(결과화면)로 포워딩
	}
}