<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
<title>活动内容页</title>
</head>
<body style="background:#ececec">
	<div class="pet_mian">
		<div class="pet_head">
			<header data-am-widget="header"
				class="am-header am-header-default pet_head_block">
				<div class="am-header-left am-header-nav ">
					<a href="javascript:history.back()" class="iconfont pet_head_jt_ico">&#xe601;</a>
				</div>


				<div class="am-header-right am-header-nav">
					<a href="<%=basePath%>/cstcustormer/login" class="iconfont pet_head_gd_ico">&#xe600;</a>
				</div>
			</header>
		</div>



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
					<img src="<%=basePath%>static/img/z1.jpg" alt="">
				</div>
				<article data-am-widget="paragraph"
					class="am-paragraph am-paragraph-default pet_content_article"
					data-am-paragraph="{ tableScrollable: true, pureview: true }">
					<h1 class="pet_article_title">${andSkuVos.title}</h1>
					<div class="pet_article_user_time pet_hd_con_time">
						<i class="iconfont">&#xe617;</i><!-- 2015年10月26日 9:00 ～ 2015年10月28日
						17:30 --> <fmt:formatDate value="${andSkuVos.writingTime}" pattern="yyyy/MM/dd  HH:mm:ss" />
					</div>
					<div class="pet_article_user_time pet_hd_con_map">
						<i class="iconfont">&#xe632;</i>${andSkuVos.province}${andSkuVos.city}${andSkuVos.area}${andSkuVos.address}
					</div>
					<div class="pet_article_user_time pet_hd_con_map">
						<i class="iconfont">&#xe615;</i>限额：50 人
					</div>
					<div class="pet_hd_con_gp">
						<div class="pet_hd_con_gp_title">坐席购买</div>
						<div class="pet_hd_con_gp_list">
							<c:forEach items="${list}" var="sku">
							<span  ><i>￥${sku.price}</i>${sku.typeOfHouse}</span> 
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
							class="iconfont share_ico_link">&#xe62f;</i>1460</a></li>
					<li><a class="link_share_button" href="###"><i
							class="iconfont share_ico_wx">&#xe630;</i>微信</a></li>
					<li><a class="link_share_button" href="###"><i
							class="iconfont share_ico_pyq">&#xe62e;</i>朋友圈</a></li>
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
						<div class="am-tabs-bd pet_pl_list">
							<div data-tab-panel-0 class="am-tab-panel am-active">
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a1.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Amaze</div>
										<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">10分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a2.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">一如既往</div>
										<div class="pet_comment_list_block_r_text">
											<span>@Drary</span>没有老友你的陪伴，日子真是漫长与你重逢之时，我会敞开心扉倾诉所有。
										</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">15分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a3.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">AllThe</div>
										<div class="pet_comment_list_block_r_text">表紙の裏に移らないよに
											あけた一枚目のページの裏に透けた文字めくろうとして 指がとまって</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">30分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a4.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Drary</div>
										<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">1小时前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-tab-panel-1 class="am-tab-panel ">
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a2.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">一如既往</div>
										<div class="pet_comment_list_block_r_text">
											<span>@Drary</span>没有老友你的陪伴，日子真是漫长与你重逢之时，我会敞开心扉倾诉所有。
										</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">15分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a3.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">AllThe</div>
										<div class="pet_comment_list_block_r_text">表紙の裏に移らないよに
											あけた一枚目のページの裏に透けた文字めくろうとして 指がとまって</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">30分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a1.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Amaze</div>
										<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">10分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>


								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a4.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Drary</div>
										<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">1小时前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div data-tab-panel-2 class="am-tab-panel ">
								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a1.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Amaze</div>
										<div class="pet_comment_list_block_r_text">那时候有多好，任雨打湿裙角。忍不住哼起，心爱的旋律。绿油油的树叶，自由地在说笑。燕子忙归巢，风铃在舞蹈。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">10分钟前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>


								<div class="pet_comment_list_block">
									<div class="pet_comment_list_block_l">
										<img src="<%=basePath%>static/img/a4.png" alt="">
									</div>
									<div class="pet_comment_list_block_r">
										<div class="pet_comment_list_block_r_info">Drary</div>
										<div class="pet_comment_list_block_r_text">无论历经怎样的艰难坎坷，总有你相伴陪我度过。</div>
										<div class="pet_comment_list_block_r_bottom">
											<div class="pet_comment_list_bottom_info_l">1小时前</div>
											<div class="pet_comment_list_bottom_info_r">
												<span><i class="iconfont">&#xe631;</i>5 </span> <span>
													回复</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>




				</div>
			</div>

			<div class="pet_article_footer_info">Copyright(c)2015 Amaze UI
				All Rights Reserved</div>
		</div>
	</div>
	<script src="<%=basePath%>static/js/jquery.min.js"></script>
	<script src="<%=basePath%>static/js/amazeui.min.js"></script>
	<script>
$(function(){

    // 动态计算新闻列表文字样式
    auto_resize();
    $(window).resize(function() {
        auto_resize();
    });
    $('.am-list-thumb img').load(function(){
        auto_resize();
    });
    $('.pet_article_like li:last-child').css('border','none');
        function auto_resize(){
        $('.pet_list_one_nr').height($('.pet_list_one_img').height());
                // alert($('.pet_list_one_nr').height());
    }
        $('.pet_article_user').on('click',function(){
            if($('.pet_article_user_info_tab').hasClass('pet_article_user_info_tab_show')){
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_show').addClass('pet_article_user_info_tab_cloes');
            }else{
                $('.pet_article_user_info_tab').removeClass('pet_article_user_info_tab_cloes').addClass('pet_article_user_info_tab_show');
            }
        });

        $('.pet_head_gd_ico').on('click',function(){
            $('.pet_more_list').addClass('pet_more_list_show');
       });
        $('.pet_more_close').on('click',function(){
            $('.pet_more_list').removeClass('pet_more_list_show');
        });
});

</script>
</body>
</html>
