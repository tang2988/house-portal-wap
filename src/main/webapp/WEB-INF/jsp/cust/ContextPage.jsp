<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<link href="https://v3.bootcss.com/dist/css/bootstrap.min.css"
	rel="stylesheet">

<title>活动内容页</title>
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
							class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe601;</i>
							<div class="pet_more_list_block_line_font">新鲜事</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe606;</i>
							<div class="pet_more_list_block_line_font">涨知识</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe607;</i>
							<div class="pet_more_list_block_line_font">看涂鸦</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_mengzhuanti pet_more_list_block_line_ico">&#xe603;</i>
							<div class="pet_more_list_block_line_font">萌专题</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_bk pet_more_list_block_line_ico">&#xe611;</i>
							<div class="pet_more_list_block_line_font">百科</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_wd pet_more_list_block_line_ico">&#xe60c;</i>
							<div class="pet_more_list_block_line_font">问答</div>
						</a>
						<div
							class="pet_more_list_block_name_title pet_more_list_block_line_height">服务
							Service</div>
						<a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_xinxianshi pet_more_list_block_line_ico">&#xe600;</i>
							<div class="pet_more_list_block_line_font">美容</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_zhangzhishi pet_more_list_block_line_ico">&#xe602;</i>
							<div class="pet_more_list_block_line_font">医院</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_kantuya pet_more_list_block_line_ico">&#xe604;</i>
							<div class="pet_more_list_block_line_font">店铺</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_sy pet_more_list_block_line_ico">&#xe610;</i>
							<div class="pet_more_list_block_line_font">摄影</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_xx pet_more_list_block_line_ico">&#xe612;</i>
							<div class="pet_more_list_block_line_font">学校</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_sz pet_more_list_block_line_ico">&#xe60f;</i>
							<div class="pet_more_list_block_line_font">水族</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_ms pet_more_list_block_line_ico">&#xe60e;</i>
							<div class="pet_more_list_block_line_font">猫舍</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_qs pet_more_list_block_line_ico">&#xe60b;</i>
							<div class="pet_more_list_block_line_font">犬舍</div>
						</a> <a class="pet_more_list_block_line"> <i
							class="iconfont pet_nav_qt pet_more_list_block_line_ico">&#xe60d;</i>
							<div class="pet_more_list_block_line_font">其它</div>
						</a>
					</div>
				</div>

			</div>
		</div>



		<div class="pet_content">
			<div class="pet_content_block pet_hd_con">
				<div class="pet_hd_con_head">
					<img
						src="<%-- <%=basePath%>static/img/z1.jpg --%>${andSkuVos.masterGraph}"
						alt="">
				</div>
				<article data-am-widget="paragraph"
					class="am-paragraph am-paragraph-default pet_content_article"
					data-am-paragraph="{ tableScrollable: true, pureview: true }">
					<h1 class="pet_article_title">${andSkuVos.title}</h1>
					<div class="pet_article_user_time pet_hd_con_time">
						<i class="iconfont">&#xe617;</i>
						<!-- 2015年10月26日 9:00 ～ 2015年10月28日
						17:30 -->
						<fmt:formatDate value="${andSkuVos.writingTime}"
							pattern="yyyy/MM/dd  HH:mm:ss" />
					</div>
					<div class="pet_article_user_time pet_hd_con_map">
						<i class="iconfont">&#xe632;</i>${andSkuVos.province}${andSkuVos.city}${andSkuVos.area}${andSkuVos.address}
					</div>
					<div class="pet_article_user_time pet_hd_con_map">
						<i class="iconfont">&#xe615;</i>总数：${kc} 套
					</div>
					<div class="pet_hd_con_gp">
						<div class="pet_hd_con_gp_title">坐席购买</div>
						<div class="pet_hd_con_gp_list">
							<c:forEach items="${list}" var="sku">
								<span><i>￥${sku.price}万</i>${sku.typeOfHouse}</span>
							</c:forEach>
							<!-- <span class="pet_hd_con_gp_list_on"><i>￥700</i>VIP</span>
							<span><i>￥1300</i>MVP</span> -->
							<div class="pet_hd_con_gp_list_sm">
								<i>￥700 VIP</i> -
								说明：10.26-10.28三天参会资格，10.25-10.27三晚住宿(房型：双人间)，会议期间免费早中晚餐(不含10.28晚餐)，会议期间免费穿梭巴士服务，参会资料，大会精美礼品
							</div>
						</div>
						<div class="pet_hd_con_gp_list_xl">
							订购数量： <select name="">
								<option value="1">1张</option>
								<option value="2">2张</option>
								<option value="3">3张</option>
								<option value="4">4张</option>
								<option value="5">5张</option>
								<option value="6">6张</option>
							</select>
						</div>
						<button class="pet_hd_con_gp_list_xl_m">购买坐席</button>
					</div>
					<div class="pet_hd_con_gp_list_nr">
						<div class="pet_hd_con_gp_list_nr_title">活动内容</div>
						<div class="pet_hd_con_gp_list_nr_tag">本次主题</div>
						<p>${andSkuVos.content}</p>
						<div class="pet_hd_con_gp_list_nr_tag">课程主题</div>
						<p>${andSkuVos.subtitle}</p>


					</div>

				</article>
				<ul class="like_share_block">
					<li><a class="link_share_button" href="###"><i
							class="iconfont share_ico_link">&#xe62f;</i>${readthenumber.readthenumber}</a></li>
					<li><a class="link_share_button" href="javascript:void(0)"
						id="addgive"><i class="glyphicon glyphicon-thumbs-up"
							aria-hidden="true"><input type="hidden" id="productid"
								value="${andSkuVos.product_id}" /><input type="hidden"
								value="10" id="status" /></i>赞</a></li>
					<li><a class="link_share_button" style="margin-right: 5px;"
						href="javascript:void(0)" id="addgivereport"><i
							class="glyphicon glyphicon-thumbs-down" aria-hidden="true"><input
								type="hidden" id="productid" value="${andSkuVos.product_id}" /><input
								type="hidden" value="20" id="status" /></i>举报</a></li>
				</ul>
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
			<div class="pet_comment_list">
				<div class="pet_comment_list_wap">
					<div class="pet_comment_list_title">精彩评论</div>

					<div data-am-widget="tabs"
						class="am-tabs am-tabs-default pet_comment_list_tab">
						<ul class="am-tabs-nav am-cf pet_comment_list_title_tab">
							<li class="am-active"><a href="[data-tab-panel-0]">人气</a></li>
							<li class=""><a href="[data-tab-panel-1]">最新</a></li>
							<li class=""><a href="[data-tab-panel-2]">最早</a></li>
						</ul>
						<div class="am-tabs-bd pet_pl_list"
							style="touch-action: pan-y; -webkit-user-select: none; -webkit-user-drag: none; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">

							<div data-tab-panel-0="" class="am-tab-panel am-active">
								<c:forEach items="${sentimentHigh}" var="sentimentHigh">
									<div class="pet_comment_list_block">
										<div class="pet_comment_list_block_l">
											<img src="<%=basePath%>static/img/a1.png" alt="">
										</div>
										<div class="pet_comment_list_block_r">
											<div class="pet_comment_list_block_r_info">${sentimentHigh.commentOnPeople}</div>
											<div class="pet_comment_list_block_r_text">${sentimentHigh.content}</div>
											<div class="pet_comment_list_block_r_bottom">
												<div class="pet_comment_list_bottom_info_l">
													<fmt:formatDate value="${sentimentHigh.commentOfTime}"
														pattern="yyyy年MM月dd日HH点mm分ss秒" />
												</div>
												<div class="pet_comment_list_bottom_info_r">
													<input type="hidden" value="${sentimentHigh.commentOnID}"
														name="commentOn" id="commentOn"> <a
														href="javascript:void(0)" id="ahre"><span><i
															class="iconfont"></i>${sentimentHigh.pointOfpraise} </span></a> <span
														class="replyArcticle"> 回复</span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>

							<div data-tab-panel-1="" class="am-tab-panel ">
								<c:forEach items="${newest}" var="newest">
									<div class="pet_comment_list_block">
										<div class="pet_comment_list_block_l">
											<img src="<%=basePath%>static/img/a2.png" alt="">
										</div>
										<div class="pet_comment_list_block_r">
											<div class="pet_comment_list_block_r_info">${newest.commentOnPeople}</div>
											<div class="pet_comment_list_block_r_text">
												<span> <!-- @Drary -->
												</span>${newest.content }
											</div>
											<div class="pet_comment_list_block_r_bottom">
												<div class="pet_comment_list_bottom_info_l">
													<fmt:formatDate value="${newest.commentOfTime}"
														pattern="yyyy年MM月dd日HH点mm分ss秒" />
												</div>
												<div class="pet_comment_list_bottom_info_r">
													<span><i class="iconfont"></i>${newest.pointOfpraise}
													</span> <span> 回复</span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>

							<div data-tab-panel-2="" class="am-tab-panel ">
								<c:forEach items="${earliest}" var="earliest">
									<div class="pet_comment_list_block">
										<div class="pet_comment_list_block_l">
											<img src="<%=basePath%>static/img/a1.png" alt="">
										</div>
										<div class="pet_comment_list_block_r">
											<div class="pet_comment_list_block_r_info">${earliest.commentOnPeople}</div>
											<div class="pet_comment_list_block_r_text">
												${earliest.content}</div>
											<div class="pet_comment_list_block_r_bottom">
												<div class="pet_comment_list_bottom_info_l">
													<fmt:formatDate value="${earliest.commentOfTime}"
														pattern="yyyy年MM月dd日HH点mm分ss秒" />
												</div>
												<div class="pet_comment_list_bottom_info_r">
													<input type="hidden" value="${earliest.commentOnID}" /> <span><i
														class="iconfont"></i>${earliest.pointOfpraise} </span> <span>
														回复</span>
												</div>
											</div>
										</div>
									</div>
								</c:forEach>

							</div>
						</div>


					</div>
				</div>
			</div>




		</div>
	</div>


	<div id="replyArcticle"
		style="display: none; width:120px; float:right;margin-right:40%; background:#0066FF;">
		<form id="replyArcticle_form">
			<label for="replyArcticle_text">添加评论</label>
			<textarea rows="" cols="" name="replyArcticle_text"></textarea>
			<input type="button" id="tijiao" value="ok" <!-- onclick="tijiao" -->>
		</form>
	</div>

	<div class="pet_article_footer_info">Copyright(c)2015 Amaze UI
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
	
		/*  $('.pet_head_gd_ico').on('click',function(){
		     $('.pet_more_list').addClass('pet_more_list_show');
		});
		 $('.pet_more_close').on('click',function(){
		     $('.pet_more_list').removeClass('pet_more_list_show');
		 }); */
		});
	
		$(function() {
	
			$("[id=ahre]").click(function() {
	
				var commentOnID = $("#commentOn").val();
				alert(commentOnID);
	
				$.ajax({
					type : "post",
					url : "<%=basePath%>comment/pointOfpraise",
					dataType : "json",
					async : true,
					data : {
						"commentOnID" : commentOnID
					},
					success : function(data) {
						alert(data);
						console.log(data)
						$("#ahre").html(data);
					}
				});
	
	
			});
	
	
			//点赞
			$(function() {
				var productid = $("#productid").val();
				$("[id=addgive]").click(function() {
	
					$.ajax({
						type : "post",
						url : "<%=basePath%>comment/give",
						dataType : "json",
						async : true,
						data : {
							"productid" : productid,
							"status" : 10
						},
						success : function(data) {}
					});
				})
	
			});
			//举报
			$(function() {
				var productid = $("#productid").val();
				$("[id=addgivereport]").click(function() {
					/* var status = $("[id=status]").val();
					alert(status); */
					$.ajax({
						type : "post",
						url : "<%=basePath%>comment/giveToreport",
						dataType : "json",
						async : true,
						data : {
							"productid" : productid,
							"status" : 20
						},
						success : function(data) {}
					});
				});
	
			});
	
	
			$(".replyArcticle").click(function() {
				$("#replyArcticle").show()
			});
	
		});
		
		$(function(){
			$("#tijiao").click(function(){
				var content = $("textarea[name='replyArcticle_text']").val();
				var productid = $("#productid").val();
				$.ajax({
					type : "post",
					url : "<%=basePath%>comment/add.do",
					dataType : "json",
					async : true,
					data : {
						"productid" : productid,
						"content" : content,
						
					},
					success : function(data) {}
				});
				
			});
			
			
		});
			
		
	</script>
</body>
</html>
