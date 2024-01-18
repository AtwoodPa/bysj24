package com.ym.oss.exception;

/**
 * OSS异常类
 *
 * @author PP
 */
public class OssException extends RuntimeException {

    private static final long serialVersionUID = 1L;

    public OssException(String msg) {
        super(msg);
    }

}
