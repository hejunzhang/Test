<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>北京酷房网 - 会员登录注册</title>
<meta name="keywords" content="北京二手房,北京租房,北京买房 " />
<meta name="description" content="北京酷房网提供最新、最真实、海量全面的北京房源信息为目标。为用户量身打造北京二手房及北京房屋出租信息数据库服务、小区房价服务、多图房源服务、地图找房服务等。同时为用户提供全面的线上线下交易流程指导，为用户带来权威二手房的服务体验。 "/>
<link rel="stylesheet" type="text/css" href="http://beijing.koofang.com/css/revision_top.css" />
<link rel="stylesheet" type="text/css" href="http://beijing.koofang.com/css/revision.css" />
<link rel="Shortcut Icon" href="http://beijing.koofang.com/favicon.ico">
<script type="text/javascript" src="http://beijing.koofang.com/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="http://beijing.koofang.com/js/check3g.js"></script>
<script type="text/javascript">
var siteurl = "http://beijing.koofang.com/";
$(document).ready(function(){
	$.ajax({   
		type:"get",   
		dataType:"html",
		data:"data="+Math.random(),
		url:siteurl+"member_login_info.php",
		success:function(data){
			$("#member_login_info").html(data)
		}
	});
	//看房手记-李坤
	//已经改成静态，暂时注释从论坛数据库调取数据
	$.ajax({   
		type:"get",   
		dataType:"html",
		data:"data="+Math.random(),
		url:siteurl+"kanfangshouji.php",
		success:function(data){
			if (data != '')
			{
				$("#kanfangshouji").html(data)
			}
		}
	});

	var menuYloc = $(".goTopBtn_mainfei").offset().top;     		
	//var menuYloc1 = $("#goTopBtn_adv").offset().top;     		
	$(window).scroll(function () { 		
		var offsetTop = (menuYloc-75) + $(window).scrollTop() +"px";
		//var offsetTop1 = (menuYloc1-75) + $(window).scrollTop() +"px";
	  	$(".goTopBtn_mainfei").animate({top : offsetTop },{ duration:0 , queue:false });	
	  	//$("#goTopBtn_adv").animate({top : offsetTop1 },{ duration:0 , queue:false });	
	  });
});

function secrch05(menu)
{
	if (menu == '')menu = 'sale';
	$("#topsearch").attr('action', siteurl+menu+'/');
	$("#topmenu-1 li").each(function()
	{
		$(this).attr('class','secrch_edtitle');
	});
	$("#headq").val($("#stitle_"+menu).val());
	$("#stitle").val($("#stitle_"+menu).val());

	$("#secrch_"+menu).attr('class','secrch_title');
}
function hideDivOfficeCshop(id,n)
{
	$("#officeDiv").hide();
	$("#cshopDiv").hide();
	if (n > 0)
	{
		$("#"+id).show();
	}else
	{
		$("#"+id).hide();
	}
}
var browserEvent = function (obj, url, title) {
    var e = window.event || arguments.callee.caller.arguments[0];
    var B = {
        IE : /MSIE/.test(window.navigator.userAgent) && !window.opera
        , FF : /Firefox/.test(window.navigator.userAgent)
        , OP : !!window.opera
    };
    obj.onmousedown = null;
    if (B.IE) {
        obj.attachEvent("onmouseup", function () {
            try {
                window.external.AddFavorite(url, title);
                window.event.returnValue = false;
            } catch (exp) {
				alert('您的浏览器不支持收藏功能！');
				}
        });
    } else {
        if (B.FF && obj.nodeName.toLowerCase() == "a") {
            obj.setAttribute("rel", "sidebar"), obj.title = title, obj.href = url;
        } else if (B.OP) {
            var a = document.createElement("a");
            a.rel = "sidebar", a.title = title, a.href = url;
            obj.parentNode.insertBefore(a, obj);
            a.appendChild(obj);
            a = null;
        }else
		{
			alert('您的浏览器不支持收藏功能！');
		}
    }
};
</script>
<script type="text/javascript">
function show_img(){
	document.getElementById('city_01').style.display="block";
	}
	function hid_img(){
	document.getElementById('city_01').style.display="none";
	}
</script>
<style type="text/css">
.letter_fram_mian{ width:400px; height:100px; border:solid 1px #CCC; position:relative; display:none;background:white;z-index:1000;}
.letter_fram_top_bg{ height:21px; background:url(../member/images/letter_top_bg.jpg) repeat-x;}
.letter_fram_mian_x{ background:url(../member/images/main_top_xx.jpg)  no-repeat; width:12px; height:12px; position:absolute;z-index:100; top:4px; left:385px;}
.letter_fram_cent_ne{ padding:18px 15px 6px 52px;}
.letter_fram_cent_btn{ background:url(../member/images/letter_xin_btn.jpg) no-repeat; width:32px; height:25px;}
.letter_fram_cent_ne td{ height:25px; font-size:12px; color:#595959; line-height:25px; vertical-align:middle;}
.letter_fram_cent_bott{ width:400px; height:20px;  }
.letter_fram_cent_bott span{ display:block; float: left; }
.letter_fram_cent_bott_img{background:url(../member/images/search_img_small.jpg) no-repeat right;width:340px; height:20px;}
.letter_fram_cent_bott a{ color:#919191; font-size:12px; width:50px; display:block; text-align:center; text-decoration:none; padding-top:0px;}
.letter_fram_cent_bott a:hover{ text-decoration:underline;}
</style>

<LINK href="http://beijing.koofang.com/themes/koofang/css/login.css" rel=stylesheet>
<LINK href="http://beijing.koofang.com/themes/koofang/css/free.css" rel=stylesheet>

<link rel="stylesheet" type="text/css" href="http://beijing.koofang.com/common/js/Autocompleter/jquery.LKsearch.js" />
<script src="http://beijing.koofang.com/js/LKsearch_index.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="http://beijing.koofang.com/common/js/Autocompleter/jquery.LKsearch.css" />
<script language =javascript > 
var curIndex=0; 
var timeInterval=3000; 
var arr=new Array(); 
var imgLink=new Array()
arr[0]="http://beijing.koofang.com/images/nianhui_banner.jpg"; 
arr[1]="http://beijing.koofang.com/images/nianhui_banner.jpg";
  imgLink[0]="http://beijing.koofang.com/bjzt/2013nianhui/";
  imgLink[1]="http://www.century21cn.com/zhuanti/2013nianhui/";
//  imgLink[0]="http://beijing.koofang.com/bjzt/jinsechengnuo.html";
//  imgLink[1]="http://www.century21cn.com/zhuanti/2013nianhui/";
//setInterval(changeImg,timeInterval);
function changeImg() 
{ 
    var obj=document.getElementById("obj"); 
	
    if (curIndex==arr.length-1)  
    { 
        curIndex=0; 
	
    } 
    else 
    { 
        curIndex+=1;
	
    } 
	
    obj.src=arr[curIndex]; 

} 
  function goUrl(){
  window.open(imgLink[curIndex],'_blank');
  } 
</script>
</head>
<body>
<form action="login" method="post">
	用户名:<input type="text" name="user.name"/><br />
	密码:<input type="password" name="user.password"/><br />
	<input type="submit" value="登录" />
</form>
<script>
	(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({"gtm.start":new Date().getTime(),event:"gtm.js"});
	var f=d.getElementsByTagName(s)[0],j=d.createElement(s),dl=l!="dataLayer"?"&l="+l:"";
	j.async=true;j.src="//www.googletagmanager.com/gtm.js?id="+i+dl;f.parentNode.insertBefore(j,f);
	})
	(window,document,"script","dataLayer","GTM-PSL5QM");
</script>
<!-- End Google Tag Manager -->
<!--top-->
<div class="hd">
  <div class="topbg">
    <div class="pub_top">
      <div class="pub_top_sub">
            <div class="top_sub_left"> 
                 <span class="beijing">北京</span>
               <span class="top_icon_s" onmouseover="show_img();" onmouseout="hid_img();">[<a href="http://www.koofang.com/?action=select">切换城市</a>]
                 <div class="documen_city" style="display:none;" id="city_01" >
                 <ul>
                 <li><a href="http://shanghai.koofang.com">上海</a></li>
                 <li><a href="http://shenzhen.koofang.com/">深圳</a></li>
                 <li><a href="http://chengdu.koofang.com/">成都</a></li>
                 <li><a href="http://jinan.koofang.com/">济南</a></li>
                 <li><a href="http://xian.koofang.com/">西安</a></li>
<!--		 <li><a href="http://wuhan.koofang.com/">武汉</a></li>-->
                 </ul>
                 </div>
                 </span>
                <span class="top_lsogan">好房从21世纪不动产酷房网开始</span>
               
                </span>
            </div>
            <div class="top_right" id="member_login_info"></div>

      </div>
    </div>
  </div> 

     <div class="header" style="position:relative;">
  <a class="goTopBtn_mainfei" href="http://zz.c21ax.com"  target="_blank" style="display:block;top: 204px;background: url(../images/mianfei_up.gif) no-repeat scroll 0 0 transparent;height: 250px;left: 980px;position: absolute;width: 56px;z-index: 1000000001;">&nbsp;</a>
  <a class="goTopBtn_mainfei" href="http://beijing.koofang.com/bjzt/zhaopin/index.html"  target="_blank" style="top:204px;background: url(../images/zp1.jpg) no-repeat scroll 0 0 transparent;height: 220px;left: -70px;position: absolute;width: 45px;">&nbsp;</a>
    <div class="logo"><a href="http://beijing.koofang.com/"><img src="http://beijing.koofang.com/images/new_logo_img.jpg" width="283" height="57" alt="酷房网" title="好房从酷房网开始" /></a></div>
    <div class="secrch_left"><img src="http://beijing.koofang.com/images/top_shang_hai_div.jpg" width="512" height="88" /></div>
    </div>
  <div class="navbox">
  <div class="nav">
    <ul>
      <li><a href="http://beijing.koofang.com/" class="nav_atwo" >首页</a></li>
      <li><a href="http://beijing.koofang.com/sale/" class="nav_athree" >二手房</a></li>
      <li><a href="http://beijing.koofang.com/rent/" class="nav_atwo" >租房</a></li>
      <li><a href="http://beijing.koofang.com/house/" class="nav_athree" >新房热卖</a></li>
	    <li class="nav_new_channer"><img src="http://beijing.koofang.com/images/new_channer.png" width="22" height="14" alt="酷房网" title="好房从酷房网开始" /></li>
      <li><a href="http://beijing.koofang.com/community/" class="nav_atwo" >小区</a></li>
         <li><a href="http://beijing.koofang.com/feature/" class="nav_afour" >特色找房</a></li>
      <li><a href="http://beijing.koofang.com/broker/" class="nav_athree" >经纪人</a></li>
      <li><a href="http://bbs.koofang.com" class="nav_athree" target="_blank" >酷社区</a></li>
    </ul>
    <span class="delegation_me"><a href="http://beijing.koofang.com/weituo/" class="z_width_100" target="_blank"><img src="http://beijing.koofang.com/images/I_want_to_delegate_btn.jpg" width="88" height="22" /></a><a href="http://jincheng.c21ax.com:8010/" class="z_width_188p" target="_blank"><img src="http://beijing.koofang.com/images/jiao_yi.png" width="118" height="23" /></a></span>
  </div>
</div>
</div>
<!--top end-->
<div class="clear"></div><script src="http://beijing.koofang.com/special/thejs/jquery.js" type="text/javascript"></script>
<script src="http://beijing.koofang.com/special/thejs/jquery-ui.js" type="text/javascript"></script>
<link href="http://beijing.koofang.com/special/thejs/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function submitLoginForm()
{
	var username   = $("#login_username").val();
	var password   = $("#login_passwd").val();
    var reg = /^1[358]\d{9}$/;   
    if(!reg.test(username)){
		$("#error_text").html('请输入正确的手机号');
		return false;
    }
	if (username == '' || password == '')
	{
		$("#error_text").html('请将用户名密码输入完整!');
		return false;
	}else
	{
		var data = $("#loginform").serialize();
		$.ajax({
				type:"post",   
				dataType:"json",
				data:data,
				url:siteurl+"login/register.php?action=login",
				success:function(data){
					if (data.code == 1)
					{
						window.location = data.url;
					}else
					{
						$("#error_text").html(data.msg);
					}
				}
			});
	}
	return false;
}

function submitRegisterForm()
{
	var uname      = $("#uname").val();
	var password   = $("#password").val();
	var repassword = $("#repassword").val();
	var phone      = $("#phone").val();
	var code       = $("#code").val();
	var checkbox   = $(":checkbox:checked").val();
    if(checkbox != 1){
    	alert('请你确认已同意《酷房会员注册协议》');
		return false;
    }
	if (uname == '' || password == ''){
		alert('请将用户名密码输入完整!');
		return false;
	}
	if(code == ''){
		alert('请输入验证码');
		return false;
	}
    if(password != repassword){
		alert('您两次输入的密码不一致');
		return false;
    }
    var reg = /^1[358]\d{9}$/;   
    if(!reg.test(phone)){
		alert('请输入正确的手机号');
		return false;
    }
	var data = $("#registerform").serialize();
		$.ajax({
				type:"post",   
				dataType:"json",
				data:data,
				url:siteurl+"login/register.php?action=register",
				success:function(data){
					if (data.code == 1){   
						alert('恭喜您注册成功');
						window.location = data.url;
					}else{
						alert(data.msg);
					}
				}
			});
	return false;
}

function checkForm(){
    var data = 'verify='+$("#verify").val();
	$.ajax({
		type:"post",   
		dataType:"json",
		data:data,
		url:siteurl+"login/register.php?action=checkcode",
		success:function(data){
			if(data.code != 0){
				alert(data.msg);
			}else{
				var ab = document.getElementById('getCode');
				getCode(ab);
				
			}
		}
	});
	return false;
}
function getCode(o){
	var phone = $("#phone").val();
    var reg = /^1[358]\d{9}$/;   
    if(!reg.test(phone)){
		alert('请输入正确的手机号');
		return false;
    }

    var data = 'phone='+phone;
	$.ajax({
		type:"post",   
		dataType:"json",
		data:data,
		url:siteurl+"login/register.php?action=getcode",
		success:function(data){
			if(data.code != 0){
			$( "#success" ).dialog( "close" );
				alert(data.msg);
				
			}else{
			   $( "#success" ).dialog( "close" );
			    time(o);
			}
		}
	});
	return false;
}
	var wait=60;  
function time(o) { 
         if (wait == 0) {
             o.removeAttribute("disabled");           
            o.value="免费获取验证码";
             wait = 60;
         } else {
             o.setAttribute("disabled", true);
             o.value="重新发送(" + wait + ")";
             wait--;
             setTimeout(function() {
                 time(o)
             },
             1000)
         }
     }
function showBoxTag(){	
	$("#success").dialog({
		width: 230,
		height: 110,
		modal: true,
		open: function() {
		$(".ui-dialog-titlebar").hide();
		 $('.ui-widget-content ').css('overflow','hidden');
		 $(window).scroll(function(){
		 var scrolldis = $(document).scrollTop();
		 $('.ui-dialog').css({top: ($(window).height()/2+scrolldis-50)+'px'});
		});
		}

	});
}
</script>
<div class="registration">
<div class="Free_registration">
 <form onsubmit="return submitLoginForm()" action="http://beijing.koofang.com/login/register.php" method="post" name="loginform" id="loginform">
<h2>已有账号，请登录</h2>
<ul>
<div style="height:15px; padding:5px 5px 10px 145px; color:#F00;" id="error_text"></div>
<li class="free_registration_li1">用 户 登 录</li>
<li class="free_registration_li2"><span class="free_registration_li2_span1">手机号</span><span><input name="username" id='login_username' type="text" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li2"><span class="free_registration_li2_span1">密码</span><span><input name="passwd" id='login_passwd' type="password" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li3"><input type="image" src="http://beijing.koofang.com/images/denglv_free.png" width="113" height="32" style="display:block;float:left;" /><!-- <a href="#" style="margin-left:10px; width:60px;">忘记密码</a> --></li>
</ul>
</form>
</div>

<div class="User_login">
 <form onsubmit="return submitRegisterForm()"  action="http://beijing.koofang.com/login/register.php" method="post" name="registerform" id="registerform">
<h2>免费注册</h2>
<ul>
<li class="free_registration_li4"><span class="width_140">用户名：</span><span><input name="uname" id="uname" type="text" class="free_registration_li2_input1" /></span></li>

<li class="free_registration_li4"><span class="width_140">密码：</span><span><input name="password" id="password" type="password"class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li4"><span class="width_140">确认密码：</span><span><input name="repassword" id="repassword" type="password" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li4"><span class="width_140">手机号码：</span><span><input name="phone" id="phone" type="text" maxlength="11" class="free_registration_li2_input1" /></span><span style="padding-left:5px;"><input style="width:100px;height:28px;" name="" id="getCode" onclick="showBoxTag();" type="button" value="免费获取验证码" /></span></li>
<li class="free_registration_li4"><span class="width_140">手机验证码：</span><span><input style="width:69px;" name="code" id="code" maxlength="6" type="text" class="free_registration_li2_input1" /></span><span style="padding-left:5px;">若一分钟后仍未收到验证码短信，请点击重发</span></li>
<li class="free_registration_li5"><input name="check" type="checkbox" id="check" value="1" style="padding-top:3px;" /> 我已阅读并同意<a href="http://beijing.koofang.com/about/treaty.php" target="_blank">《酷房会员注册协议》</a>
</li>
<li class="free_registration_li5" style="margin-top:15px;"> <input type="image"src="http://beijing.koofang.com/images/tongyiandtijiao.png" width="113" height="32" /></li>

</ul>
</form>
</div>
</div>

<div id="success" style="width: 230px; border: 1px solid #ccc; height: 80px; background: #fff;display:none;"> 
<form method='post' action='register.php?action=checkcode' onsubmit="return checkForm()" name="checkform" id="checkform">
<div style="margin-top: 23px; margin-left: 15px; float:left;">
    <input type="text"  id="verify" name="verify" class="text" style="width: 70px; border: 1px solid #ccc; height: 23px; line-height: 23px;" />
</div>
<div style="width: 70px; height: 25px; margin-top: 23px; margin-left: 8px; float:left">
<img style="cursor:pointer" title="刷新验证码" id="refresh" border='0' src='http://beijing.koofang.com/imagecode.php' onclick="document.getElementById('refresh').src='http://beijing.koofang.com/imagecode.php?t='+Math.random()"/> 
</div>
<div style="margin-top: 23px;margin-left: 8px; float:left">
<button type='submit'>确定</button>  
</div>
</form>  
</div>

<!--content end-->
<div class="foot"><a href="http://beijing.koofang.com/about/index.php" target="_blank" rel="nofollow">关于我们</a>  |  <a href="http://beijing.koofang.com/about/hr.php" target="_blank" rel="nofollow">人才招聘</a>  |  <a href="http://beijing.koofang.com/about/treaty.php" target="_blank" rel="nofollow">用户协议</a>  |  <a href="http://beijing.koofang.com/about/copyright.php" target="_blank" rel="nofollow">版权声明</a>  |  <a href="http://beijing.koofang.com/about/state.php" target="_blank" rel="nofollow">免责声明</a>  |  <a href="http://beijing.koofang.com/sitemap.html" target="_blank">网站地图</a>  <!-- |  <a href="http://beijing.koofang.com/wiki/" target="_blank">房产百科</a> -->  |  <a href="http://bbs.koofang.com/forum-17-1.html" target="_blank" rel="nofollow">投诉与建议</a>

<br />
<div class="foot_01">ICP号：京ICP备<a href="http://www.miibeian.gov.cn/" target="_blank"> 10023333号 </a></div>
<div class="foot_01">
酷房二手房：  
<a href="http://beijing.koofang.com" target="_blank">北京二手房</a> | 
<a href="http://shanghai.koofang.com" target="_blank">上海二手房</a> | 
<a href="http://shenzhen.koofang.com" target="_blank">深圳二手房</a> |
<a href="http://chengdu.koofang.com" target="_blank">成都二手房</a> | 
<a href="http://xian.koofang.com" target="_blank">西安二手房</a> |
<a href="http://www.c21ax.com/" target="_blank">北京安信瑞德</a> |
<a href="http://www.c21ruifeng.com/" target="_blank">上海锐丰</a></div>
<div class="foot_02">Copyright &copy; 2010 www.koofang.com  All Rights Reserved</div>
<div class="foot_02">酷房网 - <span style="font-weight:bold;color:##646464;">北京二手房</span>网 版权所有</div><br /><br />
<!--<img src="images/foot1.jpg" width="110" height="41" />&nbsp;<img src="images/foot2.jpg" width="113" height="41" />&nbsp;<img src="images/foot3.jpg" width="110" height="41" />-->
</div>
<div style="display:none;">
<script type="text/javascript" src="http://beijing.koofang.com/all_pv.php?id=1395461070"></script>


<script src="http://s17.cnzz.com/stat.php?id=2532911&web_id=2532911" language="JavaScript"></script>


<script type="text/javascript">
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F09a1f73f7f021967778d03104791a4a3' type='text/javascript'%3E%3C/script%3E"));
var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fd5a38749be263704e34263d6861bd0b5' type='text/javascript'%3E%3C/script%3E"));
</script>
<!-- START WRating v1.0 -->
<!--<script type="text/javascript" src="http://c.wrating.com/a1.js">
</script>
<script type="text/javascript">
var vjAcc="860010-2349010100";
var wrUrl="http://c.wrating.com/";
vjTrack("");
</script>
--><noscript><img src="http://c.wrating.com/a.gif?a=&c=860010-2349010100" width="1" height="1"/></noscript>
<!-- END WRating v1.0 -->
</div>
<script type="text/javascript" src="http://t.uctrac.com/js/tc.js"></script>
<script type="text/javascript">
try{
    $uctrac.init();
    $uctrac.logConv(); 
}catch(err){}
</script>
</body>
</html>