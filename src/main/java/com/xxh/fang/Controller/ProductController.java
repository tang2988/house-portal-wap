package com.xxh.fang.Controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxh.fang.api.ProductApi;
import com.xxh.fang.entity.CustomerAndProductVo;
import com.xxh.fang.entity.ProductAndSkuVo;
import com.xxh.fang.entity.ProductVo;
import com.xxh.fang.entity.SkuVo;

@Controller
public class ProductController {

	@Resource
	ProductApi productApiImpl;

	@RequestMapping(value = { "/" })
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
		model.addAttribute("area", area);
		return "cust/liebiao";
	}

	@RequestMapping("contextPage")
	public String contextPage(Model model, Long productId) {
		ProductAndSkuVo productAndSkuVo = new ProductAndSkuVo();
		ProductVo productVo = new ProductVo();
		productVo.setProduct_id(productId);
		productAndSkuVo.setProductVo(productVo);
		ProductAndSkuVo andSkuVos = productApiImpl.findProductAndSku(productAndSkuVo);
		List<SkuVo> kucun = andSkuVos.getSkuList();
		int kc = 0;
		
		for (SkuVo ls : kucun) {
			kc = ls.getStock();
		}
		model.addAttribute("kc", kc);
		model.addAttribute("list", andSkuVos.getSkuList());
		model.addAttribute("andSkuVos", andSkuVos.getProductVo());

		return "cust/ContextPage";

	}

}
