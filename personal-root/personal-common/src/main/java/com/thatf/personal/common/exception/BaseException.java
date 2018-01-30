package com.thatf.personal.common.exception;

import java.io.Serializable;

/**
 * 
 * @Description:自定义异常、已知异常
 * @author hr
 * @date 2018年1月30日 下午6:01:57
 */
public class BaseException extends RuntimeException implements Serializable{
    private static final long serialVersionUID = 2289672303720789154L;
    private String msg;
    private String column;

    public BaseException(){
        super();
    }

    /**
     * 业务异常,只抛出message,不会调用堆栈信息
     */
    public BaseException(String message){
        super(message);
        this.msg = message;
    }

    public BaseException(String column,String message){
        super(message);
        this.msg = message;
        this.column = column;
    }

    public String getColumn() {
        return column;
    }

    public BaseException(Exception e){
        super(e);
    }

    public String getMsg() {
        return msg;
    }

    @Override
    public Throwable fillInStackTrace(){
        return this;
    }

    @Override
    public String toString(){
        return this.msg;
    }

}
