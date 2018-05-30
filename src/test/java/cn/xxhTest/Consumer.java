/*
 * Copyright (C) 2015 ShenZhen HeShiDai Co.,Ltd All Rights Reserved.
 * 未经本公司正式书面同意，其他任何个人、团体不得使用、复制、修改或发布本软件.
 * 版权所有深圳合时代金融服务有限公司 www.heshidai.com.
 */
package cn.xxhTest;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:dubbo-consumer-zk.xml" })
public class Consumer {
	ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("dubbo-consumer-zk.xml");
	Logger log = LoggerFactory.getLogger(Consumer.class);
	@Test
	public void Hello() {
/*
		context.start();
		DemoService demoService = (DemoService) context.getBean("demoService");*/ // obtain
																				// proxy
																				// object
																				// for
																				// remote
																				// invocation
	/*	String hello = demoService.sayHello("world");*/ // execute remote
														// invocation
		/*System.out.println(hello); */// show the result
	}

	/*@Test
	public void login() {
		CstcustormerService b = (CstcustormerService) context.getBean("cstcustormerServiceImpl");

		CstcustormerVo po = new CstcustormerVo();

		po.setMobilePhone("15012847961");
		po.setLoginPassword("xxxxxx");
		ResVo c = b.cstCustomerLogin(po);
		System.out.println(c);
	}
	*/

	
}