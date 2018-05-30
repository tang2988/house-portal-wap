package com.xxh.fang.Controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxh.fang.api.ProductApi;
import com.xxh.fang.entity.CustomerAndProductVo;
import com.xxh.fang.entity.ProductAndSkuVo;
import com.xxh.fang.entity.ProductPo;

@Controller
@RequestMapping("product")
public class ProductController {

	@Resource
	ProductApi productApiImpl;

	@RequestMapping("productindex")
	public String index(Model model) {
		List<CustomerAndProductVo> customerAndProductPos = productApiImpl.customerAndProductFind();

		model.addAttribute("customerAndProductPos", customerAndProductPos);
		return "cust/shouye";
	}

	@RequestMapping("contextpage")
	public String contextpage() {
		return "cust/ContextPage";
	}

	@RequestMapping("arealike")
	public String arealike(Model model, String area) {
		List<CustomerAndProductVo> list = productApiImpl.findAllAndTheListOf(area);
		model.addAttribute("list", list);
		return "cust/liebiao";
	}

	@RequestMapping("contextPage")
	public String contextPage(Model model) {
		ProductAndSkuVo productAndSkuvo = new ProductAndSkuVo();
		productAndSkuvo.setProduct_id(20L);
		List<Map<String, Object>> andSkuVos = productApiImpl.findProductId(productAndSkuvo);

		model.addAttribute("andSkuVos", andSkuVos);

		return "cust/ContextPage";

	}

}
