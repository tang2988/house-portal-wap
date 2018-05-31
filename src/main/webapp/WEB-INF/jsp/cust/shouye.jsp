<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>



<!doctype html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0" />
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="<%=basePath%>static/css/amazeui.min.css">
<link rel="stylesheet" href="<%=basePath%>static/css/wap.css?2">
<title>首页</title>
</head>
<body>
	<div data-am-widget="gotop" class="am-gotop am-gotop-fixed">
		<a href="#top" title=""> <img class="am-gotop-icon-custom"
			src="<%=basePath%>static/img/goTop.png" />
		</a>
	</div>

	<div class="pet_mian" id="top">
		<div data-am-widget="slider" class="am-slider am-slider-a1"
			data-am-slider='{"directionNav":false}'>

			<ul class="am-slides">
				<c:forEach items="${customerAndProductPos}" var="shouye" begin="0"
					end="4">




					<li><img src="${shouye.masterGraph}">
						<div class="pet_slider_font">
							<span class="pet_slider_emoji"></span> <span>${shouye.title}</span>
						</div>
						<div class="pet_slider_shadow"></div></li>
				</c:forEach>

			</ul>
		</div>


		<div class="pet_circle_nav">
			<ul class="pet_circle_nav_list">
				<li><a href="<%=basePath%>arealike?area=盐田区"
					class="iconfont pet_nav_xinxianshi ">&#xe61e;</a><span>盐田区</span></li>
				<li><a href="<%=basePath%>arealike?area=福田区"
					class="iconfont pet_nav_zhangzhishi ">&#xe607;</a><span>福田区</span></li>
				<li><a href="<%=basePath%>arealike?area=南山区"
					class="iconfont pet_nav_kantuya ">&#xe62c;</a><span>南山区</span></li>
				<li><a href="<%=basePath%>arealike?area=宝安区"
					class="iconfont pet_nav_mengzhuanti ">&#xe622;</a><span>宝安区</span></li>
				<li><a href="<%=basePath%>arealike?area=龙岗区"
					class="iconfont pet_nav_meirong ">&#xe629;</a><span>龙岗区</span></li>
				<li><a href="<%=basePath%>arealike?area=龙华区"
					class="iconfont pet_nav_yiyuan ">&#xe602;</a><span>龙华区</span></li>
				<li><a href="<%=basePath%>arealike?area=罗湖区"
					class="iconfont pet_nav_dianpu ">&#xe604;</a><span>罗湖区</span></li>
				<li><a href="<%=basePath%>arealike?area=光明区"
					class="iconfont pet_nav_gengduo ">&#xe600;</a><span>光明区</span></li>
			</ul>
			<div class="pet_more_list">
				<div class="pet_more_list_block">
					<div class="iconfont pet_more_close">×</div>
					<div class="pet_more_list_block">
						<div class="pet_more_list_block_name">
							<div class="pet_more_list_block_name_title">阅读 Read</div>
							<a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
								<div class="pet_more_list_block_line_font">新鲜事</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
								<div class="pet_more_list_block_line_font">趣闻</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
								<div class="pet_more_list_block_line_font">阅读</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
								<div class="pet_more_list_block_line_font">专题</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
								<div class="pet_more_list_block_line_font">订阅</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
								<div class="pet_more_list_block_line_font">专栏</div>
							</a>
							<div
								class="pet_more_list_block_name_title pet_more_list_block_line_height">服务
								Service</div>
							<a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe61e;</i>
								<div class="pet_more_list_block_line_font">新鲜事</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe607;</i>
								<div class="pet_more_list_block_line_font">趣闻</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe62c;</i>
								<div class="pet_more_list_block_line_font">阅读</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe622;</i>
								<div class="pet_more_list_block_line_font">专题</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe629;</i>
								<div class="pet_more_list_block_line_font">订阅</div>
							</a> <a class="pet_more_list_block_line"> <i
								class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe602;</i>
								<div class="pet_more_list_block_line_font">专栏</div>
							</a>
						</div>
					</div>

				</div>
			</div>
		</div>
		<div class="pet_content_main">
			<div data-am-widget="list_news"
				class="am-list-news am-list-news-default">
				<div class="am-list-news-bd">
					<ul class="am-list">
						<!--缩略图在标题右边-->
						<c:forEach items="${customerAndProductPos}" var="cp">
							
							<li
								class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">
								<div class="pet_list_one_info">
									<div class="pet_list_one_info_l">
										<div class="pet_list_one_info_ico">
											<img src="${cp.headerlconUrl}" alt="">
										</div>
										<div class="pet_list_one_info_name">${cp.nickName}</div>
									</div>
									<div class="pet_list_one_info_r"></div>
								</div>
								<div class=" am-u-sm-8 am-list-main pet_list_one_nr"
									style="height: 140px;">
									<h3 class="am-list-item-hd pet_list_one_bt">
										<a href="contextPage/?productId=${cp.product_id}" class="">${cp.title}</a>
									</h3>
									<div class="am-list-item-text pet_list_one_text">${cp.subtitle}</div>
								</div>
								<div class="am-u-sm-4 am-list-thumb">
									<a href="###" class=""> <img src="${cp.masterGraph}"
										class="pet_list_one_img" alt="" />
									</a>
								</div>
							</li>
						</c:forEach>

					</ul>
				</div>

			</div>

		</div>
		<div class="pet_article_dowload pet_dowload_more_top_off">
			<div class="pet_article_dowload_title">关于Amaze UI</div>
			<div class="pet_article_dowload_content pet_dowload_more_top_bg">
				<div class="pet_article_dowload_triangle pet_dowload_more_top_san"></div>
				<div class="pet_article_dowload_ico">
					<img src="<%=basePath%>static/img/footdon.png" alt="">
				</div>
				<div class="pet_article_dowload_content_font">Amaze UI
					以移动优先（Mobile first）为理念，从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。</div>
				<div class="pet_article_dowload_all">
					<a href="###" class="pet_article_dowload_Az am-icon-apple"> App
						store</a> <a href="###" class="pet_article_dowload_Pg am-icon-android">
						Android</a>
				</div>
			</div>
			<div class="pet_article_footer_info">
				Copyright(c)2015 Amaze UI All Rights Reserved.模板收集自 <a
					href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a>
				- More Templates <a href="http://www.cssmoban.com/" title="网页模板"
					target="_blank">网页模板</a>
			</div>
		</div>
	</div>

	<script src="<%=basePath%>static/js/jquery.min.js"></script>
	<script src="<%=basePath%>static/js/amazeui.min.js"></script>
	<script>
		$(function() {
	
			// 动态计算新闻列表文字样式
			auto_resize();
			$(window).resize(function() {
				auto_resize();
			});
			$('.am-list-thumb img').load(function() {
				auto_resize();
			});
	
			$('.am-list > li:last-child').css('border', 'none');
			function auto_resize() {
				$('.pet_list_one_nr').height($('.pet_list_one_img').height());
	
			}
			$('.pet_nav_gengduo').on('click', function() {
				$('.pet_more_list').addClass('pet_more_list_show');
			});
			$('.pet_more_close').on('click', function() {
				$('.pet_more_list').removeClass('pet_more_list_show');
			});
		});
		
		
</body>
</html>