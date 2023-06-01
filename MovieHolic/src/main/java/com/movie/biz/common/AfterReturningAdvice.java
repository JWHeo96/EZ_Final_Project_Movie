package com.movie.biz.common;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Service;

@Service
@Aspect
public class AfterReturningAdvice {

	@AfterReturning(pointcut="PointcutCommon.getPointcut()", returning="returnObj")
	public void afterLog(JoinPoint jp, Object returnObj) {
		String method = jp.getSignature().getName(); // �޼ҵ��
		
		if (returnObj != null) {
			System.out.printf("[���� ó��] %s(), ���ϰ�: %s\n", 
				method, returnObj.toString());
		} else {
			System.out.printf("[���� ó��] %s(), ���ϰ�: %s\n", 
					method, "���ϰ� ����");
		}
	}
}