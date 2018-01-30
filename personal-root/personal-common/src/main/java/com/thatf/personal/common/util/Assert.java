package com.thatf.personal.common.util;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.thatf.personal.common.exception.BaseException;

/**
 * Created by woodle on 16/6/15.
 * 断言
 */
public abstract class Assert {

    protected Assert() {
    }

    public static void notNull(Object obj, String message) {
        if (obj == null) {
            throw new BaseException(message);
        }
    }

    public static void isTrue(Boolean obj, String message) {
        if (!obj) {
            throw new BaseException(message);
        }
    }

    public static void isNotTrue(Boolean obj, String message) {
        if (obj) {
            throw new BaseException(message);
        }
    }

    public static void notBlank(String obj, String message) {
        if (obj == null || "".equals(obj.trim())) {
            throw new BaseException(message);
        }
    }

    public static void notEmpty(List<?> objList, String message) {
        if (objList == null || objList.size() == 0) {
            throw new BaseException(message);
        }
    }

    public static void notEmpty(Set<?> objList, String message) {
        if (objList == null || objList.size() == 0) {
            throw new BaseException(message);
        }
    }
    
    public static void notEmpty(Map<?,?> objList, String message) {
        if (objList == null || objList.size() == 0) {
            throw new BaseException(message);
        }
    }

    public static void notZero(long obj, String message) {
        if (obj == 0) {
            throw new BaseException(message);
        }
    }

    public static void isNull(Object obj, String message) {
        if (obj != null) {
            throw new BaseException(message);
        }
    }

    public static void isNotNull(Object obj, String message) {
        if (obj == null) {
            throw new BaseException(message);
        }
    }
}
