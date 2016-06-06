<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>
<link rel="stylesheet" href="${ctx}/resources/css/index.css" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
</head>
<body>
	<div class="head_box">
		<div id="head_wrap">
			<div id="head_nav">
				<a class="head_nav_a">Dance4Ever</a>
			</div>
			<div id="head_right">
				<div class="user_center" id="ce">
					<a class="head_nav_a" href="${ctx}/user/user" style="color: green">用户中心</a>
				</div>
				<div id="head_landing">
					<div class="welcome" id="we">
						<div class="aaa yyy">
							<font color="green">${sessionScope.loginuser.loginName }欢迎你</font>
						</div>
					</div>
					<div class="head_div login" id="login">
						<div class="aaa yyy">
							<a class="head_nav_a" href="#" style="color: green">登陆</a> <span>|</span>
						</div>
						<div class="head_div_alive login_alive">
							<a href="${ctx}/user/userlogin">个人登录</a> <a
								href="${ctx}/danceTeam/teamlogin">舞团登录</a>
						</div>
					</div>
					<div class="head_div register" id="register">
						<div class="aaa xxx">
							<a class="head_nav_a" href="#" style="color: green">注册</a> <span></span>
						</div>
						<div class="head_div_alive register_alive">
							<a href="${ctx}/user/register">个人注册</a> <a
								href="${ctx}/danceTeam/register">舞团注册</a>
						</div>
					</div>

				</div>
			</div>
		</div>
	</div>
	<div id="main_head_box">
		<div id="menu_wrap">
			<div id="menu_logo">
				<img src="${ctx}/resources/images/dn.jpeg" height="75" width="75">
			</div>
			<div id="menu_nav">
				<ul>
					<li class="menu_li" control="xiaomiphone">Breaking</li>
					<li class="menu_li" control="hongmiphone">Popping</li>
					<li class="menu_li" control="pingban">Jazz</li>
					<li class="menu_li" control="tv">Locking</li>
					<li class="menu_li" control="luyou">Hiphop</li>
					<li><a href="${ctx}/shop/showShop">购物商店</a></li>
					<%-- 					<li><a href="${ctx}/danceTeam/teamCenter">购物商店</a></li> --%>
					<%-- 					<li><a href = "${ctx}/danceTeam/getDanceTeam">舞团社区</a></li> --%>
					<li><a href="${ctx}/danceTeam/updateRole">舞团社区</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div id="menu_content_bg" style="height: 0px;">
		<div id="menu_content_wrap">
			<ul style="top: 0px;">
				<li id="xiaomiphone">&nbsp;&nbsp;<font>（Breaking、Breakdance、b-boying,b-girl），是一种以个人风格为主的技巧性街舞舞种，也是街舞中最早的舞种，起源与美国70年代的布朗克斯区。比较值得注意的是，早期跳BREAKING的舞者多为西班牙语裔美国人，而非裔美国人，然而他们当初偏好的音乐风格却大大影响至今嘻哈音乐。
						Breaking具有自由的个人特色的动作为主。对玩breaking的人称呼为B-boy或B-girl<br>
						&nbsp;&nbsp;PowerMove<br>
						这些动作大多需要很强的上肢力量，感觉，以及灵活性。它们惯性很大，经常在旋转动作中甩动腿，扭转躯体。手臂，特别是肱三头肌和肩膀，经常需要在特别的位置承受全身的重量当腹肌和lower
						back muscle要移动腿部转圈时。胸肌和手臂后部的肌肉也需要承受巨大压力。
						PowerMove顾名思义就是力量移动。PowerMove是街舞Breaking中最华丽给人印象最深刻的元素。这经常是以街舞Breaking动作为特色的配合街舞（routine）的中心焦点。但是，大多数BBoy都不喜欢那些只使用PowerMove的人（称之为Powerhead）。
						最广为人知的三个PowerMove动作是Swipe（360，跳转），Windmill（风车），以及Flare（托马斯）。其他的也很有挑战性以及让人印象深刻的动作包括Halos和Air
						tracks（大回环），有些Breaking舞者将1990s和2000s列入powermove中。
				</font>

				</li>
				<li id="hongmiphone">&nbsp;&nbsp;<font>POPPING属于街舞，一般的POPPIN包括了肩膀、胸部、手臂、腿部等等。有时Waving（电流）也被现在的舞者融汇在POPPIN的范围里。LOCKING也称为锁舞，以转手及锁住的动作为主，产生令人眼花缭乱的美感及力道感。当今的POPPIN没有Old
						School 和New School的区分，都是属于Street Dance的舞种。<br>
						&nbsp;&nbsp;Popping是放克舞蹈（Funk Dance）和街舞（Street
						Dance）中的一种风格，最初的基本形式是借由肌肉迅速地收缩与放松的技巧，使舞者的身体产生震动的感觉，这种技巧称作Pop，舞者会以多种不同的动作和姿势来配合歌曲的节奏进行舞蹈，Popping舞者又被称为Popper。<br>
						&nbsp;&nbsp;现在一般的共识是由The Electric Boogaloos舞团的创始者Boogaloo
						Sam（本名Sam Solomon）在1975年至1976年间受到Locking先锋团体The
						Lockers的影响以及1960年代流行的热门舞蹈“the
						jerk”的启发后发明的，基本完成于1976~1978年间，并在发展与成长中成为了一个与Breaking、Locking一样的独立Funk舞种（虽然早期定义上Popping只是一个独立的style，然而在实际表演中以The
						Electric Boogaloos为首的Popper们大量使用了其它的Funk
						Style并逐渐把它们融合在一起成为一个舞种）。当Sam跳这种舞蹈并以其独有方式运动肌肉的时嘴里都会念“Pop”这个词，早期人们在看他表演时也会说对他说"Hey
						do that popping stuff!"，最终这一舞种被命名为Popping，虽然Popping并不能说是由Boogaloo
						Sam一人发明的，甚至其实在他之前已经有很多人运用肌肉震动来跳舞了，但是他创造了Popping的最基本内容与体系，基本上Popping元素以及其他与其紧密相关的大多数Funk
						Style均产生于这一时期的美国西海岸不同区域。也有部分的风格产生可能更早，但具体的发明者和历史仍有待考证。
				</font>
				</li>
				<li id="pingban">&nbsp;&nbsp;JAZZ有很多种:比如STREET JAZZ，POWER JAZZ
					，MODERN JAZZ，SEXY JAZZ，NEW JAZZ等等<br>
					&nbsp;&nbsp;&nbsp;&nbsp;STREET JAZZ是由POWER
					JAZZ和FUNKY还有部分HIPHOP元素组成!可观性很强的<br>
					&nbsp;&nbsp;&nbsp;&nbsp;POWER JAZZ
					是种力量型的JAZZ，很注重力点和力的爆发捏还有控制,跳起来属于很劲爆的那种<br>
					&nbsp;&nbsp;&nbsp;&nbsp;MODEN
					JAZZ由芭蕾舞蹈演变而来的,是一种很绅士很优雅的舞种。也是其他舞种的基础舞种之一<br>
					&nbsp;&nbsp;&nbsp;&nbsp;SEXY JAZZ性感爵士 以女生跳为主 基本要求是
					肩部腰部胯部的动作和音乐完美的结合 对于舞者的乐感 身体的柔韧度 控制力要求较高 需要爆发力的舞步要和强劲 需要柔软的地方要很撩人。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;NEW JAZZ就是现在我们一般在跳的爵士，只不过pose点比较多 。。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;FUNKY JAZZ比较类似POWER
					JAZZ也是力量之一,但是他注重力的点和过程的结合运用,跳起来相似于HIPHOP中的PUNKY<br>
					&nbsp;&nbsp;&nbsp;&nbsp;注意：雷鬼不属于爵士，不管是音乐还是舞种都是不同于爵士元素的。唯一共同点就是，都是性感的<br>
				</li>
				<li id="tv">&nbsp;&nbsp;Locking 是在约70年代时位于洛杉矶的一家夜总会里Don
					Campbell发明了这种即兴发挥的独特舞步。Locking 就是身体做一些很快的动作，然后在某一个动作时候突然停住
					，最主要的关键在于手部的旋转与定住。 锁舞是 old school 的一支， 比 breakin' 还早出现， 发源于美国洛杉矶，
					是种非常强调干净俐落的舞蹈， 因为舞蹈中 锁 的手势， 和突然 定格 的舞感类似锁 的功用，所以称为锁舞。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;首先，最早开始接触locking的时候，很多人会觉得它是街舞里最接近JAZZ的一种舞.之所以有这样的感觉，是因为locking讲究“点”，也就是我们常在JAZZ里提到的"力点".“点”主要体现在point（指）和lock（锁）上，两个动作的感觉是一致的，我们lock的pose一般都摆成两手向前的动作，但其实这也是没有定规的.只要有"点"在，就可作为一个lock，而不必局限动作。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;其次，我们所说locking的“律动”updown是一个基本的身体感觉，说的具体一点的话是一个down，然后一个从小腹传递到头部的小幅度的wave，最后up。呵呵~~只能这么表达了，但这样的一个过程是很快而有弹性的，就好像人变成了一块布丁一样，QQ弹弹的.这是一个会贯穿在很多动作里的重要的小感觉.记得有一篇关于locking的文章把跳locking的舞者比喻成像上了发条的玩具，就是这样，大家可以想象一下了吧。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;第三，locking作为popping起源之一的一种舞蹈，它也常常会有一些和popping相同的特征.我们知道popping是一种制造视觉错觉的舞蹈，同样locking也会制造一些比如突然的慢镜、停顿或传动来加强视觉效果，也会有连续无规则的半拍甚至1/3拍动作来制造视觉的反差，就是大家刚才提到的"节奏感"吧。<br>
				</li>
				<li id="luyou">
					&nbsp;&nbsp;hip-hop是源自于街头的一种文化，也泛指rap（说唱乐）。hip-hop
					文化的四种表现方式包括m-cing（有节奏、押韵地说话后来演变成rap）、b-boying（街舞）、dj-ing（玩唱片及唱盘技巧）、graffiti
					writing（涂鸦艺术）。 因此rap（说 唱 乐）只是hip-hop
					文化中的一种元素，要加上其它舞蹈、服饰、生活态度等才构成完整的hip-hop文化。另外，亦衍生出嘻哈时装、嘻哈语等文化。有人争论第五元素b-box，或者街头篮球。<br>
					&nbsp;&nbsp;&nbsp;&nbsp;Hip－Hop本来是一种带有反文化倾向的亚文化形式，它的破坏性和民间性与我们传统意义上的流行文化背道而驰。它不但成为了主流文化中的重要组成部分，而且还在迅速地上升、蔓延、发展。
					究其原因，一种合理的解释是：在我们这个越来越形而下的时代，生活和娱乐需要的不仅仅是感动、纯情、高尚和严肃、我们还需要搞笑、没心没肺、下三滥和敢于藐视一切的无耻作风－－我说的是真的，主要的嘻哈参与者和受众年龄偏小，大多在1980年左右生人，这批90年代中期上中学时开始接触嘻哈文化的Hip－Hoper将作为中国嘻哈第一代成长下去。随着他们的长大，相信中国的Hip－Hop文化会越来越得到认可，就像是摇滚乐在十几年后的今天已经不再被看作异类，就像日本漫画和电子游戏正在逐渐浮出水面一样。
					Hip-Hop是种文化，并不单一指某种事物。不是说穿着大大的POLO衫，带着APE的帽子，踩着DUNK鞋，脖子上在挂条大链子就是Hip-Hop了，而更重要的为精神。
				</li>
			</ul>
		</div>
	</div>
	<div id="big_banner_wrap">
		<div id="big_banner_pic_wrap">
			<ul id="big_banner_pic">
				<li><img src="${ctx}/resources/images/popping160x110.jpg"
					height="460" width="1226"></li>
				<li><img src="${ctx}/resources/images/wu160x110.jpg"
					height="460" width="1226"></li>
				<li><img src="${ctx}/resources/images/breaking160x110.jpg"
					height="460" width="1226"></li>
				<li><img src="${ctx}/resources/images/locking160x110.jpg"
					height="460" width="1226"></li>
			</ul>
		</div>
		<div id="big_banner_change_wrap">
			<div id="big_banner_change_prev">&lt;</div>
			<div id="big_banner_change_next">&gt;</div>
		</div>
	</div>

	<div id="head_hot_goods_wrap">
		<div id="head_hot_goods_title">
			<span class="title_span">Music音乐推荐</span>
			<div id="head_hot_goods_change">
				<span id="head_hot_goods_prave"><</span> <span
					id="head_hot_goods_next">></span>
			</div>
		</div>
		<div id="head_hot_goods_content">
			<ul>
				<li><a><img src="${ctx}/resources/images/breaking160.jpg"
						height="160" width="160"></a> <a>breaking</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/popping160.jpg"
						height="160" width="160"></a> <a>popping</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/jazz160.jpg"
						height="160" width="160"></a> <a>jazz</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/locking160.jpg"
						height="160" width="160"></a> <a>locking</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/hiphop160.jpg"
						height="160" width="160"></a> <a>hiphop</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/breaking160.jpg"
						height="160" width="160"></a> <a>breaking</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/jazz160.jpg"
						height="160" width="160"></a> <a>jazz</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/popping160.jpg"
						height="160" width="160"></a> <a>popping</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/hiphop160.jpg"
						height="160" width="160"></a> <a>hiphop</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/locking160.jpg"
						height="160" width="160"></a> <a>locking</a> <a>音乐名称</a></li>
			</ul>
		</div>
	</div>
	<div id="main_show_box">
		<div id="floor_1">
			<div id="floor_head">
				<span class="title_span">Video视频推荐</span>
			</div>
		</div>
		<div class="floor_img">
			<img src="${ctx}/resources/images/left234x614.jpg" height="614"
				width="234">
		</div>
		<div class="floor_goods_wrap">

			<ul>
				<c:forEach items="${vlist}" var="video">
					<li class="floor_goods_wrap_li"><a class="floor_goods_img im">
							<img src="${ctx}/resources/images/${video.videoType}160x160.jpg"
							height="220" width="230">
					</a> <a class="floor_goods_tit vn">${video.videoName}</a> <a
						class="floor_goods_price">diko</a>
						<a ><img src="${ctx}/resources/images/down.png" height="20" width="20"></a></li>
				</c:forEach>
			</ul>

			<div style="clear: both;"></div>
		</div>

		<div class="flex" id="vi">
			<div class="close">
				<a> <img src="${ctx}/resources/images/offButton.jpg" alt=""
					class="offbutton">
				</a>
			</div>
			<div class="flex_box">
				<video width="440" height="340" controls="controls" id="myvideo">
				<source src="${ctx}/resources/videos/56.mp4" type="video/mp4" id="so"></source>
				</video>
			</div>
		</div>
	</div>
	<div id="foot_box" align="center">
		<h4>版权：魏辉</h4>
	</div>
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
	<script type="text/javascript">
		$(function() {
		//	$("#vi").hide();
			$(".im").each(function(i,m) {
				//alert($(m).next().text());
				$(m).click(function() {
					//alert($("#so").attr("src"))
					$("#so").attr("src","${ctx}/resources/videos/"+$(m).next().text());
					alert("${ctx}/resources/videos/"+$(m).next().text()==$("#so").attr("src"));
				//	$("#vi").show();
					
				});
			});
			$(".vn").each(function(i,vn) {
				$(vn).click(function() {
					alert("${ctx}/resources/videos/"+$(vn).text()==$("#so").attr("src"));
					//$("#so").attr("src","${ctx}/resources/videos/"+$(vn).text());
					$("#vi").load();
					$("#vi").show();
				});
			});
			$("#ce").hide();
			$("#we").hide();
			if ("${sessionScope.loginuser.loginName }" != "") {
				// alert("${sessionScope.loginuser.loginName }");
				$("#we").show();
				$("#login").hide();
				$("#register").hide();
				$("#ce").show();
			}
			if ("${sessionScope.teamuser.danceTeamName }" != "") {
				$("#ce").children().text("舞团中心");
				$("#ce").children().attr("href", "${ctx}/danceTeam/teamCenter");
				$("#we").children().children().text(
						"${sessionScope.teamuser.danceTeamName }欢迎你");
				$("#we").show();
				$("#login").hide();
				$("#register").hide();
				$("#ce").show();
			}
		});
	</script>
</body>
</html>