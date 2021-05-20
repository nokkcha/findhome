package com.itwillbs.domain;

public class ImageBean {
	private int id;
	private int room_id;
	private String file_name;
	private String original_file_name;
	
	public String getOriginal_file_name() {
		//return original_file_name;
		return file_name.replace("/s_", "/");
	}
	public void setOriginal_file_name(String original_file_name) {		
		this.original_file_name = original_file_name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getRoom_id() {
		return room_id;
	}
	public void setRoom_id(int room_id) {
		this.room_id = room_id;
	}
	public String getFile_name() {
		return file_name;
	}
	public void setFile_name(String file_name) {
		this.file_name = file_name;
	}	
	
}
