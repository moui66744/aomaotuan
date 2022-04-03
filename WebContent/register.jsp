<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>注册页-澳猫团</title>
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="css/reset.css">
	<link rel="stylesheet" href="css/base1.css">
	<link rel="stylesheet" href="css/register.css">
	<!-- 视图窗口，移动端特属的标签。 -->
    <meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no" />
	<link media="screen and (min-width: 992px) and (max-width:1200px)" rel="stylesheet" href="css/base1-small.css">
	<link media="screen and (min-width: 992px) and (max-width:1200px)" rel="stylesheet" href="css/register-small.css">
	<link media="screen and (min-width: 768px) and (max-width:991px)" rel="stylesheet" href="css/base1-pad.css">
	<link media="screen and (min-width: 768px) and (max-width:991px)" rel="stylesheet" href="css/register-pad.css">
</head>
<body>
	<!-- 顶部 -->
	<header>
		<!-- 搜索和logo -->
		<div class="logoAndSearch textWarp w1190 clearfix">
			<div class="logo">
				<a href="#">澳猫网</a>
			</div>
			<div class="LAStxt">
				欢迎注册
			</div>
			<div class="search">
				<div class="txt">
					<input type="text" placeholder="Swisse/澳洲">
					<em></em>
				</div>
				<a href="#" class="btn">
					搜索
				</a>
				<ul>
					<li><a target="_blank" href="#">胶原蛋白</a></li>
					<li><a target="_blank" href="#">叶绿素</a></li>
					<li><a target="_blank" href="#">睡眠片</a></li>
					<li><a target="_blank" href="#">儿童维生素</a></li>
					<li><a target="_blank" href="#">鱼肝油</a></li>
					<li><a target="_blank" href="#">保健品</a></li>
					<li><a target="_blank" href="#">美容</a></li>
					<li class="BN"><a target="_blank" href="#">运动保健</a></li>
				</ul>
			</div>
		</div>
	</header>
	<!-- 声明 -->
	<div class="Statement">郑重声明：本网站所有商品均由境外直邮，由中国海关国检全程监管，敬请监督，假一罚十！</div>
	<!-- 主题内容 -->
	<div class="bd">
		<div class="bdW textWarp w1190">
			<div class="bdArea clearfix">
				<!-- <form action="UserRegisterController.do" method="post"> -->
					<div class="bdATxt W313">
						<!-- 注册标题 -->
						<h3 class="clearfix">
							<span>新用户注册</span>
							<span>已有帐号？<a href="login.jsp">立即登录</a></span>
						</h3>
						<!-- 用户名 -->
						<p class="clearfix">
							<input class="W313" type="text" placeholder="请输入用户名" name="userName">
						</p>
						<!-- 手机号码 -->
						<p class="clearfix">
							<input class="W313" type="text" placeholder="请输入手机号码" name="userPhone">
						</p>
						<!-- 密码 -->
						<p class="clearfix">
							<input type="password" placeholder="请输入密码" name="userPass">
							<strong>低</strong>
							<strong>一般</strong>
							<strong>高</strong>
						</p>
						<!-- 再次输入密码 -->
						<p class="clearfix">
							<input class="W313" type="password" placeholder="确认密码" name="userPass2">
						</p>
						<!-- 验证码 -->
						<p class="clearfix">
							<input type="text" placeholder="验证码" name="captchaInput">
							<span class="Ypic" onclick="newCaptcha()">
								<a><img src="NewCaptchaController.do" id="captcha">换一张</a>
							</span>
						</p>
						<!-- 激活码 -->
						<p class="clearfix">
							<input type="text" placeholder="短信验证码" name="verifyCode">
							<button type="button" class="sendVerifyCode">获取短信验证码</button>
						</p>
						<!-- 邮箱 -->
						<p class="clearfix">
							<input class="W313" type="text" placeholder="请输入邮箱，用于找回账户密码" name="userEmail">
						</p>
<!-- 						推荐人手机号码
						<p class="clearfix chp">
							<span class="PNunber clearfix">
								<span class="checkbox"></span>
								<b class="PCtxt">推荐人手机号</b>
							</span>
							<input class="W313 Cn" placeholder="请输入推荐人手机号码" type="text">
						</p> -->
						<!-- 注册 -->
						<p class="clearfix Pbtn">
							<button class="W313 sub-btn">注册</button>
						</p>
						<!-- 用户协议 -->
						<p class="clearfix Plast">
							<span class="checkbox checked"></span>
							<b class="PCtxt">我已阅读并同意<a href="#">《澳猫团用户注册协议》</a></b>
							<span class="agreement Cn">
								本协议是您与aumalls.com（简称"本站"，网址：www.aumalls.com）所有者（以下简称为"澳猫团"）之间就澳猫团网站的商品、服务销售等相关事宜所订立的契约，请您仔细阅读本注册协议，您选择注册成为澳猫团会员时，或者选择从本站购买任何商品或服务，或使用本站的任何服务本协议，即构成对双方有约束力的法律文件。

								第1条本站服务条款的确认和接纳

								1.1用户点击同意本协议的，即视为用户确认自己具有享受本站服务、下单购物等相应的权利能力和行为能力，能够独立承担法律责任。
								1.2本站的各项电子服务的所有权和运作权归澳猫团所有。用户同意所有注册协议条款并完成注册程序，才能成为本站的正式用户。用户确认：本协议条款是处理双方权利义务的契约，始终有效，法律另有强制性规定或双方另有特别约定的，依其规定。
								1.3澳猫团保留在中华人民共和国大陆地区法施行之法律允许的范围内独自决定拒绝服务、关闭用户账户、清除或编辑内容或取消订单的权利。

								本站服务
								2.1澳猫团通过互联网依法为用户提供各类商品及各项服务，用户在完全同意本协议及本站规定的情况下，方有权使用本站的相关服务。
								2.2用户必须自行准备如下设备和承担如下开支：（1）上网设备，包括并不限于电脑或者其他上网终端、调制解调器及其他必备的上网装置；（2）上网开支，包括并不限于网络接入费、上网设备租用费、手机流量费等。

								用户信息

								3.1用户应自行诚信向本站提供注册资料，用户同意其提供的注册资料真实、准确、完整、合法有效，用户注册资料如有变动的，应及时更新其注册资料。如果用户提供的注册资料不合法、不真实、不准确、不详尽的，用户需承担因此引起的相应责任及后果，并且澳猫团保留终止用户使用澳猫团各项服务的权利。
								3.2用户在本站进行浏览、下单购物等活动时，涉及用户真实姓名、通信地址、联系电话、电子邮箱等隐私信息的，本站将予以严格保密，除非得到用户的授权或法律另有规定，本站不会向外界披露用户隐私信息。
								3.3用户注册成功后，将产生用户名和密码等账户信息，您可以根据本站规定改变您的密码。用户应谨慎合理的保存、使用其用户名和密码。用户若发现任何非法使用用户账号或存在安全漏洞的情况，请立即通知本站并向公安机关报案。
								3.4用户同意，澳猫团拥有通过邮件、短信电话等形式，向在本站注册、购物用户、收货人发送订单信息、促销活动等告知信息的权利。
								3.5用户不得将在本站注册获得的账户借给他人使用，否则用户应承担由此产生的全部责任，并与实际使用人承担连带责任。
								3.6用户同意，澳猫团有权使用用户的注册信息、用户名、密码等信息，登录进入用户的注册账户，进行证据保全，包括但不限于公证、见证等。
								第4条 用户依法言行义务
								本协议依据国家相关法律法规规章制定，用户同意严格遵守以下义务：
								（1）不得传输或发表：煽动抗拒、破坏宪法和法律、行政法规实施的言论，煽动颠覆国家政权，推翻社会主义制度的言论，煽动分裂国家、破坏国家统一的的言论，煽动民族仇恨、民族歧视、破坏民族团结的言论；
								（2）从中国大陆向境外传输资料信息时必须符合中国有关法规；
								（3）不得干扰本站的正常运转，不得侵入本站及国家计算机信息系统；
								（4）不得传输或发表任何违法犯罪的、骚扰性的、中伤他人的、辱骂性的、恐吓性的、伤害性的、庸俗的，淫秽的、不文明的等信息资料；
								（5）不得传输或发表损害国家社会公共利益和涉及国家安全的信息资料或言论；
								（6）不得教唆他人从事本条所禁止的行为；
								（7）除作为相关商品的供应商从而向澳猫团供应商品和登陆后台查询商品销售情况外，不得利用在本站注册的账户进行牟利性经营活动；
								（8）不得发布任何侵犯他人著作权、商标权等知识产权或合法权利的内容；
								用户应不时关注并遵守本站不时公布或修改的各类合法规则规定。
								本站保有删除站内各类不符合法律政策或不真实的信息内容而无须通知用户的权利。
								若用户未遵守以上规定的，本站有权作出独立判断并采取暂停或关闭用户帐号等措施。用户须对自己在网上的言论和行为承担法律责任。

								第5条 商品信息
								本站上的实物及服务类商品的价格、数量、是否有货等各项商品信息随时都有可能发生变动，本站不作特别通知。为表述便利，商品和服务于本站中均简称为"商品"。
								由于网站上商品信息的数量极其庞大，虽然本站会尽最大努力保证您所浏览商品信息的准确性，但由于众所周知的互联网技术因素等客观原因存在，本站网页显示的信息可能会有一定的滞后性或差错，对此情形您知悉并理解；澳猫团欢迎纠错，并会视情况给予纠错者一定的奖励。

								第6条 订单
								6.1在您下订单时，请您仔细确认所购商品的名称、价格、数量、型号、规格、联系地址、电话、收货人等信息。收货人与用户本人不一致的，收货人的行为和意思表示视为用户的行为和意思表示，用户应对收货人的行为及意思表示的法律后果承担连带责任。
								6.2由于市场变化及各种以合理商业努力难以控制的因素的影响，本站无法保证您提交的订单信息中希望购买的商品都会有货；如您拟购买的商品，发生缺货，您有权取消订单。
								第7条 支付及配送
								7.1澳猫团或澳猫团认可的供应商会负责将商品送到您所指定的收货地址，或将服务按照承诺的方式向您送达，所有在本站上列出的送货时间为参考时间，参考时间的计算是根据库存状况、正常的处理流程及手续、送货地点的基础上估计得出的。
								7.2因如下情况造成订单延迟或无法配送等，澳猫团不承担延迟配送的责任：
								（1）用户提供的信息错误、地址不详细等原因导致的；
								（2）商品送达后无人签收，导致无法配送或延迟配送的；
								（3）情势变更因素导致的；
								（4）不可抗力因素导致的，例如：自然灾害、交通戒严、突发战争等。
								7.3本网站部分商品因所在地不在中国大陆地区，物流配送时间会比国内商品稍长。如用户确认下单则视为接受配送方式及时间安排。如有疑问，用户可随时咨询本站客服人员。
								7.4 收货人可以为用户本人也可以为本人以外的其他人。澳猫团将按照通过审核后的订单上所述的配送地址、收货人姓名和电话进行配送。如果收货人在配送过程中要求变更接收地址的，澳猫团视同已经过用户本人的同意。原则上收货人应当亲自接收，如遇特殊情况收货人可以与澳猫团客服中心联系申请由他人代为签收。如果配送地点属于办公区域，则前台人员代为签收视为已经经过用户的同意。如果配送地点属于设有物业管理公司或机构的住宅区域，则物业工作人员（包括小区保安等）代为签收视为已经经过用户的同意。大额订单进行配送签收时，澳猫团有权要求收货人出示有效身份证明。若用户无正当理由多次拒收商品，则澳猫团有权取消该用户以后的订单。情形恶劣的，澳猫团有权采取冻结、关闭账户，永久禁止注册等措施，并保留追究赔偿责任的权利。
								7.5 付款与退款。付款方式将在澳猫团网站予以公示。用户应在确认订单时，选择付款方式，并严格按照已选择的方式付款。用户未能按照所选择的方式或所要求的时间完成付款的，澳猫团有权单方取消订单。退货或换货商品缺货时产生的现金款项，退回方式视支付方式的不同而不同，以澳猫团公示为准。
								第8条 有关平台服务
								8.1 平台服务。澳猫团网站销售的商品主要系由澳猫团以其自身名义直接向您进行销售并由澳猫团承担物流及售后等相关责任；但部分商品、服务由于其本身的特殊性或给予澳猫团与供应商之间的约定，系由第三方直接提供，澳猫团仅作为平台方提供中介服务。
								8.2 对于平台服务下产生的订单，将由商户直接将相关商品发送给您，或在特定地点为您提供相关服务，并将由商户直接对详情页中的商品描述及其他相关产品质量承担责任。澳猫团将严格要求供应商按照最快的速度，或根据订单提报时所允许的指定时间向您提供商品或者服务，同时澳猫团将为您尽可能的提供协助以确保您的权益得到实现。
								否则，澳猫团有权追究其法律责任。
								第9条 责任限制及不承诺担保
								除非另有明确的书面说明,本站及其所包含的或以其它方式通过本站提供给您的全部信息、内容、材料、产品（包括软件）和服务，均是在"按现状"和"按现有"的基础上提供的。
								如因不可抗力或其它本站无法控制的原因使本站销售系统崩溃或无法正常使用导致网上交易无法完成或丢失有关的信息、记录等，澳猫团会合理地尽力协助处理善后事宜。
								第10条 协议更新及用户关注义务
								根据国家法律法规变化及网站运营需要，澳猫团有权对本协议条款不时地进行修改，修改后的协议一旦被张贴在本站上即生效，并代替原来的协议。用户可随时登录查阅最新协议；用户有义务不时关注并阅读最新版的协议及网站公告。如用户不同意更新后的协议，可以且应立即停止接受澳猫团网站依据本协议提供的服务；如用户继续使用本网站提供的服务的，即视为同意更新后的协议。澳猫团建议您在使用本站之前阅读本协议及本站的公告。 如果本协议中任何一条被视为废止、无效或因任何理由不可执行，该条应视为可分的且并不影响任何其余条款的有效性和可执行性。
								第11条 法律管辖和适用
								本协议的订立、执行和解释及争议的解决均应适用在中华人民共和国大陆地区适用之有效法律（但不包括其冲突法规则）。 如发生本协议与适用之法律相抵触时，则这些条款将完全按法律规定重新解释，而其它有效条款继续有效。 如缔约方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，任何一方均应向澳猫团注册地人民法院提起诉讼。
								第12条 其他
								12.1澳猫团网站所有者是指在政府部门依法许可或备案的澳猫团网站经营主体。
								12.2澳猫团尊重用户和消费者的合法权利，本协议及本网站上发布的各类规则、声明等其他内容，均是为了更好的、更加便利的为用户和消费者提供服务。本站欢迎用户和社会各界提出意见和建议，澳猫团将虚心接受并适时修改本协议及本站上的各类规则。
								12.3您选择注册为澳猫团的会员即视为您完全接受本协议，在点击之前请您再次确认已知悉并完全理解本协议的全部内容。
							</span>
						</p>
					</div>
				<!-- </form> -->
				<!-- 右侧 -->
				<div class="bdPic W115">
					<img src="images/AppEr.png" alt="二维码">
					<p>扫码下载客户端</p>
					<div class="pL">
						<span>手机可直接访问</span>
						<strong>m.aumalls.com</strong>
					</div>
					<div class="otherLogin">
						<span>使用其他账户登录</span>
						<ul class="clearfix">
							<li></li>
							<li></li>
							<li></li>
							<li></li>
							<li></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- 提示 -->
	<div class="hint">
		<p class="textWarp w1190">
			温馨提示：个人消费者如购买跨境贸易电子商务零售进口商品，应当遵守国家相关规定，提供真实身份信息，并同意委托本电商企业或其代理企业代表收件人向海关办理申报通关和缴纳税款手续。购买跨境贸易电子商务零售进口商品需符合“个人自用、合理数量”原则，不得用于销售、加工生产或其他非个人消费自用用途。个人消费者购买本商品有违反海关监管规定等违法行为的，将依法承担法律责任。
		</p>
	</div>
	<!-- 底部 -->
	<footer>
		<div class="txt textWarp w1190">       
			<ul>
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
			<p>
				澳大利亚Health more - 河南康多多贸易有限公司 - 河南澳蜜电子商务有限公司 版权所有<br>
				Copyright © 20015-2018  澳猫aumalls.com 版权所有, 豫ICP备15030837号-1
			</p>
			<div class="ALLN"></div>
		</div>
	</footer>
	<script src="js/jquery-1.7.2.min.js"></script>
	<script src="js/jquery.lazyload.min.js"></script>
	<script src="js/register.js"></script>
	<script>
/* 		// 注册
		$('.Plast .checkbox').click(function(event) {
			if ($('.Plast .checkbox').hasClass('checked')) {
				$(this).removeClass('checked');
				$('.Plast .agreement').removeClass('Cn');
				$('.Pbtn a').css('background', '#999');
				$('.Pbtn a').removeAttr('href');
			}else{
				$(this).addClass('checked');
				$('.Plast .agreement').addClass('Cn');
				$('.Pbtn a').css('background', '#0079CC');
				$('.Pbtn a').attr("href","#"); 
			}
		}); */
		function phoneFun(phones){
			    var myreg = /^[1][3,4,5,7,8,9][0-9]{9}$/;
			    if (!myreg.test(phones)) {
			        console.log('手机号格式不正确')
			      return false;
			    } else {
			        console.log('手机号格式正确')
			      return true;
			    }
			}
		function emailFun(email){
			     var myreg = /^([a-zA-Z0-9_\.\-])+@([a-zA-Z0-9_-])+((\.[a-zA-Z0-9_-]{2,3}){1,2})$/;
			     if (!myreg.test(email)) {
			         console.log('邮箱格式不正确')
			       return false;
			     } else {
			         console.log('邮箱格式正确')
			       return true;
			     }
			 }
		
		function newCaptcha() {
			$("#captcha").prop("src", "NewCaptchaController.do?tm="+new Date().getMilliseconds());
		}
		
		$(function(){ 
			//短信验证码倒计时
			var countdownHandler = function(){
				var $button = $(".sendVerifyCode");
				var number = 60;
				var countdown = function() {
					if (number == 0) {
						$button.attr("disabled",false);
						$button.html("发送验证码");
			            number = 60;
			            return;
			        } else {
			        	$button.attr("disabled",true);
			        	$button.html(number + "秒 重新发送");
			        	number--;
			        }
					setTimeout(countdown,1000);
				};
				setTimeout(countdown,1000);
			}
			//发送短信验证码
			$(".sendVerifyCode").on("click", function(){
				var $userPhone = $("input[name=userPhone]");
				var data = {};
				data.userPhone = $.trim($("input[name=userPhone]").val());
				var captchaInput = $.trim($("input[name=captchaInput]").val());
 				if (data.userPhone == ''){
					alert("请输入手机号码");
					return ;
				}
				if(phoneFun(data.userPhone)==false){
					alert("手机号格式错误");
					return;
				}
				
				if (captchaInput == '') {
					alert("请输入图片验证码");
					return ;
				} 
				$.ajax({
					url: "CheckCaptchaCodeController.do",
					type: "post",
					dataType: "text",
					data: {
						captchaInput: captchaInput,
					},
					success: function (res) {
						if (res == 'success') {
							$.ajax({
						        url: "SendMessageController.do",
						        async : true,
						        type: "post",
						        dataType: "text",
						        data: data,
						        success: function (data) {
						        	if(data == 'success'){
						        		countdownHandler();
						        		return ;
						        	}
						        	alert(data);
						        }
					    	});
						} else {
							alert(res);
							return;
						}
					}
				});

			})
			//提交
			$(".sub-btn").on("click", function(){
				var data = {};
				data.userPhone = $.trim($("input[name=userPhone]").val());
				data.userPass = $.trim($("input[name=userPass]").val());
				data.userPass2 = $.trim($("input[name=userPass2]").val());
				data.verifyCode = $.trim($("input[name=verifyCode]").val());
				data.userEmail = $.trim($("input[name=userEmail]").val());
				data.userName = $.trim($("input[name=userName]").val());
				if (data.verifyCode == '') {
					alert("请输入短信验证码");
					return ;
				}
				if (data.userEmail == '') {
					alert("请输入邮箱");
					return ;
				}
				if(emailFun(data.userEmail)==false){
					alert("邮箱格式错误");
					return;
				}
				$.ajax({
			        url: "UserRegisterController.do",
			        async : true,
			        type: "post",
			        dataType: "text",
			        data: data,
			        success: function (data) {
			        	if(data == "注册成功"){
			        		alert(data);
			        		window.location.href="login.jsp";
			        	}
			        	alert(data);
			        }
		    	});
			})
		});

	</script>
</body>
</html>