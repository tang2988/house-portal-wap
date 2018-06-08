<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" href="<%=basePath%>static/css/wap.css">
<title>个人中心</title>
</head>
<body style="background:#ececec">
	<div class="pet_mian">
		<%@include file="include.jsp"%>


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

		<div class="pet_content pet_content_list">
			<div class="pet_grzx">

				<div class="pet_grzx_nr">
					<div class="pet_grzx_ico">
						<img src="${resultone.data.headerIconUrl}" alt="找不到">

					</div>
					<input type="hidden" value="${resultone.data.customerId}"
						id="customerId" name="customerId" />
					<div class="pet_grzx_name">${resultone.data.nickName}</div>
						<div class="pet_grzx_name"><a href="<%=basePath%>add.html"/>发帖</a></div>
					<div class="pet_grzx_map"></div>
					<div class="pet_grzx_num_font">
						<%-- ${resultone.data.describee} --%>
					</div>
					<div class="pet_grzx_num">
						<span>${findlike.count}<i>喜欢</i></span> <span>${focusOn.count}<i>回复</i></span>
						<span>${fn:length(productvo)}<i>楼盘</i></span>
					</div>

				</div>

				<div class="pet_grzx_list">
					<div class="pet_content_main pet_article_like_delete">
						<div data-am-widget="list_news"
							class="am-list-news am-list-news-default am-no-layout">
							<div class="am-list-news-bd">
								<c:forEach items="${productvo}" var="product">
									<ul class="am-list">
										<!--缩略图在标题右边-->



										<li
											class="am-g am-list-item-desced am-list-item-thumbed am-list-item-thumb-right pet_list_one_block">

											<div class=" am-u-sm-8 am-list-main pet_list_one_nr">
												<h3 class="am-list-item-hd pet_list_one_bt">
													<input type="hidden" value="${product}"> <a
														href="<%=basePath%>contextPage/?productId=${product.product_id}"
														class=""> ${product.title}</a>
												</h3>
												<div class="am-list-item-text pet_list_one_text">${product.subtitle}</div>

											</div>
											<div class="am-u-sm-4 am-list-thumb">
												<a href="###" class=""> <img
													src="<%-- <%=basePath%>static/img/q1.jpg --%>${product.masterGraph}"
													class="pet_list_one_img" alt="" />
												</a>
											</div>
										</li>


									</ul>
								</c:forEach>
							</div>

						</div>

					</div>

				</div>
				<div class="pet_article_dowload">
					<div class="pet_article_dowload_title">关于Amaze UI</div>
					<div class="pet_article_dowload_content">
						<div class="pet_article_dowload_triangle"></div>
						<div class="pet_article_dowload_ico">
							<img src="<%=basePath%>static/img/footdon.png" alt="">
						</div>
						<div class="pet_article_dowload_content_font">Amaze UI
							以移动优先（Mobile first）为理念，从小屏逐步扩展到大屏，最终实现所有屏幕适配，适应移动互联潮流。</div>
						<div class="pet_article_dowload_all">
							<a href="###" class="pet_article_dowload_Az am-icon-apple">
								App store</a> <a href="###"
								class="pet_article_dowload_Pg am-icon-android"> Android</a>
						</div>
					</div>
				</div>
			</div>

			<div class="pet_article_footer_info">Copyright(c)2015 PetShow
				All Rights Reserved</div>
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
			$('.pet_article_like li:last-child').css('border', 'none');
			function auto_resize() {
				$('.pet_list_one_nr').height($('.pet_list_one_img').height());
			// alert($('.pet_list_one_nr').height());
			}
			$('.pet_article_user').on('click', function() {
				if ($('.pet_article_user_info_tab').hasClass('pet_article_user_info_tab_show')) {
					$('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_show').addClass('pet_article_user_info_tab_cloes');
				} else {
					$('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_cloes').addClass('pet_article_user_info_tab_show');
				}
			});
	
			$('.pet_head_gd_ico').on('click', function() {
				$('.pet_more_list').addClass('pet_more_list_show');
			});
			$('.pet_more_close').on('click', function() {
				$('.pet_more_list').removeClass('pet_more_list_show');
			});
		});
		function login() {
			window.location.href = "<%=basePath%>cstcustormer/login.html"
		}
	</script>
</body>
</html>
