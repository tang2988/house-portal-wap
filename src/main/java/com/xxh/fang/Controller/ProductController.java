package com.xxh.fang.Controller;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.xxh.fang.Util.ResVo;
import com.xxh.fang.api.CommentApi;
import com.xxh.fang.api.ProductApi;
import com.xxh.fang.entity.CommentVo;
import com.xxh.fang.entity.CustomerAndProductVo;
import com.xxh.fang.entity.ProductAndSkuBO;
import com.xxh.fang.entity.ProductAndSkuVo;
import com.xxh.fang.entity.ProductVo;
import com.xxh.fang.entity.SkuVo;

@Controller
public class ProductController {

	@Resource
	ProductApi productApiImpl;

	@Resource
	CommentApi commentApiImpl;

	@RequestMapping(value = { "/" })
	public String index(Model model) {
		ResVo customerAndProductPos = productApiImpl.customerAndProductFind();

		model.addAttribute("customerAndProductPos", customerAndProductPos.getData());
		return "cust/shouye";
	}

	@RequestMapping("contextpage")
	public String contextpage() {
		return "cust/ContextPage";
	}

	@RequestMapping("arealike")
	public String arealike(Model model, String area) {
		ResVo list = productApiImpl.findAllAndTheListOf(area);
		model.addAttribute("list", list.getData());
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

		ResVo sentimentHigh = commentApiImpl.sentimentHigh();
		ResVo newest = commentApiImpl.newest();
		ResVo earliest = commentApiImpl.earliest();

		model.addAttribute("sentimentHigh", sentimentHigh.getData());
		model.addAttribute("newest", newest.getData());
		model.addAttribute("earliest", earliest.getData());

		ResVo vo = productApiImpl.modifyreadthenumber(productId);
		model.addAttribute("readthenumber", vo.getData());

		return "cust/ContextPage";

	}

	@RequestMapping("add.html")
	public String addhtml() {
		return "cust/addProductAndSku";
	}

	@RequestMapping(value = { "add.do" })
	@ResponseBody
	public String adddo(ProductVo productVo, HttpServletRequest req) {

		List<SkuVo> skuList = new ArrayList<SkuVo>();
		String[] typeOfHouseArray = req.getParameterValues("typeOfHouse");
		String[] priceArray = req.getParameterValues("price");
		String[] flat = req.getParameterValues("flat");
		String[] Stock = req.getParameterValues("Stock");

		for (int k = 0; k < typeOfHouseArray.length; k++) {

			SkuVo skuvo = new SkuVo();
			skuvo.setTypeOfHouse(typeOfHouseArray[k]);
			skuvo.setPrice(new BigDecimal(priceArray[k]));
			skuvo.setFlat(Integer.parseInt(flat[k]));
			skuvo.setStock(Integer.parseInt(Stock[k]));
			skuList.add(skuvo);
		}

		ProductAndSkuBO product = new ProductAndSkuBO();
		product.setSkuList(skuList);
		product.setProductVo(productVo);
		ResVo b = productApiImpl.addProduct(product);
		return b.getMsg();
	}

	@RequestMapping(value = { "updateProduct" })
	@ResponseBody
	public String updateProduct(ProductVo productVo, HttpServletRequest req) {

		List<SkuVo> skuList = new ArrayList<SkuVo>();
		String[] typeOfHouseArray = req.getParameterValues("typeOfHouse");
		String[] priceArray = req.getParameterValues("price");
		String[] flat = req.getParameterValues("flat");
		String[] Stock = req.getParameterValues("Stock");

		for (int k = 0; k < typeOfHouseArray.length; k++) {

			SkuVo vo = new SkuVo();
			//vo.setSkuid(skuid);
			vo.setTypeOfHouse(typeOfHouseArray[k]);
			vo.setPrice(new BigDecimal(priceArray[k]));
			vo.setFlat(Integer.parseInt(flat[k]));
			vo.setStock(Integer.parseInt(Stock[k]));
			skuList.add(vo);
		}

		ProductAndSkuBO product = new ProductAndSkuBO();
		product.setSkuList(skuList);
		product.setProductVo(productVo);
		ResVo b = productApiImpl.addProduct(product);
		return "true";
	}
}
