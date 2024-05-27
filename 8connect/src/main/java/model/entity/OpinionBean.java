package model.entity;

import java.io.Serializable;

public class OpinionBean implements Serializable {
	
	private String name;

	private String code;
	
	private String opinionText;
	
	private String sendDatetime;
	
	


	public OpinionBean() {
		
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getOpinionText() {
		return opinionText;
	}

	public void setOpinionText(String opinionText) {
		this.opinionText = opinionText;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getSendDatetime() {
		return sendDatetime;
	}

	public void setSendDatetime(String sendDatetime) {
		this.sendDatetime = sendDatetime;
	}

}
