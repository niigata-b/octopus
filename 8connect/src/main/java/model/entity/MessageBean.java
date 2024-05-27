package model.entity;

import java.io.Serializable;

public class MessageBean implements Serializable {
	
	/**
	 * 掲示板ID
	 */
	private int messageId;
	
	/**
	 * 従業員コード
	 */
	private String code;
	
	/**
	 * タイトル
	 */
	private String title;
	
	/**
	 * 投稿内容
	 */
	private String messageText;
	
	/**
	 * 投稿日時
	 */
	private String postDatetime;
	

	/**
	 * 名前
	 */
	private String name;
	
	
	/**
	 * コンストラクタ
	 */
	public MessageBean() {
		
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessageText() {
		return messageText;
	}

	public void setMessageText(String messageText) {
		this.messageText = messageText;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	public String getPostDatetime() {
		return postDatetime;
	}

	public void setPostDatatime(String postDatetime) {
		this.postDatetime = postDatetime;
	}
	
	public int getMessageId() {
		return messageId;
	}

	public void setMessageId(int messageId) {
		this.messageId = messageId;
	}


}
