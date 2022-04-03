<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>首页-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base.css">
	<link rel="stylesheet" href="css/index.css">
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
					<a target="_blank" href="login.jsp">登录</a>
					<span>|</span>
					<a target="_blank" href="register.jsp">免费注册</a>
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
						<a href="TempController.do">个人中心</a>
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
			<a href="index.html">澳猫团</a>
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
	<!-- 焦点图	-->
	<div class="banner">
		<ul>
			<li style="z-index:1;"><a target="_blank" href="brand_a2.html"><img src="images/banner1.png" alt=""></a></li>
			<li><a target="_blank" href="http://www.aumalls.com/groupoffer/list"><img src="images/banner2.png" alt=""></a></li>
			<li><a target="_blank" href="http://www.aumalls.com/Product/Index/1002"><img src="images/banner3.png" alt=""></a></li>
			<li><a target="_blank" href="#"><img src="images/banner4.png" alt=""></a></li>
		</ul>
		<ol>
			<li class="currentOl"></li>
			<li></li>
			<li></li>
			<li></li>
		</ol>
		<span class="right"></span>
		<span class="left"></span>
	</div>
	<!-- 主要内容 -->
	<div class="area  new_area">
		<!--明星品牌馆-->
		<div class="star_brand">
			<div class="center_1200">
				<div class="star_top">
					<h3>明星级品牌</h3>
					<div class="top_line">
						<p>SUPER STAR</p>
					</div>
				</div>
				<ul class="star_list clearfix">
					<li><a target="_blank" href="brand_a2.html">
						<dl>
							<dt><img class="star_img" src="images/milk.jpg" /></dt>
							<dd class="star_show">
								<img src="images/star_one.png">
								<div class="line_three"></div>
							</dd>
							<dd class="star_hover_show">
								<h4>a2 婴幼儿配方奶粉</h4>
								<div class="small_star_logo">
									<img src="images/star_one.png" />
								</div>
								<div class="three_short_line"></div>
								<p class="show_more">SHOW MORE</p>
								<p class="star_des">来自新西兰</p>
								<p class="star_des">100多项科研的高端奶粉品牌</p>
								<div class="line_three"></div>
							</dd>
						</dl>
					</a></li>
					<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=swisse&crossStore=true">
						<dl>
							<dt><img class="star_img" src="images/swisse.jpg" /></dt>
							<dd class="star_show">
								<img src="images/star_two.png">
								<div class="line_three"></div>
							</dd>
							<dd class="star_hover_show">
								<h4>Swisse 瑞思</h4>
								<div class="small_star_logo">
									<img src="images/star_two.png" />
								</div>
								<div class="three_short_line"></div>
								<p class="show_more">SHOW MORE</p>
								<p class="star_des">来自澳洲</p>
								<p class="star_des">口碑爆棚的维生素品牌</p>
								<div class="line_three"></div>
							</dd>
						</dl>
					</a></li>
					<li><a target="_blank" href="brand_Blackmores.html">
						<dl>
							<dt><img class="star_img" src="images/blackmores.jpg" /></dt>
							<dd class="star_show">
								<img src="images/star_three.png">
								<div class="line_three"></div>
							</dd>
							<dd class="star_hover_show">
								<h4>Blackmores</h4>
								<div class="small_star_logo">
									<img src="images/star_three.png" />
								</div>
								<div class="three_short_line"></div>
								<p class="show_more">SHOW MORE</p>
								<p class="star_des">来自澳洲</p>
								<p class="star_des">殿堂级的天然健康品牌</p>
								<div class="line_three"></div>
							</dd>
						</dl>
					</a></li>
					<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=natures,way&crossStore=true">
						<dl>
							<dt><img class="star_img" src="images/sugger.jpg" /></dt>
							<dd class="star_show">
								<img src="images/star_four.png">
								<div class="line_three"></div>
							</dd>
							<dd class="star_hover_show">
								<h4>natures,way</h4>
								<div class="small_star_logo">
									<img src="images/star_four.png" />
								</div>
								<div class="three_short_line"></div>
								<p class="show_more">SHOW MORE</p>
								<p class="star_des">来自澳洲</p>
								<p class="star_des">顶尖的生命营养素品牌</p>
								<div class="line_three"></div>
							</dd>
						</dl>
					</a></li>
					<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=NU-LAX%20%E4%B9%90%E5%BA%B7%E8%86%8F&crossStore=true">
						<dl>
							<dt><img class="star_img" src="images/fruit.jpg" /></dt>
							<dd class="star_show">
								<img src="images/star_five.png">
								<div class="line_three"></div>
							</dd>
							<dd class="star_hover_show">
								<h4>NU-LAX 乐康膏</h4>
								<div class="small_star_logo">
									<img src="images/star_five.png" />
								</div>
								<div class="three_short_line"></div>
								<p class="show_more">SHOW MORE</p>
								<p class="star_des">来自澳洲</p>
								<p class="star_des">畅销75年的润肠排毒克星</p>
								<div class="line_three"></div>
							</dd>
						</dl>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="aut_brand">
			<div class="center_1200 clearfix">
				<div class="aut_brand_left">
					<dl>
						<dt>
							<h4>官方授权品牌</h4>
							<p>AUTHORIZED BRAND</p>
							<div class="three_short_line"></div>
						</dt>
						<dd>
							<img src="images/brand_logo.png" height="197" width="173" />
						</dd>
					</dl>
				</div>
				<div class="aut_brand_right">
					<ul class="aut_brand_list clearfix">
						<li><a target="_blank" href="brand_Blackmores.html">
							<div class="img_wrap">
								<img src="images/001.png" />
							</div>
							<div class="show_brand_des">
								<p>澳佳宝品牌馆</p>	
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="brand_a2.html">
							<div class="img_wrap">
								<img src="images/002.png" />
							</div>
							<div class="show_brand_des">
								<p>a2奶粉品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=NU-LAX%20%E4%B9%90%E5%BA%B7%E8%86%8F&crossStore=true">
							<div class="img_wrap">
								<img src="images/003.png" />
							</div>
							<div class="show_brand_des">
								<p>乐康膏品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=swisse&crossStore=true">
							<div class="img_wrap">
								<img src="images/004.png" />
							</div>
							<div class="show_brand_des">
								<p>Swisse瑞思品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=GAIA&crossStore=true">
							<div class="img_wrap">
								<img src="images/005.png" />
							</div>
							<div class="show_brand_des">
								<p>澳洲GAIA品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Goat&crossStore=true">
							<div class="img_wrap">
								<img src="images/006.png" />
							</div>
							<div class="show_brand_des">
								<p>澳洲Goat品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/007.png" />
							</div>
							<div class="show_brand_des">
								<p>ARM& HAMMER品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/008.png" />
							</div>
							<div class="show_brand_des">
								<p>莱斯贝品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Femfresh&crossStore=true">
							<div class="img_wrap">
								<img src="images/009.png" />
							</div>
							<div class="show_brand_des">
								<p>澳洲Femfresh品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/010.png" />
							</div>
							<div class="show_brand_des">
								<p>娜迪奥品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=KEY%20SUN&crossStore=true">
							<div class="img_wrap">
								<img src="images/011.png" />
							</div>
							<div class="show_brand_des">
								<p>澳洲 KEY SUN品牌馆  </p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=%E5%A5%A5%E8%9C%9C%E6%80%9D&crossStore=true">
							<div class="img_wrap">
								<img src="images/012.png" />
							</div>
							<div class="show_brand_des">
								<p>奥蜜思品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/013.png" />
							</div>
							<div class="show_brand_des">
								<p>Pharmacare品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/014.png" />
							</div>
							<div class="show_brand_des">
								<p>PZ Cussons品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="#">
							<div class="img_wrap">
								<img src="images/015.png" />
							</div>
							<div class="show_brand_des">
								<p>赛诺菲品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=FreezeFram&crossStore=true">
							<div class="img_wrap">
								<img src="images/016.png" />
							</div>
							<div class="show_brand_des">
								<p>FreezeFram品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Sukin&crossStore=true">
							<div class="img_wrap">
								<img src="images/017.png" />
							</div>
							<div class="show_brand_des">
								<p>Sukin 苏芊品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=mor&crossStore=true">
							<div class="img_wrap">
								<img src="images/018.png" />
							</div>
							<div class="show_brand_des">
								<p>澳洲mor品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=%E6%B1%A4%E5%A7%86%E6%A3%AE&crossStore=true">
							<div class="img_wrap">
								<img src="images/019.png" />
							</div>
							<div class="show_brand_des">
								<p>汤姆森品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=TOM%20Organic&crossStore=true">
							<div class="img_wrap">
								<img src="images/020.png" />
							</div>
							<div class="show_brand_des">
								<p>TOM Organic品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Nature%27s%20Way&crossStore=true">
							<div class="img_wrap">
								<img src="images/021.png" />
							</div>
							<div class="show_brand_des">
								<p>Nature's Way品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Red%20Seal&crossStore=true">
							<div class="img_wrap">
								<img src="images/022.png" />
							</div>
							<div class="show_brand_des">
								<p>红印Red Seal品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=%E5%BE%B7%E8%BF%90%E5%A5%B6%E7%B2%89&crossStore=true">
							<div class="img_wrap">
								<img src="images/023.png" />
							</div>
							<div class="show_brand_des">
								<p>德运奶粉品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
						<li><a target="_blank" href="http://www.aumalls.com/Store/Search/?q=Lucas%20Papaw%20Remedies&crossStore=true">
							<div class="img_wrap">
								<img src="images/024.png" />
							</div>
							<div class="show_brand_des">
								<p>Lucas Papaw Remedies品牌馆</p>
							</div>
							<span class="left"></span>
							<span class="top"></span>
							<span class="right"></span>
							<span class="bottom"></span>
						</a></li>
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
	<!-- 固定部分 -->
	<div class="fixSearch">
		<div class="fixN w1190 textWarp">
			<div class="fixlogo">
			</div>
			<div class="fixsear">
				<div class="FSTxt">
					<input class="SearchBttonValue" type="text" placeholder="搜索 澳猫 商品/品牌">
					<em></em>
				</div>
				<a class="SearchBtton" href="#">搜索</a>
			</div>
		</div>
	</div>
	<div class="fixNav">
		<ul>
			<li>
				<a href="#" class="Fico"></a>
				<a href="#" class="FLhover">
					我的澳猫
				</a>
			</li>
			<li>
				<a href="#" class="Fico"></a>
				<em>0</em>
			</li>
		</ul>
		<div class="news FC">
			<a href="#" class="Fico"></a>
			<a href="#" class="FLhover">查看消息</a>
		</div>
		<div class="KeF FC">
			<a href="#" class="Fico"></a>
		</div>
		<div class="ER FC">
			<a href="#" class="Fico"></a>
			<div class="FLhover">
				<p>扫描澳猫官方微信</p>
				<img src="images/AppEr.png" alt="二维码" class="Fer">
				<em></em>
			</div>
		</div>
		<div class="top FC">
			<div class="Fico"></div>
		</div>
	</div>
	<div class="fixRecruiting">
		<button></button>
		<a target="_blank" href="http://www.aumalls.com/hr">
			<img src="images/Recruiting.gif" alt="澳猫团招聘">
		</a>
	</div>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/jquery.lazyload.min.js"></script>
	<script src="js/base.js"></script>
	<script src="js/index.js"></script>
	<script>
		$('.fixRecruiting button').click(function(event) {
			$(this).parent('.fixRecruiting').css('display', 'none');
		});
        $(function () {
            $(".SearchBtton").bind("click", function () {
                try {
                    var value = $('.SearchBttonValue').val();
                    var key = value.replace(/</g, "").replace(/>/g, "");
                    goSearch($(this));

                }
                catch (e) {

                }
            });
        });
        var solr_pecialchar_and = "specialchar_insteadof_andchar";
        function goSearch($this) {
            var key = $(".SearchBttonValue").val();
            var url = $(this).data("url");
            var lastChar = url.substr(url.length - 1); // => "1"
            if (lastChar == '/') {
                url = url.substr(0, url.length - 1);
            }

            if (key) {
                key = key.replace("&", solr_pecialchar_and);
                window.location.href = url + "/Store/Search/?q=" + key + "&crossStore=true";
            } else {
                window.location.href = url + "/Store/Search/?crossStore=true";
            }
        }
        /**
         * 品牌馆移入效果
         * @param  element e
         * @return {left, right}
         * @author yangyunxin
         * @date 2016-3-16
         */
    	$(".aut_brand_list").on("mouseenter", "li", function (e) {
    		var $this = $(this);
        	var $item = $(this).find(".show_brand_des");
        	console.log(moveForward($this, e))
        	$item.css(moveForward($this, e)).stop(true, true).animate({"left":"0px", "top": "0px"});
    	});
    	$(".aut_brand_list").on("mouseleave", "li", function (e) {
    		var $this = $(this);
        	var $item = $(this).find(".show_brand_des");
        	$item.stop(true, true).animate(moveForward($this, e));
    	});
    	var moveForward = function(elem, e){
            var w = elem.width(), h = elem.height(), direction=0, cssprop={};
            var x = (e.pageX - elem.offset().left - (w / 2)) * (w > h ? (h / w) : 1);
            var y = (e.pageY - elem.offset().top - (h / 2)) * (h > w ? (w / h) : 1);

            direction = Math.round((((Math.atan2(y, x) * (180 / Math.PI)) + 180) / 90) + 3) % 4;
            switch(direction)
            {
                case 0://from top
                    cssprop.left = 0;
                    cssprop.top = "-100%";
                    break;
                case 1://from right
                    cssprop.left = "100%";
                    cssprop.top = 0;
                    break;
                case 2://from bottom
                    cssprop.left = 0;
                    cssprop.top = "100%";
                    break;
                case 3://from left
                    cssprop.left = "-100%";
                    cssprop.top = 0;
                    break;
            }
            return cssprop;
        }
    </script>
</body>
</html>