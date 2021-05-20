package com.itwillbs.domain;

import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;

@Getter
@AllArgsConstructor
enum OptionType {
	에어컨("air-conditioner"), 냉장고("fridge"), 세탁기("washer"), 가스레인지("stove"), 인덕션("electric-stove"), 전자레인지("microwave"),
	책상("desk"), 책장("bookcase"), 침대("bed"), 옷장("wardrobe"), 신발장("shoes"), 싱크대("kitchen");

	private String code;

	public static final Map<String, OptionType> map = new HashMap<String, OptionType>();
	static {
		for (OptionType os : OptionType.values()) {
			map.put(os.getCode(), os);
		}
	}

	public static OptionType getOs3ByCode(String code) {
		return map.get(code);
	}

	public static Object getKeyFromValue(String value) {
		return OptionType.valueOf(value).code;
	}
}

@Getter
@AllArgsConstructor
enum FeesType {
	전기세("electric"), 가스("gas"), 수도("water"), 인터넷("wifi"), TV("television");

	private String code;

	public static final Map<String, FeesType> map = new HashMap<String, FeesType>();
	static {
		for (FeesType os : FeesType.values()) {
			map.put(os.getCode(), os);
		}
	}

	public static FeesType getOs3ByCode(String code) {
		return map.get(code);
	}

	public static Object getKeyFromValue(String value) {
		return FeesType.valueOf(value).code;
	}
}

@JsonIgnoreProperties(ignoreUnknown = true)
@Getter
@Setter
public class OneRoomBean {

	Map<String, Object> include_fees;// = new HashMap<>();

	public Map<String, Object> getInclude_fees() {
		return include_fees;
	}

	public void setInclude_fees(Map<String, Object> include_fees) {
		this.include_fees = include_fees;
	}

	public void setInclude_fees(String[] json) {
		
		if (json == null)
			return;
		
		Map<String, Object> include_fees = new HashMap<String, Object>();
		System.out.println(json);

		for (int i = 0; i < json.length; i++) {
			System.out.println(json[i] + " : " + FeesType.getKeyFromValue(json[i]));
			include_fees.put(json[i], FeesType.getKeyFromValue(json[i]));
		}

		this.include_fees = include_fees;
	}

	String[] include_optionsArray;
	String[] include_feesArray;
	
	Map<String, Object> include_options; // = new HashMap<>();

	public Map<String, Object> getInclude_options() {
		return include_options;
	}
	
	public void setInclude_options(Map<String, Object> options) {
		this.include_options = options;
	}

	public void setInclude_options(String[] json) {

		if (json == null)
			return;
		
		Map<String, Object> options = new HashMap<String, Object>();

		for (int i = 0; i < json.length; i++) {
			System.out.println(json[i] + " : " + OptionType.getKeyFromValue(json[i]));
			options.put(json[i], OptionType.getKeyFromValue(json[i]));
		}

		this.include_options = options;
	}

	private int room_id; // 매물 ID

	private String[] fileList;

	private String address; // 주소

	private int deposit; // 보증금

	private int monthly_rent; // 월세

	private String room_type; // "오픈형 원룸 (방1)" COMMENT "방구조",

	private int fees; // DEFAULT 0 COMMENT "관리비",

	private float exclusive_area_m; // DEFAULT 3.31 COMMENT "전용면적 (제곱미터)",

	private float exclusive_area_p; // DEFAULT 1.00 COMMENT "전용면적 (평)",

	private float contract_area_m; // DEFAULT 3.31 COMMENT "계약면적 (제곱미터)",

	private float contract_area_p; // DEFAULT 1.00 COMMENT "계약면적 (평)",

	private String floor; // DEFAULT "1층" COMMENT "건물층수",

	private String living_floor; // DEFAULT "반지하" COMMENT "반지하,옥탑방,1~80",

	private String direction; // DEFAULT "동향" COMMENT "동,서,남,북,남동,남서,북동,북서,확인필요",

	private String loan; // DEFAULT "불가능" COMMENT "가능 불가능 확인필요",

	private String pet = "불가능"; // COMMENT "가능 불가능 고양이만 확인필요",

	private String parking;// DEFAULT "없음" COMMENT "가능 없음 엘리베이터 있음 없음",

	private String elevator; // DEFAULT "없음" COMMENT "엘리베이터",

	private String m_date; // DEFAULT "즉시 입주" COMMENT "입주가능일",

	private String subject; // "글제목",

	private String content; // "상세설명",

	private String phone_number; // "판매자 연락처",

	private String seller_id; // "판매자 ID",

	private String is_selling = "Y"; // "판매중 여부(Y,N)

	private String search;

	private int monthly_rent_min;

	private int monthly_rent_max;

	private int deposit_min;

	private int deposit_max;
	
	private String category = "OneRoom"; // OneRoom, Offi

	@Override
	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}

}