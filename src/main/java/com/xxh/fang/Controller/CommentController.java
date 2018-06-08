package com.xxh.fang.Controller;

import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.xxh.fang.Util.ResVo;
import com.xxh.fang.api.CommentApi;
import com.xxh.fang.entity.CommentVo;
import com.xxh.fang.entity.CstcustormerPo;
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
			return "UNLOGIN";
		}

		GivealikeVo givealikeVo = new GivealikeVo();
		givealikeVo.setCustomerId(sessionlogin.getCustomerId());
		givealikeVo.setPointOfTime(new Date());
		givealikeVo.setProduct_id(productid);
		givealikeVo.setStatus(status);
		 ResVo resvo = commentApiImpl.addGivealike(givealikeVo);
		return resvo.getMsg();

	}

	@RequestMapping(value = { "giveToreport" })
	@ResponseBody
	public String giveToreport(HttpServletRequest rq, HttpServletResponse rp, Long productid, Integer status) {

		CstcustormerPo sessionlogin = (CstcustormerPo) rq.getSession().getAttribute("sessionlogin");

		if (sessionlogin == null) {
			return "UNLOGIN";
		}

		GivealikeVo givealikeVo = new GivealikeVo();
		givealikeVo.setCustomerId(sessionlogin.getCustomerId());
		givealikeVo.setPointOfTime(new Date());
		givealikeVo.setProduct_id(productid);
		givealikeVo.setStatus(status);
		 ResVo resvo = commentApiImpl.addGivealike(givealikeVo);
		return resvo.getMsg();

	}

	@RequestMapping("pointOfpraise")
	@ResponseBody

	public ResVo pointOfpraise(Long commentOnID) {

		CommentVo commentVo = new CommentVo();
		commentVo.setCommentOnID(commentOnID);
		 ResVo resvo = commentApiImpl.updatePointOfpraise(commentVo);
		return resvo;
	}

	@RequestMapping( value = "add")
	@ResponseBody
	public String adddo(HttpServletRequest rq, Long productid, String content) {

		CstcustormerPo sessionlogin = (CstcustormerPo) rq.getSession().getAttribute("sessionlogin");

		if (sessionlogin == null) {
			return "UNLOGIN";
		}
		CommentVo commentVo = new CommentVo();
		commentVo.setContent(content);
		commentVo.setCommentOfTime(new Date());
		commentVo.setProduct_id(productid);
		commentVo.setCustomerId(sessionlogin.getCustomerId());
		commentVo.setPointOfpraise(0L);

		ResVo vo = commentApiImpl.addComment(commentVo);

		return vo.getMsg();
	}

	@RequestMapping("login.html")
	public String loginHtml() {
		return "cust/login";

	}

}
