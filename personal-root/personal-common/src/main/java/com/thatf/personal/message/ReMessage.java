package com.thatf.personal.message;

/**
 * 
 * @Description:json返回格式对象
 * @author hr
 * @date 2018年1月30日 下午5:49:19
 */
public class ReMessage {

	private String returnCode;
	private String returnMessage;
	private String returnUserMessage;

	public ReMessage(){

	}

	public ReMessage(String returnCode, String returnMessage) {
		this.returnCode = returnCode;
		this.returnMessage = returnMessage;
	}

	public ReMessage(String returnCode,String returnMessage,String returnUserMessage){
		this.returnCode= returnCode;
		this.returnMessage = returnMessage;
		this.returnUserMessage = returnUserMessage;
	}
	public String getReturnCode() {
		return returnCode;
	}
	public void setReturnCode(String returnCode) {
		this.returnCode = returnCode;
	}
	public String getReturnMessage() {
		return returnMessage;
	}
	public void setReturnMessage(String returnMessage) {
		this.returnMessage = returnMessage;
	}
	public String getReturnUserMessage() {
		return returnUserMessage;
	}
	public void setReturnUserMessage(String returnUserMessage) {
		this.returnUserMessage = returnUserMessage;
	}

	@Override
	public String toString() {
		return "ReMessage [returnCode=" + returnCode + ", returnMessage=" + returnMessage + ", returnUserMessage="
				+ returnUserMessage + "]";
	}

}
