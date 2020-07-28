package com.colodoo.framework.config.log.aspect;

import lombok.extern.slf4j.Slf4j;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * @author colodoo
 */
@Aspect
@Component
@Slf4j
public class LogAspect {

     @Pointcut("@annotation(com.colodoo.framework.config.log.annotation.Log)")
    public void logPointCut() {
    }

    @Before("logPointCut()")
    public void doBefore(JoinPoint joinPoint) throws Throwable {
        log.info("测试日志");
    }

}
