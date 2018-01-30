package com.thatf.personal.message;

/**
 * 
 * @Description:json返回格式对象
 * @author hr
 * @date 2018年1月30日 下午5:49:19
 */
public class SuccessResult<T> extends AbstractResult<T> {
	
	private static final long serialVersionUID = -3178002289088337173L;
	
	
	public SuccessResult(ReMessage error, T dataT) {
        super(error, dataT);
    }
    public SuccessResult(ReMessage error) {
        super(error, null);
    }

}
