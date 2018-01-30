package com.thatf.personal.message;


/**
 * 
 * @Description:json返回格式对象
 * @author hr
 * @date 2018年1月30日 下午5:49:19
 */
public class FailureResult<T> extends AbstractResult<T> {

	private static final long serialVersionUID = 1761835567883109614L;
	
	
	public FailureResult(ReMessage error, T dataT) {
        super(error, dataT);
    }
     public FailureResult(ReMessage error) {
        super(error, null);
    }

}
