<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>列表-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/list.css">
	<base target="_blank">
</head>
<body>
	<header class="wrap-all">
		<div class="head center_1200">
			<!-- 头部左边 -->
			<div class="headLeft">
				<div class="hello">
					<a href="#">
						<em></em>
						<span>澳猫首页</span>
						<span>嗨，澳猫欢迎你！</span>
					</a>
				</div>
				<div class="user">
					<a target="_blank" href="#">登录</a>
					<span>|</span>
					<a target="_blank" href="#">免费注册</a>
				</div>
				<div class="phone">
					<a href="#">
						<em></em>
						<span>手机逛澳猫</span>
					</a>
				</div>
			</div>
			<!-- 头部右边 -->
			<!-- 头部右边 -->
			<div class="headRight">
				<ul>
					<li><a href="#">我的订单</a></li><span>|</span>
					<li class="erWrap">
						<strong></strong>
						<a href="#">个人中心</a>
						<em></em>
						<p class="headEr">
							<a href="#">我的优惠券</a>
							<a href="#">账户安全</a>
							<a class="last" href="#">售后管理</a>
						</p>
					</li>
					<span>|</span>
					<li class="erWrap">
						<a href="#">客户服务</a>
						<em></em>
						<p class="headEr">
							<a href="#">联系客服</a>
							<a href="#">购物指南</a>
							<a href="#">下单与配送</a>
							<a href="#">售后服务</a>
							<a href="#">商家服务</a>
							<a class="last" href="#">帮助中心</a>
						</p>
					</li>
					<span>|</span>
					<li class="erWrap">
						<a href="#">消费者告知书</a>
					</li>
					<span>|</span>
					<li class="erWrap">
						<a href="#">收藏夹</a>
						<em></em>
						<p class="headEr different">
							<a href="#">收藏的宝贝</a>
							<a class="last" href="#">收藏的品牌</a>
						</p>
					</li>
					<span>|</span>
					<li class="erWrap">
						<a href="#">帮助中心</a>
						<em></em>
						<p class="headEr">
							<a href="#">海外正品</a>
							<a href="#">服务保障</a>
							<a href="#">关税&清关</a>
							<a class="last" href="#">身份证报关</a>
						</p>
					</li><span>|</span>
					<li class="er_warp">
						<a href="#">网站导航</a>
						<em></em>
						<div class="headEr clearfix">
							
							
							<div class="er_area">
								<h5>美妆个护</h5>
								<a href="#">面部</a>
								<a href="#">防嗮</a>
								<a href="#">祛斑祛痘</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=4&pos=list.jsp">面部洗护</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=5&pos=list.jsp">眼部护理</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=6&pos=list.jsp">唇部护理</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=7&pos=list.jsp">祛斑祛痘</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=8&pos=list.jsp">手足洗护</a>
								<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=10&pos=list.jsp">防晒修复</a>
							</div>
							<div class="er_area">
								<h5>个人洗护</h5>
								<a href="#">沐浴</a>
								<a href="#">洗发</a>
								<a href="#">消毒液</a>
								<a href="#">洗洁精</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=消毒液&crossStore=true">消毒液</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=洗洁精&crossStore=true">洗洁精</a>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 搜索和logo -->
	<div class="logoAndSearch w1190 textWarp">
		<!-- logo -->
		<div class="logo">
			<a href="index.html">澳猫网</a>
		</div>
		<!-- 搜索 -->
		<div class="search">
		    <form target="_self" class="form" action="${pageContext.request.contextPath }/SelectBrandGoodsController.do?pos=list.jsp"  method="post">
			<div class="txt">
				<input class="SearchBttonValue" name="brand" type="text" placeholder="Swisse/澳洲">
			</div>
			<!-- <a class="SearchBtton btn" href="#">
				搜索
			</a> -->
			<input class="SearchBtton btn" type="submit" value="搜索">
			<div class="hot_search">
				<em>热门搜索：</em>
				<span><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=胶原蛋白&pos=list.jsp">胶原蛋白</a></span>
				<span><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=胶囊&pos=list.jsp">胶囊</a></span>
				<span><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=营养&pos=list.jsp">营养</a></span>
				<span><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=洗面&pos=list.jsp">洗面</a></span>
			</div>
			</form>
		</div>
		<!--购物车-->
		<a href="AllShopitemsController.do" class="buy_car">
			<p>购物车</p>
			<em>${shopitemsCount }</em>
		</a>
		<!-- 新会员 -->
		<div class="app">
			<a href="#"></a>
			<div class="SAEr">
				<p>扫描下载澳猫APP</p>
				<img src="images/AppEr.png" alt="二维码">
			</div>
		</div>
	</div>
	<!-- 导航 -->
	<div class="wrap-all">
		<div class="center_1200 nav_list_wrap">
		<!--左边二级菜单-->
			<div class="main_menu">
				<a href="#">全部商品分类</a>
				<div class="more_height"></div>
				<ul class="one_nav">
					<li>
						<dl>
							<dt><h4>护肤</h4></dt>
							<dd>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=4&pos=list.jsp">面部洗护</a></span>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=5&pos=list.jsp">眼部护理</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>面部总体</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=4&pos=list.jsp">面部洗护</a><i>|</i>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=7&pos=list.jsp">祛斑祛痘</a><i>|</i>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=10&pos=list.jsp">防晒修复</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>面部细节</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=5&pos=list.jsp">眼部护理</a><i>|</i>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=6&pos=list.jsp">唇部护理</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>其他部位</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=8&pos=list.jsp">手足洗护</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>个人洗护</h4></dt>
							<dd>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=11&pos=list.jsp">沐浴护肤</a></span>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=13&pos=list.jsp">口腔护理</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>沐浴理发</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=11&pos=list.jsp">沐浴护肤</a><i>|</i>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=12&pos=list.jsp">洗发护发</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>其他产品</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=13&pos=list.jsp">口腔护理</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>健康生活</h4></dt>
							<dd>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=14&pos=list.jsp">消毒液</a></span>
								<span><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=15&pos=list.jsp">洗洁精</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>清洁消毒</h4></dt>
									<dd>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=14&pos=list.jsp">消毒液</a><i>|</i>
										<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=15&pos=list.jsp">洗洁精</a><i>|</i>
									</dd>
								</dl>
						</ul>
					</li>
					
					<!--暂空不绑定-->
					<li hidden>
					</li>
				</ul>
			</div>
			<div class="nav_list_parent">
				<div class="nav_list_bg"></div>
				<ul class="nav_list clearfix">
				<!-- 右边导航菜单-->
					<li>
						<a target="_self" href="${pageContext.request.contextPath }/index.jsp">首 页</a>
					</li>
					<li>
						<a target="_self" href="${pageContext.request.contextPath }/ListGoodsController.do?pos=list.jsp">特价团购</a>
						<em class="hot_sell"></em>
					</li>
					<li> 	
						<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=1&pos=list.jsp">护肤</a>
					</li>
					<li>
						<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=2&pos=list.jsp">个人洗护</a>
					</li>
					<li>
						<a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=3&pos=list.jsp">健康生活</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<div class="mainArea">
		<!-- 位置导航 -->
		<div class="subnav w1190">
			<ul class="SNLeft">
				<!--<li><a href="#">澳猫团</a></li>
				  <li>></li>
				  <li><a href="#">美妆个护</a></li>-->
			</ul>
		</div>
		<!-- 主要内容 -->
		<div class="content w1190 clearfix">
			<!-- 侧边 -->
			<div class="sidebar">
				<!-- 全部分类 -->
				<div class="classify">
					<h3>商品分类</h3>
					<div class="ClaCont">
						<dl>
							<dt><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=1&pos=list.jsp">护肤</a></dt>
							<dd class="cli">
								<em></em>
								<ul>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=4&pos=list.jsp">·&nbsp;&nbsp;面部洗护</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=5&pos=list.jsp">·&nbsp;&nbsp;眼部护理</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=6&pos=list.jsp">·&nbsp;&nbsp;唇部护理</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=7&pos=list.jsp">·&nbsp;&nbsp;祛斑祛痘</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=8&pos=list.jsp">·&nbsp;&nbsp;手足洗护</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=9&pos=list.jsp">·&nbsp;&nbsp;眼部护理</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=10&pos=list.jsp">·&nbsp;&nbsp;防晒修复</a></li>
								</ul>
							</dd>
							<dt><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=2&pos=list.jsp">个人洗护</a></dt>
							<dd>
								<em></em>
								<ul>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=11&pos=list.jsp">·&nbsp;&nbsp;沐浴护肤</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=12&pos=list.jsp">·&nbsp;&nbsp;洗发护发</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=13&pos=list.jsp">·&nbsp;&nbsp;口腔护理</a></li>
								</ul>
							</dd>
							<dt><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=0&id=3&pos=list.jsp">健康生活</a></dt>
							<dd>
								<em></em>
								<ul>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=14&pos=list.jsp">·&nbsp;&nbsp;消毒液</a></li>
									<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=15&pos=list.jsp">·&nbsp;&nbsp;洗洁精</a></li>
								</ul>
							</dd>
						</dl>
					</div>
				</div>
				<!-- 热卖排行榜 -->
				<div class="hotSale">
					<h3>热卖排行榜</h3>
					<div class="HRproduct">
						<ul>
							<li>
								<div class="HRpic">
									<a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=8&lstGoodsId=${goods.goodsId}">
										<img class="lazy" src="${pageContext.request.contextPath}/uploadimg/pro21.png" height=120 width=80 alt="">
									</a>
								</div>
								<div class="HRtxt">
									<p><a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=8&lstGoodsId=${goods.goodsId}">EltaMD 氨基酸泡沫卸妆洁面乳</a></p>
									<p class="clearfix">
										<strong class="c065">￥119</strong>
										<s>￥238</s>
									</p>
								</div>
							</li>
							<li>
								<div class="HRpic">
									<a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=6&lstGoodsId=${goods.goodsId}">
										<img class="lazy" src="${pageContext.request.contextPath}/uploadimg/pro6.png" height=120 width=80 alt="">
									</a>
								</div>
								<div class="HRtxt">
									<p><a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=6&lstGoodsId=${goods.goodsId}">GNC 健安喜 女性胶原蛋白营养片</a></p>
									<p class="clearfix">
										<strong class="c065">￥115</strong>
										<s>￥230</s>
									</p>
								</div>
							</li>
							<li>
								<div class="HRpic">
									<a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=17&lstGoodsId=${goods.goodsId}">
										<img class="lazy" src="${pageContext.request.contextPath}/uploadimg/pro21.png" height=120 width=80 alt="">
									</a>
								</div>
								<div class="HRtxt">
									<p><a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=17&lstGoodsId=${goods.goodsId}">【3件装】Freeplus 芙丽芳丝 净润洗面霜</a></p>
									<p class="clearfix">
										<strong class="c065">￥289</strong>
										<s>￥578</s>
									</p>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!-- 主要内容 -->
			<div class="mianContent">
				<!-- 商品筛选 -->
				<div class="screen">
					<!-- <h4 class="srenTitle clearfix">
						<span class="sreA">美可卓<em>×</em></span>
						<span class="sreA">0-199<em>×</em></span>	
					</h4> -->
					<div class="srenArea">
						<div class="brand clearfix">
							<h5>品牌</h5>
							<ul class="clearfix" >
							    <li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=all&pos=list.jsp">全部商品</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=Swisse&pos=list.jsp">Swisse</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=Sukin&pos=list.jsp">Sukin</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=GNC&pos=list.jsp">GNC</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=HECH&pos=list.jsp">HECH</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=EltaMD&pos=list.jsp">EltaMD</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=Freeplus&pos=list.jsp">Freeplus</a><em>×</em></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectBrandGoodsController.do?brand=Kanebo&pos=list.jsp">Kanebo</a><em>×</em></li>
							</ul>
						</div>
						<div class="price clearfix">
							<h5>价格</h5>
							<ul class="clearfix">
							    <li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=0&&right=999999999&pos=list.jsp">全部商品</a></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=0&&right=199&pos=list.jsp">0-199</a></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=200&&right=399&pos=list.jsp">200-399</a></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=400&&right=599&pos=list.jsp">400-599</a></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=600&&right=799&pos=list.jsp">600-799</a></li>
								<li><a target="_self" href="${pageContext.request.contextPath }/SelectPriceGoodsController.do?left=800&&right=999999999&pos=list.jsp">800以上</a></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- 你是不是要找 -->
				<div class="find clearfix">
					<h5>你是不是还要找：</h5>
					<ul>
						<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=11&pos=list.jsp">沐浴护肤</a></li>
						<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=4&pos=list.jsp">面部洗护</a></li>
						<li><a target="_self" href="${pageContext.request.contextPath }/SelectGoodsByGoodsTypeIdOrTypePid.do?opt=1&id=5&pos=list.jsp">眼部护理</a></li>
					</ul>
				</div>
				<!-- 筛选排序 -->
				<div class="sort clearfix">
					<ul class="condition clearfix">
						<li><a target="_self" href="${pageContext.request.contextPath }/ListGoodsController.do?&pos=list.jsp">默认</a></li>
						<li><a target="_self" href="${pageContext.request.contextPath }/ListGoodsController.do?type=price&pos=list.jsp&order=asc">价格↑</a></li>
						<li><a target="_self" href="${pageContext.request.contextPath }/ListGoodsController.do?type=price&pos=list.jsp&order=desc">价格↓</a></li>
					</ul>
					<div class="change">
						<span class="left">&lt;</span>
						<span class="right">&gt;</span>
					</div>
				</div>
				<!-- 商品内容 -->
				<div class="product">
					<ul class="clearfix">
					    <c:forEach items="${pageInfo.list }" var="goods" >
						    <li>
								<p class="privilege clearfix">
									<span class="y right">包邮</span>
									<span class="r left">5.0折</span>
								</p>
								
								<!-- <div class="hoverShow wish"><em></em>加入心愿单</div> -->
								<div class="show">
									<a class="add" onclick="jiarugouwuche(${ goods.goodsId})" id="${ goods.goodsId}">加入购物车</a>
									<a class="contrast" href="#">商品对比</a>
								</div>
								<div class="proImg">
									<a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=${goods.goodsId}&lstGoodsId=${goods.goodsId}">
										<img class="lazy" src="${pageContext.request.contextPath}/uploadimg/${goods.goodsImg }" 
										height="180" width="120"  alt="">
									</a>
								</div>
								<div class="proTxt">
									<p><a href="${pageContext.request.contextPath}/ShowDetailsController.do?goodsId=${goods.goodsId}&lstGoodsId=${goods.goodsId}">${goods.goodsName }</a></p>
									<p class="num">已售出999+件<!--   <div class="hoverShow collect"><em>收藏</em></div></p>-->
									<p>
										<strong>￥${goods.goodsPrice }</strong>
										<s>￥${2*goods.goodsPrice }</s>
									</p>
								</div>
							</li>
						
					    </c:forEach>
						
						
					
					</ul>
				</div>
				<!-- 底部页码 -->
				<div class="footNum">
					<ul>
					   <form class="form" target="_self" action="${pageContext.request.contextPath }/ListGoodsController.do?type=${type}&pos=list.jsp&order=${order}" method="post">
					   <c:if test="${pageInfo.isFirstPage == false}"> 
						    <li class="pre"><a target="_self" href="${pageContext.request.contextPath}/ListGoodsController.do?pageNum=${pageInfo.pageNum-1 }&type=${type}&pos=list.jsp">上一页</a></li>
					   </c:if>
					   <c:forEach items="${pageInfo.navigatepageNums}" var="pageNum" varStatus="status">
						    <c:if test="${pageInfo.pageNum  == status.count}">
						         <li class="num current"><a target="_self" href="${pageContext.request.contextPath}/ListGoodsController.do?pageNum=${status.count }&type=${type}&pos=list.jsp&order=${order}">${status.count } </a></li>
						    </c:if>
						    <c:if test="${pageInfo.pageNum  != status.count}">
						         <li class="num"><a target="_self" href="${pageContext.request.contextPath}/ListGoodsController.do?pageNum=${status.count }&type=${type}&pos=list.jsp&order=${order}">${status.count }</a></li>
						    </c:if>					
						</c:forEach> 
						<c:if test="${pageInfo.isLastPage == false }">
						    <li class="last"><a  target="_self" href="${pageContext.request.contextPath}/ListGoodsController.do?pageNum=${pageInfo.pageNum+1 }&type=${type}&pos=list.jsp&order=${order}">下一页</a></li>
						</c:if>
						
						<li class="txt">向第</li>
						<li class="ipt">
							<input name="pageNum" type="text" />
						</li>
						<li class="txt">页</li>
						<li><button>跳转</button></li>
						</from>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 底部 -->
	<div class="foot">
		<!-- 保证 -->
		<div class="BZ center_1200 textWarp">
			<ul class="footer_bg clearfix">
				<a target="_blank" class="first" href="http://www.aumalls.com/oversea">
					<div class="icon"></div>
					<p>100% 正品保障</p>
				</a>
				<a target="_blank" class="two" href="http://www.aumalls.com/oversea">
					<div class="icon"></div>
					<p>100% 海外进口</p>
				</a>
				<a target="_blank" class="three" href="http://www.aumalls.com/Logistics">
					<div class="icon"></div>
					<p>100% 极速发货</p>
				</a>
				<a target="_blank" class="four" href="http://www.aumalls.com/afterRules">
					<div class="icon"></div>
					<p>100% 无忧售后</p>
				</a>
			</ul>
		</div>
		<!-- 信息 -->
		<div class="information center_1200 textWarp">
			<div class="IRight">
				<span class="Iphone">
					<em></em>
					<strong>澳猫客服热线：</strong>
				</span>
				<span class="num c065">400-115-8086</span>
				<span class="time c065">工作时间：09:00-24:00(周一至周日)</span>
				<span class="email">澳猫邮箱：customer@aumalls.net</span>
			</div>
			<div class="ICenter">
				<div class="ICenW">
					<dl>
						<dt><a target="_blank" href="#">购物指南</a></dt>
						<dd><a target="_blank" href="#">· 购物流程</a></dd>
						<dd><a target="_blank" href="#">· 购物须知</a></dd>
						<dd><a target="_blank" href="#">· 免费注册</a></dd>
						<dd><a target="_blank" href="#">· 品牌大全</a></dd>
						<dd><a target="_blank" href="#">· 常见问题</a></dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="#">帮助中心</a></dt>
						<dd><a target="_blank" href="#">· 帮助中心</a></dd>
						<dd><a target="_blank" href="#">· 海外正品</a></dd>
						<dd><a target="_blank" href="#">· 服务保障</a></dd>
						<dd><a target="_blank" href="#">· 关税&清关</a></dd>
						<dd><a target="_blank" href="#">· 身份证报关</a></dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="">下单与配送</a></dt>
						<dd><a target="_blank" href="#">· 关于价格</a></dd>
						<dd><a target="_blank" href="#">· 关于支付</a></dd>
						<dd><a target="_blank" href="#">· 关于物流</a></dd>
						<dd><a target="_blank" href="#">· 关于优惠券</a></dd>
						<dd><a target="_blank" href="#">· 物流跟踪</a></dd>
					</dl>
					<dl>
						<dt><a target="_blank" href="#">售后服务</a></dt>
						<dd><a target="_blank" href="#">· 售后规则</a></dd>
						<dd><a target="_blank" href="#">· 退货政策</a></dd>
						<dd><a target="_blank" href="#">· 退货流程</a></dd>
						<dd><a target="_blank" href="#">· 退款说明</a></dd>
						<dd><a target="_blank" href="#">· 联系客服</a></dd>
					</dl>
					<dl class="MRn">
						<dt><a target="_blank" href="#">商家服务</a></dt>
						<dd><a target="_blank" href="#">· 平台规则</a></dd>
						<dd><a target="_blank" href="#">· 国际招商</a></dd>
						<dd><a target="_blank" href="#">· 商家入驻</a></dd>
						<dd><a target="_blank" href="#">· 商家中心</a></dd>
						<dd><a target="_blank" href="#">· 联系我们</a></dd>
					</dl>
				</div>
			</div>
			<div class="Ileft">
				<div class="er">
					<div class="erPic">
						<img src="images/WXe.png" alt="二维码">
					</div>
					<span>扫码下载澳猫APP</span>
				</div>
				<div class="fen">
					<a class="weixin" href="#">
						<em></em>
						<span>aumalls</span>
						<div class="WXer">
							<p>新鲜好玩的<br>
							澳洲货推荐<br>
							<strong>扫码加微信</strong>
							</p>
							<div class="wxe">
								<img src="images/WXe.png" alt="二维码">
							</div>
						</div>
					</a>
					<a class="sina" href="#">
						<em></em>
						<span>澳猫新浪微博</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<div class="up">
			<div class="txt textWarp  w1190">       
				<!-- <ul>
					<li><a target="_blank" href="#">关于澳猫海淘</a></li>
					<li><a target="_blank" href="#">商家入驻</a></li>
					<li><a target="_blank" href="#">网站合作</a></li>
					<li><a target="_blank" href="#">友情链接</a></li>
					<li><a target="_blank" href="#">澳猫公益</a></li>
					<li><a target="_blank" href="#">法律声明</a></li>
					<li><a target="_blank" href="#">诚聘英才</a></li>
					<li><a target="_blank" href="#">联系我们</a></li>
					<li><a target="_blank" href="#">网站地图</a></li>
				</ul>
				<ul class="twoArea">
					<li><a target="_blank" href="#">澳猫云商</a></li>
					<li><a target="_blank" href="#">澳洲澳猫</a></li><span>|</span>
					<li><a target="_blank" href="#">康多多</a></li><span>|</span>
					<li><a target="_blank" href="#">PPTV</a></li><span>|</span>
					<li><a target="_blank" href="#">红孩子</a></li><span>|</span>
					<li><a target="_blank" href="#">缤购</a></li><span>|</span>
					<li><a target="_blank" href="#">乐购仕</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫新西兰</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫新西兰</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫物流</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫澳大利亚</a></li><span>|</span>
					<li><a target="_blank" href="#">澳猫新西兰</a></li>
				</ul> -->
				<p>
					澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
					Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
				</p>
				<div class="ALLN"></div>
			</div>
		</div>
	</footer>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/jquery.lazyload.min.js"></script>
	<script src="js/base.js"></script>

	<script type="text/javascript">
	  
      function jiarugouwuche(goodsId) {
    	  $.ajax({
    		  url: "InsertShopitemsController.do?goodsId="+goodsId,
    		  type: "get",
    		  success: function(res) {
    			  location.reload();
    		  }
    	  });
    	 
      }
    </script>
</body>
</html>