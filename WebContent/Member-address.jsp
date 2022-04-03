<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>管理收货地址-会员中心-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/Member.css">
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
								<h5>营养保健</h5>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a>
								<a href="#">降糖</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=蜂胶&crossStore=true">蜂胶</a>
								<a href="#">蜂蜜</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=前列腺&crossStore=true">前列腺</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=强精&crossStore=true">强精</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补肾&crossStore=true">补肾</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护肝&crossStore=true">护肝</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护眼&crossStore=true">护眼</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=职场&crossStore=true">其他</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维骨力&crossStore=true">维骨力</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=高钙奶粉&crossStore=true">高钙奶粉</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=养心&crossStore=true">养心</a>
							</div>
							<div class="er_area">
								<h5>母婴特卖</h5>
								<a href="#">奶粉</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a>
								<a href="#">辅食</a>
								<a href="#">驱蚊</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕期营养&crossStore=true">孕期营养</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=哺乳期&crossStore=true">哺乳期</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=营养品&crossStore=true">营养品</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=抗感冒/止咳&crossStore=true">抗感冒/止咳</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=辅食代餐&crossStore=true">辅食代餐</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=零食&crossStore=true">零食</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉1段&crossStore=true">1段 0-6个月</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉3段&crossStore=true">3段 1-3岁</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=奶粉4段&crossStore=true">4段 3-6岁</a>
								<a target="_blank" href="#">洗漱</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a>
								<a target="_blank" href="#">护肤</a>
								<a target="_blank" class="last" href="#">驱蚊</a>
							</div>
							<div class="er_area">
								<h5>魅力女性</h5>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a>
								<a href="#">洗液</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=完美身材&crossStore=true">完美身材</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=胶原蛋白&crossStore=true">胶原蛋白</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a>
								<a target="_blank" href="#">卫生巾</a>
								<a target="_blank" class="last" href="#">洗液</a>
							</div>
							<div class="er_area">
								<h5>美妆个护</h5>
								<a href="#">面部</a>
								<a href="#">防嗮</a>
								<a href="#">祛斑祛痘</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=面部洗护&crossStore=true">面部洗护</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=眼部护理&crossStore=true">眼部护理</a>
								<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=唇部护理&crossStore=true">唇部护理</a>
								<a target="_blank" class="last" href="#">祛斑祛痘</a>
								<a target="_blank" href="#">手足洗护</a>
								<a target="_blank" class="cAEE" href="http://www.aumalls.com/Store/Search/?q=眼部护理/&crossStore=true">眼部护理</a>
								<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=防晒修复&crossStore=true">防晒修复</a>
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
			<div class="txt">
				<input class="SearchBttonValue" type="text" placeholder="Swisse/澳洲">
			</div>
			<a class="SearchBtton btn" href="#">
				搜索
			</a>
			<div class="hot_search">
				<em>热门搜索：</em>
				<span><a target="_blank" href="#">胶原蛋白</a></span>
				<span><a target="_blank" href="#">叶绿素</a></span>
				<span><a target="_blank" href="#">睡眠片</a></span>
				<span><a target="_blank" href="#">儿童维生素</a></span>
				<span><a target="_blank" href="#">鱼肝油</a></span>
				<span><a target="_blank" href="#">保健品</a></span>
				<span><a target="_blank" href="#">美容</a></span>
				<span><a target="_blank" href="#">运动保健</a></span>
			</div>
		</div>
		<!--购物车-->
		<a href="#" class="buy_car">
			<p>购物车</p>
			<em>0</em>
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
				<a href="javascript:;">全部商品分类</a>
				<div class="more_height"></div>
				<ul class="one_nav">
					<li>
						<dl>
							<dt><h4>营养保健</h4></dt>
							<dd>
								<span><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a></span>
								<span><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a></span>
								<span><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a></span>
								<span><a href="#">降糖</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>营养补充</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维生素&crossStore=true">维生素</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=矿物质&crossStore=true">矿物质</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=鱼油&crossStore=true">鱼油</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=蜂胶&crossStore=true">蜂胶</a><i>|</i>
										<a href="#">蜂蜜</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>男士保健</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=前列腺&crossStore=true">前列腺</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=强精&crossStore=true">强精</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补肾&crossStore=true">补肾</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>职场白领</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护肝&crossStore=true">护肝</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=护眼&crossStore=true">护眼</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=职场&crossStore=true">其他</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>滋补养生</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=维骨力&crossStore=true">维骨力</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=高钙奶粉&crossStore=true">高钙奶粉</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=养心&crossStore=true">养心</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>母婴特卖</h4></dt>
							<dd>
								<span><a href="#">奶粉</a></span>
								<span><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a></span>
								<span><a href="#">辅食</a></span>
								<span><a href="#">驱蚊</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>孕妈专用</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕期营养&crossStore=true">孕期营养</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=孕前备孕&crossStore=true">孕前备孕</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=哺乳期&crossStore=true">哺乳期</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>辅食营养</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=营养品&crossStore=true">营养品</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=抗感冒/止咳&crossStore=true">抗感冒/止咳</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=辅食代餐&crossStore=true">辅食代餐</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=零食&crossStore=true">零食</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>奶粉</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉1段&crossStore=true">1段 0-6个月</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉3段&crossStore=true">3段 1-3岁</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=奶粉4段&crossStore=true">4段 3-6岁</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>宝宝用品</h4></dt>
									<dd>
										<a target="_blank" href="#">洗漱</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=奶粉2段&crossStore=true">2段 6-12个月</a><i>|</i>
										<a target="_blank" href="#">护肤</a><i>|</i>
										<a target="_blank" class="last" href="#">驱蚊</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>魅力女性</h4></dt>
							<dd>
								<span><a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a></span>
								<span><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a></span>
								<span><a href="#">洗液</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>美容养颜</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=排毒养颜&crossStore=true">排毒养颜</a>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=完美身材&crossStore=true">完美身材</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=胶原蛋白&crossStore=true">胶原蛋白</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=补气养血&crossStore=true">补气养血</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>女性护理</h4></dt>
									<dd>
										<a target="_blank" href="#">卫生巾</a><i>|</i>
										<a target="_blank" class="last" href="#">洗液</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>美妆个护</h4></dt>
							<dd>
								<span><a href="#">面部</a></span>
								<span><a href="#">防嗮</a></span>
								<span><a href="#">祛斑祛痘</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>护肤</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=面部洗护&crossStore=true">面部洗护</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=眼部护理&crossStore=true">眼部护理</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=唇部护理&crossStore=true">唇部护理</a><i>|</i>
										<a target="_blank" class="last" href="#">祛斑祛痘</a><i>|</i>
										<a target="_blank" href="#">手足洗护</a><i>|</i>
										<a target="_blank" class="cAEE" href="http://www.aumalls.com/Store/Search/?q=眼部护理/&crossStore=true">眼部护理</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=防晒修复&crossStore=true">防晒修复</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>个人洗护</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=沐浴护肤&crossStore=true">沐浴护肤</a><i>|</i>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=洗发护发&crossStore=true">洗发护发</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=口腔护理&crossStore=true">口腔护理</a><i>|</i>
									</dd>
								</dl>
							</li>
							<li>
								<dl>
									<dt><h4>健康生活</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=消毒液&crossStore=true">消毒液</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=洗洁精&crossStore=true">洗洁精</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<li>
						<dl>
							<dt><h4>个人洗护</h4></dt>
							<dd>
								<span><a href="#">沐浴</a></span>
								<span><a href="#">洗发</a></span>
								<span><a href="#">消毒液</a></span>
								<span><a href="#">洗洁精</a></span>
							</dd>
						</dl>
						<ul class="two_nav">
							<li>
								<dl>
									<dt><h4>健康生活</h4></dt>
									<dd>
										<a target="_blank" href="http://www.aumalls.com/Store/Search/?q=消毒液&crossStore=true">消毒液</a><i>|</i>
										<a target="_blank" class="last" href="http://www.aumalls.com/Store/Search/?q=洗洁精&crossStore=true">洗洁精</a><i>|</i>
									</dd>
								</dl>
							</li>
						</ul>
					</li>
					<!--暂空不绑定-->
					<li>
					</li>
				</ul>
			</div>
			<div class="nav_list_parent">
				<div class="nav_list_bg"></div>
				<ul class="nav_list clearfix">
				<!-- 右边导航菜单-->
					<li>
						<a href="#">首 页</a>
					</li>
					<li>
						<a target="_blank" href="#">特价团购</a>
						<em class="hot_sell"></em>
					</li>
					<li>
						<a target="_blank" href="#">营养保健</a>
					</li>
					<li>
						<a target="_blank" href="#">母婴特卖</a>
					</li>
					<li>
						<a target="_blank" href="#">魅力女性</a>
					</li>
					<li>
						<a target="_blank" href="#">美妆个护</a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 位置导航 -->
	<div class="MeSubNavW">
		<ul class="MeSubNav clearfix textWarp w1190">
			<li><a target="_blank" href="#">我的账户</a></li>
			<li>&gt;</li>
			<li><a target="_blank" href="#">我的订单</a></li>
		</ul>
	</div>
	<!-- 主要内容 -->
	<div class="MeMainW">
		<div class="MeMain  w1190">
			<div class="MeArea clearfix">
				<!-- 左边导航 -->
				<div class="MeLeftNav">
					<div class="Mehead">
						<div class="pic"></div>
						<div class="txt">
							<p class="userName">${ users.userName }</p>
							<p class="rank"><i>V1</i>普通会员</p>
						</div>
					</div>
					<div class="MeTitle">
						<dl class="personCenter">
							<dt><em>个人中心</em></dt>
							<dd><em><i>·</i>我的订单</em></dd>
							<dd><em><i>·</i>购物车</em></dd>
							<dd><em><i>·</i>已购商品评价</em></dd>
							<dd><em><i>·</i>愿望单</em></dd>
							<dd><em><i>·</i>快速购买</em></dd>
							<dd><em><i>·</i>我的优惠券</em></dd>
						</dl>
						<dl class="MeGroup">
							<dt><em>我的团</em></dt>
							<dd><em><i>·</i>团购商品发布</em></dd>
							<dd><em><i>·</i>银牌买手申请</em></dd>
							<dd><em><i>·</i>金牌买手申请</em></dd>
						</dl>
						<dl class="MeInformation">
							<dt><em>个人信息</em></dt>
							<dd><em><i>·</i>修改密码</em></dd>
							<dd><em><i>·</i>个人消息</em></dd>
							<dd><em><i>·</i>身份证</em></dd>
						</dl>
						<dl class="MePlace">
							<dt><em><a href="GetAllOrderRecipientsController.do?userId=${ users.userId }">管理收货地址</a></em></dt>
						</dl>
						<dl class="recently">
							<dt><em>最近浏览</em></dt>
						</dl>	
					</div>
				</div>
				<!-- 右边主要内容 -->
				<div class="MeRightArea">
					<!-- 管理收货地址 -->
					<div class="placeArea">
						<!-- 我的地址 -->
						<h3>我的地址</h3>
						<div class="finished_place">
							<div class="finished_title">
								<em>已保存收货地址<span>（共${ allOrderRecipients.size() }条）最多保存10条</span></em>
								<button>+添加收货地址</button>
							</div>
							<form action="">
								<div class="finished_area">
									<ul class="area_title clearfix">
										<li class="one">
											收货人
										</li>
										<li class="two">
											实名认证
										</li>
										<li class="three">
											收货地址
										</li>
										<li class="four">
											联系电话
										</li>
										<li class="five">
											操作
										</li>
										<li class="six">
											
										</li>
									</ul>
									<c:forEach items="${ allOrderRecipients }" var="orderRecipients">
										<ul class="area_list clearfix">
											<li class="one">
												${ orderRecipients.recipientsName }
											</li>
											<li class="two">
												<p>
													已认证
												</p>
												<p>
													410***************
												</p>
											</li>
											<li class="three">
												<c:if test="${ orderRecipients.recipientsAddress.length() > 20 }">
													${ orderRecipients.recipientsAddress.substring(0, 20) }...
												</c:if>
												<c:if test="${ orderRecipients.recipientsAddress.length() <= 20 }">
													${ orderRecipients.recipientsAddress }
												</c:if>
											</li>
											<li class="four">
												${ orderRecipients.recipientsPhone }
											</li>
											<li class="five">
												<button><a href="DeleteOrderRecipientsByIdController.do?recipientsId=${ orderRecipients.recipientsId }">删除</a></button>
												<button><a>修改</a></button>
											</li>
											<li class="six">
												<c:if test="${ orderRecipients.recipientsChecked == 1 }">
													<button>默认地址</button>
												</c:if>
											</li>
										</ul>
									</c:forEach>
								</div>
							</form>
						</div>
						<!-- 新增收货地址 -->
						<div class="new_add">
							<div class="newAdd_title">
								新增收货地址
							</div>
								<div class="newAdd_area">
									<div class="clearfix newList">
										<div class="left">
											<em>*</em>
											<span>所在地区</span>
										</div>
										
										<div class="right">
											<!-- <select name="recipientsAddress1" id="">
												<option value="">--省/直辖市--</option>
											</select>
											<select name="recipientsAddress2" id="">
												<option value="">--市--</option>
											</select>
											<select name="recipientsAddress3" id="">
												<option value="">--县--</option>
											</select> -->
											
											<div id="province"></div>
											
										</div>
									</div>
									<div class="clearfix newList">
										<div class="left">
											<em>*</em>
											<span>详细地址</span>
										</div>
										<div class="right">
											<input type="text" placeholder="无需重复填写省市区，小于75个字" name="area">
										</div>
									</div>
									<div class="clearfix newList">
										<div class="left">
											<em>*</em>
											<span>收货人姓名</span>
										</div>
										<div class="right">
											<input type="text" placeholder="不能为昵称、X先生、X小姐等，请使用真实姓名" name="recipientsName">
										</div>
									</div>
<!-- 									<div class="clearfix newList">
										<div class="left">
											<em>*</em>
											<span>收货人身份证号码</span>
										</div>
										<div class="right">
											<input type="text" placeholder="购买含有新郑保税区商品需认证收货人身份证信息">
										</div>
									</div> -->
									<div class="clearfix newList">
										<div class="left">
											<em>*</em>
											<span>手机号码</span>
										</div>
										<div class="right">
											<input type="text" placeholder="手机号码、电话号码必须填一项" name="recipientsPhone">
										</div>
									</div>
<!-- 									<div class="clearfix newList">
										<div class="left">
											<span>电话号码</span>
										</div>
										<div class="right">
											<input type="text" placeholder="区号">
											<i>-</i>
											<input type="text" placeholder="电话号码" >
											<i>-</i>
											<input type="text" placeholder="分机号（可选）">
										</div>
									</div> -->
<!-- 									<div class="clearfix newList">
										<div class="left">
											<span>邮箱</span>
										</div>
										<div class="right">
											<input type="text" placeholder="接受订单提醒邮件，便于您及时了解订单状态">
										</div>
									</div> -->
									<div class="clearfix newList">
										<div class="right" height="100px">
											<span class="checkbox" name="recipientsChecked" id="checkbox" style="margin: 11px"></span>
											<span>设为默认地址</span>
										</div>
									</div>
									<div class="newList">
										<div class="right">
											<input type="submit" value="保存新地址" onclick="insert()"/>
										</div>
									</div>
								</div>
						</div>
					</div>
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
                <ul>
                    <li><a target="_blank" href="../../haitao">关于澳猫海淘</a></li>
                    <li><a target="_blank" href="../../Recruitment">商家入驻</a></li>
                    <li><a target="_blank" href="../../collaborate">网站合作</a></li>
                    <li><a target="_blank" href="../../friend">友情链接</a></li>
                    <li><a target="_blank" href="../../publicBenefit">澳猫公益</a></li>
                    <li><a target="_blank" href="../../law">法律声明</a></li>
                    <li><a target="_blank" href="../../hr">诚聘英才</a></li>
                    <li><a target="_blank" href="../../contactus">联系我们</a></li>
                    <!--<li><a target="_blank" href="">网站地图</a></li>-->
                </ul>
                <!-- <ul class="twoArea">
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
                 </ul>-->
                <p>
                    澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
                    Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
                </p>
                <div class="ALLN"></div>
            </div>
        </div>
    </footer>
    
    <script src="js/jquery-1.7.2.min.js"></script>
    <script src="js/member.js"></script>
    <script src="js/base.js"></script>
    <script src="js/jquery-1.7.2.min.js"></script>
    <script type="text/javascript" src="js/jquery.provincesCity.js"></script>
    <script type="text/javascript" src="js/provincesData.js"></script>
    <script type="text/javascript">
      /*调用插件*/
      $(function () {
        $("#province").ProvinceCity();
      });
      
      function insert() {
    	  var data = {};
    	  var province = $.trim($("select[name=province]").val());
    	  var city1 = $.trim($("select[name=city1]").val());
    	  var city2 = $.trim($("select[name=city2]").val());
    	  var area = $.trim($("input[name=area]").val());
    	  data.recipientsAddress = province + city1 + city2 + area;
    	  data.recipientsName = $.trim($("input[name=recipientsName]").val());
    	  data.recipientsPhone = $.trim($("input[name=recipientsPhone]").val());
    	  data.recipientsChecked = 0;
    	  if ($("#checkbox").hasClass('checked')) {
    		  data.recipientsChecked = 1;
    	  }
    	  data.recipientsUser = ${users.userId};// ! 后续添加
    	  //console.log(data);
    	  $.ajax({
    		  url: "InsertOrderRecipientsController.do",
    		  type: "post",
    		  data: data,
    		  success: function(res) {
    			  alert(res);
    			  location.reload();
    		  }
    	  });
      }
    </script>
</body>
</html>