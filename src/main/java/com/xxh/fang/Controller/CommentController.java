package com.xxh.fang.Controller;

import java.io.IOException;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xxh.fang.api.CommentApi;
import com.xxh.fang.entity.CommentVo;
import com.xxh.fang.entity.CstcustormerPo;
import com.xxh.fang.entity.CstcustormerVo;
import com.xxh.fang.entity.GivealikeVo;

@Controller
@RequestMapping("comment")
public class CommentController {

	@Resource
	CommentApi commentApiImpl;

	@RequestMapping(value = { "give" })
	@ResponseBody
	public String givepraise(HttpServletRequest rq, Long productid, Integer status) {
		CstcustormerPo sessionlogin = (CstcustormerPo) rq.getSession().getAttribute("sessionlogin");

		if (sessionlogin == null) {

		}

		GivealikeVo givealikeVo = new GivealikeVo();
		givealikeVo.setCustomerId(sessionlogin.getCustomerId());
		givealikeVo.setPointOfTime(new Date());
		givealikeVo.setProduct_id(productid);
		givealikeVo.setStatus(status);
		commentApiImpl.addGivealike(givealikeVo);
		return "赞成功";

	}

	@RequestMapping(value = { "giveToreport" })
	@ResponseBody
	public String giveToreport(HttpServletRequest rq, HttpServletResponse rp, Long productid, Integer status) {

		CstcustormerPo sessionlogin = (CstcustormerPo) rq.getSession().getAttribute("sessionlogin");

		if (sessionlogin == null) {

		}

		GivealikeVo givealikeVo = new GivealikeVo();
		givealikeVo.setCustomerId(sessionlogin.getCustomerId());
		givealikeVo.setPointOfTime(new Date());
		givealikeVo.setProduct_id(productid);
		givealikeVo.setStatus(status);
		commentApiImpl.addGivealike(givealikeVo);
		return "举报成功";

	}

	@RequestMapping("pointOfpraise")
	@ResponseBody

	public String pointOfpraise(Long commentOnID) {

		CommentVo commentVo = new CommentVo();
		commentVo.setCommentOnID(commentOnID);
		commentApiImpl.updatePointOfpraise(commentVo);
		return "true";
	}

	@RequestMapping("add.do")
	public String adddo(HttpServletRequest rq, Long productid, String content) {

		CstcustormerPo sessionlogin = (CstcustormerPo) rq.getSession().getAttribute("sessionlogin");

		if (sessionlogin == null) {

		}
		CommentVo commentVo = new CommentVo();
		commentVo.setContent(content);
		commentVo.setCommentOfTime(new Date());
		commentVo.setProduct_id(productid);
		commentVo.setCommentOnPeople(sessionlogin.getNickName());
		commentVo.setPointOfpraise(0L);
		commentVo.setRepostId(0L);
		commentApiImpl.addComment(commentVo);
		return "添加成功";
	}

}
