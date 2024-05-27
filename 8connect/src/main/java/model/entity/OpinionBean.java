package model.entity;

import java.io.Serializable;

public class OpinionBean implements Serializable {
	
	private String code;
	
	private String opinionText;
	
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

}
