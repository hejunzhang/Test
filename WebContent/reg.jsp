<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>北京酷房网 - 会员登录注册</title>
<meta name="keywords" content="北京二手房,北京租房,北京买房 " />
<meta name="description" content="北京酷房网提供最新、最真实、海量全面的北京房源信息为目标。为用户量身打造北京二手房及北京房屋出租信息数据库服务、小区房价服务、多图房源服务、地图找房服务等。同时为用户提供全面的线上线下交易流程指导，为用户带来权威二手房的服务体验。 "/>
<link rel="stylesheet" type="text/css" href="css/revision_top.css" />
<link rel="stylesheet" type="text/css" href="css/revision.css" />
<link rel="Shortcut Icon" href="http://beijing.koofang.com/favicon.ico">
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/check3g.js"></script>

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

<LINK href="css/login.css" rel=stylesheet>
<LINK href="css/free.css" rel=stylesheet>

<link rel="stylesheet" type="text/css" href="js/Autocompleter/jquery.LKsearch.js" />
<script src="js/LKsearch_index.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="js/Autocompleter/jquery.LKsearch.css" />

</head>
<body>
<!--top-->
<div class="hd">
  <div class="topbg">
    <div class="pub_top">
      <div class="pub_top_sub">
            <div class="top_right" id="member_login_info"></div>
      </div>
    </div>
  </div> 

     <div class="header" style="position:relative;">
  	<div class="logo"><a href="http://beijing.koofang.com/"><img src="http://beijing.koofang.com/images/new_logo_img.jpg" width="283" height="57" alt="酷房网" title="好房从酷房网开始" /></a></div>
    <div class="secrch_left"><img src="http://beijing.koofang.com/images/top_shang_hai_div.jpg" width="512" height="88" /></div>
    </div>
  <div class="navbox">
  <div class="nav">
    <ul>
      <li><a href="http://beijing.koofang.com/" class="nav_atwo" >首页</a></li>
      <li><a href="http://beijing.koofang.com/sale/" class="nav_athree" >二手房</a></li>
    </ul>
  </div>
</div>
</div>
<!--top end-->
<div class="clear"></div><script src="special/thejs/jquery.js" type="text/javascript"></script>
<script src="special/thejs/jquery-ui.js" type="text/javascript"></script>
<link href="special/thejs/jquery-ui.css" rel="stylesheet" type="text/css" />

<div class="registration">
<div class="User_login">
<form onsubmit="return submitRegisterForm()"  action="http://beijing.koofang.com/login/register.php" method="post" name="registerform" id="registerform">
<ul>
<div style="height:15px; padding:5px 5px 10px 145px; color:#F00;" id="error_text"></div>
<li class="free_registration_li4"><span class="width_140">用户名：</span><span><input name="uname" id="uname" type="text" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li4"><span class="width_140">密码：</span><span><input name="password" id="password" type="password"class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li4"><span class="width_140">确认密码：</span><span><input name="repassword" id="repassword" type="password" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li4"><span class="width_140">手机号码：</span><span><input name="phone" id="phone" type="text" maxlength="11" class="free_registration_li2_input1" /></span></li>
<li class="free_registration_li5"><input name="check" type="checkbox" id="check" value="1" style="padding-top:3px;" /> 我已阅读并同意<a href="http://beijing.koofang.com/about/treaty.php" target="_blank">《酷房会员注册协议》</a>
</li>
<li class="free_registration_li5" style="margin-top:15px;"> <input type="image"src="images/tongyiandtijiao.png" width="113" height="32" /></li></li>

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
<jsp:include page="foot.jsp"></jsp:include>
</body>
</html>