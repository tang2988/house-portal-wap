package com.xxh.fang.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxh.fang.Util.ResVo;
import com.xxh.fang.api.CstcustormerApi;
import com.xxh.fang.api.ProductApi;
import com.xxh.fang.entity.ChangeCustomerStatusVo;
import com.xxh.fang.entity.ChangeLoginPasswordVo;
import com.xxh.fang.entity.CstcustormerPo;
import com.xxh.fang.entity.CstcustormerVo;
import com.xxh.fang.entity.ModifyUserProfileReqVo;
import com.xxh.fang.entity.ProductVo;
import com.xxh.fang.entity.RetrievePasswordVo;
import com.xxh.fang.entity.UserAuthenticationVo;

@Controller
@RequestMapping("cstcustormer")

public class CstcustormerController {

	@Resource
	CstcustormerApi cstcustormerApi;
	@Resource
	ProductApi productApiImpl;

	/**
	 * 登陆显示页
	 * 
	 * @return
	 */
	@RequestMapping("login.html")
	public String loginhtml(HttpServletRequest request, Model model, String mobliephone, String password,HttpSession httpSession) {
		CstcustormerPo  cstcustormervo = (CstcustormerPo) httpSession.getAttribute("sessionlogin");
		if(cstcustormervo!=null){
			return login(request, model, cstcustormervo.getMobilePhone(), cstcustormervo.getLoginPassword());
		}
		return "cust/login";
	}
	
	@RequestMapping("login.do")
	public String logindo() {
		
		return "cust/login";
	}

	/**
	 * 登陆
	 * 
	 * @param model
	 * @param mobliephone
	 * @param password
	 * @return
	 */
	@RequestMapping("login")

	public String login(HttpServletRequest request, Model model, String mobliephone, String password) {

		CstcustormerVo cs = new CstcustormerVo();
		cs.setMobilePhone(mobliephone);
		cs.setLoginPassword(password);
		ResVo result = cstcustormerApi.cstCustomerLogin(cs);
		HttpSession session = request.getSession();
		session.setAttribute("sessionlogin", result.getData());
		model.addAttribute("resultone", result);
		List<ProductVo> productvo = productApiImpl.findAll();
		model.addAttribute("productvo", productvo);
		model.addAttribute("productsize", productvo.size());

		return "cust/personal";
	}

	@RequestMapping("regester.html")
	public String regesterhtml() {

		return "cust/regester";
	}

	/**
	 * 注册
	 * 
	 * @param model
	 * @param mobilePhone
	 * @param loginPassword
	 * @return
	 */
	@RequestMapping("register")
	public String register(HttpServletRequest request, Model model, String mobilePhone, String loginPassword) {
		CstcustormerVo cstcustormervo = new CstcustormerVo();
		cstcustormervo.setLoginPassword(loginPassword);
		cstcustormervo.setMobilePhone(mobilePhone);
		ResVo register = cstcustormerApi.addCstcustormerVo(cstcustormervo);
		if (register.getSuccess()) {
			return login(request, model, mobilePhone, loginPassword);
		}
		return regesterhtml();

	}

	/**
	 * 找回密码
	 * 
	 * @param customerId
	 * @param Loginpassword
	 * @param newLoginpassword
	 * @return
	 */
	@RequestMapping("changeLoginPassword")
	public String changeLoginPassword(Long customerId, String Loginpassword, String newLoginpassword) {

		ChangeLoginPasswordVo changeLoginPasswordVo = new ChangeLoginPasswordVo();
		changeLoginPasswordVo.setCustomerId(customerId);
		changeLoginPasswordVo.setLoginPassword(Loginpassword);
		changeLoginPasswordVo.setNewloginPassword(newLoginpassword);
		cstcustormerApi.changeLoginPassword(changeLoginPasswordVo);
		return "success";
	}

	/**
	 * 修改状态
	 * 
	 * @param customerId
	 * @param newCustomerStatus
	 * @return
	 */
	@RequestMapping("changeCustomerStatus")
	public String changeCustomerStatus(Long customerId, Integer newCustomerStatus) {
		ChangeCustomerStatusVo changeCustomerStatusVo = new ChangeCustomerStatusVo();

		changeCustomerStatusVo.setCustomerId(customerId);
		changeCustomerStatusVo.setNewCustomerStatus(newCustomerStatus);
		cstcustormerApi.changeCustomerStatus(changeCustomerStatusVo);
		return "success";
	}

	/**
	 * 修改头像
	 * 
	 * @param customerId
	 * @param newheaderIconUrl
	 * @return
	 */
	@RequestMapping("modifyUserProfile")
	public String modifyUserProfile(Long customerId, String newheaderIconUrl) {
		ModifyUserProfileReqVo modifyUserProfileReqVo = new ModifyUserProfileReqVo();

		modifyUserProfileReqVo.setCustomerId(customerId);
		modifyUserProfileReqVo.setHeaderIconUrl(newheaderIconUrl);
		cstcustormerApi.modifyUserProfile(modifyUserProfileReqVo);
		return "success";

	}

	/**
	 * 用户认证
	 * 
	 * @param authentic
	 * @param customerId
	 * @return
	 */
	@RequestMapping("userAuthentication")
	public String userAuthentication(Integer authentic, Long customerId) {

		UserAuthenticationVo userAuthenticationVo = new UserAuthenticationVo();
		userAuthenticationVo.setAuthentic(authentic);
		userAuthenticationVo.setCustomerId(customerId);
		cstcustormerApi.userAuthentication(userAuthenticationVo);
		return "";
	}

	/**
	 * 找回登陆密码
	 * 
	 * @param mobilePhone
	 * @param newPassword
	 * @param verificationCode
	 * @return
	 */
	@RequestMapping("retrievePassword")
	public String retrievePassword(String mobilePhone, String newPassword, Integer verificationCode) {
		RetrievePasswordVo retrievePasswordVo = new RetrievePasswordVo();

		retrievePasswordVo.setMobilePhone(mobilePhone);
		retrievePasswordVo.setNewLoginPassword(newPassword);
		retrievePasswordVo.setVerificationCode(verificationCode);
		cstcustormerApi.retrievePassword(retrievePasswordVo);
		return "";
	}

}
