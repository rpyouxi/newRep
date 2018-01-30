package com.thatf.personal.message;

import java.io.Serializable;

/**
 * 
 * @Description:json返回格式对象
 * @author hr
 * @date 2018年1月30日 下午5:48:12
 */
public abstract interface Result<T> extends Serializable {

	public abstract T getData();

	public abstract void setData(T t);

	public abstract ReMessage getError();

	public abstract void setError(ReMessage error);

}
