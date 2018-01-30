package com.thatf.personal.message;

/**
 * 
 * @Description:json返回格式对象
 * @author hr
 * @date 2018年1月30日 下午5:49:19
 */
public class AbstractResult<T> implements Result<T> {


	private static final long serialVersionUID = 2886488413732371978L;

	protected ReMessage error;

    protected T data;

    public AbstractResult(ReMessage error, T dataT) {
        this.error = error;
        this.data = dataT;
    }


    public ReMessage getError() {
        return this.error;
    }

    public void setError(ReMessage error) {
       this.error = error;
    }



    public T getData() {
        return this.data;
    }

    public void setData(T dataT) {
        this.data = dataT;
    }
}
