package com.xxh.fang.Controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxh.fang.api.GivealikeApi;

@Controller
@RequestMapping(value={"Givealike"})
public class GivealikeController {
	
	@Resource
	GivealikeApi givealikeApiImpl;
	/*
	@RequestMapping("findlike")
	public Long findlike(){
		
		return ;
	}*/
}
