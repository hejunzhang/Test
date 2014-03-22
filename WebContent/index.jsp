<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<head>
<link rel="stylesheet" type="text/css" href="css/index.css"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>我的租房网</title>
<meta name="keywords" content="租房,房屋出租,合租" />
<meta name="description" content="我的租房网是全国最专业的租房网，为您提供大量的房屋出租信息，查找租房信息，了解合租信息，从我的租房网站开始。" />
<link rel="stylesheet" type="text/css" href="css/select_city.css"/>
<link rel="stylesheet" type="text/css" href="css/topnew_css.css"/>
<link rel="stylesheet" type="text/css" href="css/add.css"/>
<link rel="stylesheet" type="text/css" href="css/revision.css" />
<link rel="stylesheet" type="text/css" href="css/revision_top.css"/>
<script type="text/javascript" src="js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="js/Autocompleter/jquery.LKsearch.js" ></script>
<script type="text/javascript" src="js/LKsearch.js" ></script>
<link rel="stylesheet" type="text/css" href="js/Autocompleter/jquery.LKsearch.css" />

<script type="text/javascript" src="js/select.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/content_head.js"></script>
<script  type="text/javascript" src="js/check3g.js"></script>
</head>
<body>
<div class="hd">
  	<div class="header" style="position:relative;">
  		<div class="logo">
   			<a><img src="images/new_logo_img.jpg" width="283" height="57" alt="酷房网" title="好房从酷房网开始" /></a>
		</div>
		<div class="secrch_left">
		<span class="top_tight_thr">
			<span><img width="16" height="16" src="images/user.png"></span>
			<span class="top_tight_thr_d"><a href="reg.jsp">会员登录</a></span>
		</span>
		</div>
  	</div>
  	<div class="navbox">
  		<div class="nav">
	    	<ul>
		      <li><a href="index.jsp" class="nav_aone" >出租</a></li>
		      <li><a href="require.jsp" class="nav_atwo" >求租</a></li>
	    	</ul>
  		</div>
	</div>
</div>
<div class="clear"></div>
<div>
	<div class="clear"></div>
	<div class="new_house_find_subway">
		<div class="filter_a">
			<div>
			<LINK href="css/rent.css" rel="stylesheet">
	 		<ul id="areaDiv">
		        <li class="filterTarget">区域：</li>
		        <li class="linkOns"><a href="http://beijing.koofang.com/">不限</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c10/">朝阳</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c20/">海淀</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c21/">丰台</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c22/">东城</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c23/">西城</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c24/">崇文</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c25/">宣武</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c26/">石景山</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c27/">昌平</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c28/">通州</a></li>
			</ul>
			<ul>
				<li class="filterTarget">价格：</li>
		        <li class="linkOns"><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p0-1000/">1000元以下</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p1000-2000/">1000-2000元</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p2000-3000/">2000-3000元</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p3000-5000/">3000-5000元</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p5000-8000/">5000-8000元</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p8000-10000/">8000-10000元</a></li>
		        <li class=""><a href="http://beijing.koofang.com/rent/c1/p10000-0/">10000元以上</a></li>
	    		<form action="" method="post">
    			<li><input type="text" class="ddd" id="p1" name="p1" value="" onkeyup="this.value=this.value.replace(/[\D]/g,'');" /> - <input type="text" class="ddd" id="p2" name="p2"  value="" onkeyup="this.value=this.value.replace(/[\D]/g,'');"/> </li>
    			<li><input type="button" class="bbb" value="确定" onclick="subPrice();"> </li>
    			</form>
    			<script language='javascript'>
    				function subPrice(){
						if(document.getElementById('p1').value=='' || document.getElementById('p2').value==''){
							alert("请输入正确的价格！");
							return false;
						}	
						if(isNaN(document.getElementById('p1').value) || isNaN(document.getElementById('p2').value)){	
							alert("请输入正确的价格！");
							return false;
						}
						if(parseInt(document.getElementById('p1').value)<0 || parseInt(document.getElementById('p2').value)<=0){	
							alert("请输入正确的价格！");
							return false;
						}
						if(parseInt(document.getElementById('p1').value)>=parseInt(document.getElementById('p2').value)){	
							alert("请输入正确的价格区间！");
							return false;
						}
						var sMyStr = 'http://beijing.koofang.com/rent/c1/p0-0/';	
						var sTo = /(p[0-9]+-[0-9]+)/g;
						sMyStr = sMyStr.replace(sTo, "p"+document.getElementById('p1').value+"-"+document.getElementById('p2').value);
						window.location=sMyStr;
						}
    				</script>
				</ul>

				<ul>
					<li class="filterTarget">面积：</li>
		        	<li class="linkOns"><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a0-50/">50㎡以下</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a50-70/">50-70㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a70-90/">70-90㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a90-110/">90-110㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a110-130/">110-130㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a130-150/">130-150㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a150-200/">150-200㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a200-250/">200-250㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a250-300/">250-300㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a300-500/">300-500㎡</a></li>
	              	<li class=""><a href="http://beijing.koofang.com/rent/c1/a500-0/">500㎡以上</a></li>
              		<form action="" method="get">
				    <li><input type="text" class="ddd"  id="a1" name="a1"  value="" onkeyup="this.value=this.value.replace(/[\D]/g,'');"/> - <input type="text" class="ddd"  id="a2" name="a2"  value="" onkeyup="this.value=this.value.replace(/[\D]/g,'');"></li>
				    <li><input type="button" class="bbb" value="确定" onclick="subArea();">  </li>
    				</form>
				    <script language='javascript'>
				    function subArea(){
					if(document.getElementById('a1').value=='' || document.getElementById('a2').value==''){
						alert("请输入正确的面积！");
						return false;
					}	
					if(isNaN(document.getElementById('a1').value) || isNaN(document.getElementById('a2').value)){	
						alert("请输入正确的面积！");
						return false;
					}
					if(parseInt(document.getElementById('a1').value)<0 || parseInt(document.getElementById('a2').value)<=0){	
						alert("请输入正确的面积！");
						return false;
					}
					if(parseInt(document.getElementById('a1').value)>=parseInt(document.getElementById('a2').value)){	
						alert("请输入正确的面积区间！");
						return false;
					}
					var sMyStr = 'http://beijing.koofang.com/rent/c1/a0-0/';	
					var sTo = /(a[0-9]+-[0-9]+)/g;
					sMyStr = sMyStr.replace(sTo, "a"+document.getElementById('a1').value+"-"+document.getElementById('a2').value);
					window.location=sMyStr;
					}
				    </script>
				</ul>

				<ul>
					<li class="filterTarget">户型：</li>
			        <li class="linkOns"><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r1/">一室</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r2/">二室</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r3/">三室</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r4/">四室</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r5/">五室</a></li>
           	        <li class=""><a href="http://beijing.koofang.com/rent/c1/r6/">五室以上</a></li>
				</ul>
				<ul>
    				<li>特色标签：</li>
	        		<li class="linkOns"><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
                	<li class=""><a href="http://beijing.koofang.com/rent/c1/g1/">免中介费</a></li>
                	<li class=""><a href="http://beijing.koofang.com/rent/c1/g2/">拎包入住</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g3/">精装修</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g4/">地铁房</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g5/">钥匙房</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g6/">可办公</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g7/">无隔断</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g8/">学校周边</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g9/">空房</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g10/">可短租</a></li>
	                <li class=""><a href="http://beijing.koofang.com/rent/c1/g11/">随时看房</a></li>
				</ul>
				<div style=" clear:both;"></div> 
			</div>
		</div>
		<div class="even_more_house">
		<ul>
			<li class="even_more_house_one">更多找房条件：</li>
			<li class="even_more_house_two"><a href="javascript:void(0);" class="zhu_zai_house" id="dh1" onmouseover="dao(1);" onmouseout="hang(1);">住宅类别</a>
			<span>

			<div class="even_more_house_two_span" id="nei1" style="display:none" onmouseover="dao(1);" onmouseout="hang(1);">
			<ul>
				<li><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t1/">四合院</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t2/">公寓</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t3/">普通住宅</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t4/">别墅</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t5/">其它</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t6/">商铺</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t7/">写字楼</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t8/">合租</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/t9/">商住两用</a></li>
			</ul>
			</div>
			</span></li>

			<li class="even_more_house_two"><a href="javascript:void(0);" class="zhu_zai_house_t" id="dh4" onmouseover="dao(4);" onmouseout="hang(4);">楼层</a><span>
				<div class="even_more_house_two_span_t" id="nei4" style="display:none" onmouseover="dao(4);" onmouseout="hang(4);">
				<ul>
					<li> <a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/f1/">6层以下</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/f2/">6-12层</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/f3/">12层以上</a></li>
				</ul>
				</div>
			</span></li>

			<li class="even_more_house_two"><a href="javascript:void(0);" class="zhu_zai_house_t" id="dh6" onmouseover="dao(6);" onmouseout="hang(6);">装修</a>
			<span>
			<div class="even_more_house_two_span_t" id="nei6" style="display:none" onmouseover="dao(6);" onmouseout="hang(6);">
				<ul>
				<li><a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/zx1/">毛坯</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/zx2/">普通装修</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/zx3/">精装修</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/zx4/">豪华装修</a></li>
				<li><a href="http://beijing.koofang.com/rent/c1/zx5/"> 中等装修</a></li>
				</ul>
			</div>
			</span></li>

			<li class="even_more_house_two"><a href="javascript:void(0);" class="zhu_zai_house_t" id="dh5" onmouseover="dao(5);" onmouseout="hang(5);">配套</a>
			<span>
			<div class="even_more_house_two_span_ts" id="nei5" style="display:none" onmouseover="dao(5);" onmouseout="hang(5);">
				<ul>
				<li><input name="pt" type="checkbox" value="1" class="input_class"  />家具</li>
				<li><input name="pt" type="checkbox" value="2" class="input_class"  />家电</li>
				<li><input name="pt" type="checkbox" value="3" class="input_class"  />有线电视</li>
				<li><input name="pt" type="checkbox" value="4" class="input_class"  />宽带</li>
				<input type="button" onclick="changePt()" value="确定" name="btn" class="input_class_que" /></ul>
			</div>
			</span></li>

			<li class="even_more_house_two"><a href="javascript:void(0);" class="zhu_zai_house_t" id="dh2" onmouseover="dao(2);" onmouseout="hang(2);">发布时间</a>
			<span>
			<div class="even_more_house_two_span_t" id="nei2" style="display:none" onmouseover="dao(2);" onmouseout="hang(2);">
				<ul>
					<li> <a href="http://beijing.koofang.com/rent/c1/">不限</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/d1/">3天内</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/d2/">7天内</a></li>
					<li> <a href="http://beijing.koofang.com/rent/c1/d3/">30天内</a></li>
				</ul>
			</div>
			</span></li>
		</ul>
		</div>
		<script language="javascript" type="text/javascript">
		function dao(i){
			document.getElementById('nei'+i).style.display="block"
			}
		function hang(i){
			document.getElementById('nei'+i).style.display="none"
			}	
		</script>
	</div>
	<div style="width:970px;margin:10px auto;">
		<div class="content_erji">
  			<div class="search_box">
  				<div class="search_box_lef">
    				<div class="sear_lef">
      					<form class="for_sea" method="get" id="topsearch3" action="" onsubmit="return changekw()">
        				<div class="aaaa">
          					<input type="text" value="在结果中搜索" class="input-tip_a" id="side-search-inpu2" onfocus="if(this.value=='在结果中搜索')this.value=''" onblur="if(this.value=='')this.value='在结果中搜索'">
        				</div>
        				<button type="button" class="side_search"></button>
      					</form>
    				</div>
    				<div class="btn_search"><a href="javascript:void(0);" onclick="changekw();">搜索</a></div>
				</div>
				<div style="clear: both; height: 0pt; overflow: hidden;"></div>
			</div>
			<div id="c">
    			<div class="hdm mt10"> 
				    <dl style=" position:relative">      
				       <dd class="option1 black"><a href="http://beijing.koofang.com/rent/c1/">全部房源</a></dd>
						<dd class="option2 black"><a href="http://beijing.koofang.com/rent/c1/sw6-0/">急租</a></dd>
						<dd class="option2 black"><a href="http://beijing.koofang.com/rent/c1/sw5-0/">新推</a></dd>
						<dd class="option2 black"><a href="http://beijing.koofang.com/rent/c1/sw4-0/">热点</a></dd>
						<!--<dd class="option2 black"><a href="http://beijing.koofang.com/rent/c1/sw3-0/">多图</a></dd>-->
						<dd class="option2 black"><a href="http://beijing.koofang.com/rent/c1/sw7-0/">独家</a></dd>
				    </dl>
    			</div>
    
				<div class="filter_right">
					<table>
						<tr>
							<td align="right" class="table_td_clas"><span style="margin-right:3px;">共找到</span> <span style="color:#f56409; font-weight:bold; ">35137</span> <span style="margin-left:3px;">套符合要求的房子&nbsp;</span><span style="margin-right:6px;"><a href="http://beijing.koofang.com/rent/c1/"><img src="http://beijing.koofang.com/images/nav_two_house_er_19.jpg"/></a></span><span>第&nbsp;1&nbsp;页</span><span style=" margin-left:6px;"><a href="http://beijing.koofang.com/rent/c1/pg2/"><img src="http://beijing.koofang.com/images/nav_two_house_er_20.jpg"/></a></span></td>
						</tr>
					</table>
				</div>
  			</div>

			<div class="all_fy_bg_e"><div class="all_fy_bgl"></div></div>

			<div id=b1 style="float:left;">
				<div class="listing">
   				<!--房源-->
          			<div class="fangyuan">
            			<div class="picter">
            	 			<a href="http://beijing.koofang.com/rent/d-1001508388.html" title="世界城1居" target="_blank"><img src="http://i01.koofang.com/house/sell/2014/03/20/09/51/201403200951293zx5wv532a49a10571d_thumb.jpg" width="170" height="128" alt="21世纪官方推荐 国贸世贸天阶世界城 有钥匙 全新重新配置的"/></a>
            			</div>
            			<div class="miaoshu">
              				<p class="biaoti"><span></span><a id="biaoti_a" class="color000" href="http://beijing.koofang.com/rent/d-1001508388.html" title="世界城" target="_blank">21世纪官方推荐 国贸世贸天阶世界城 有钥匙 全新重新配置的
	      	      			</a></p>
              				<div class="xiangxi">
                				<div class="xiangxi_left">
                  					<p class="map_house"><span><a id="mh_area" href="http://beijing.koofang.com/community/si915/" title="" target="_blank">世界城</a></span>
		  							<span><a href="http://beijing.koofang.com/shop/si21946" target="_blank" >[刘树] </a></span>
		  							</p>
		  							<p></p><p class="biaoqian"></p>
                				</div>
				                <div class="xiangxi_right">
				                 	<p class="xiangxi_right_jiage"><b>10000</b><span>元/月</span></p>
				                </div>
             				</div>
              				<div class="gaikuang"><span>1室1厅丨</span> <span>76㎡丨</span> <span>朝向北丨</span> <span> 高楼层/共21层 丨</span> <span> 房龄2009年</span> 丨</span> <span> 普通装修</span></div>
            			</div>
          			</div>
          		<!--房源结束-->
				</div>
                                                                             
				<div class="multipage-div">
        			<div class="contain">
						<div class="multipage"><span  class="nolink prexpage">上一页</span><span class="current">1</span><a href="http://beijing.koofang.com/rent/c1/pg2/"><span>2</span></a><a href="http://beijing.koofang.com/rent/c1/pg3/"><span>...</span></a><a href="http://beijing.koofang.com/rent/c1/pg100/"><span>100</span></a><a href="http://beijing.koofang.com/rent/c1/pg2/" class="last_page"><span class="nextpage">下一页</span></a></div>
					</div>
        			<div class="result">共有  <span style="color:#f56409; font-weight:bold;">35137</span> 套符合要求的房子</div>
   				</div>
   			</div>
			<div style="height:12px; clear:both; overflow:hidden"></div>  
		</div>
		<div class="jpfy">
		<!--热门房源-->
			<table width="200" cellpadding="0" cellspacing="0">
				<tr height="25"><td colspan="2" class="jp_bj"><h2 style="font-size:14px;padding-left:5px; padding-top:10px;" >热门租房</h2></td></tr>
				<tr height="23">
			 	<td>
			  		<div class="jing_xia">
			    		<div class="jing_pin1">
			      			<div class="jing_img"><a href="http://beijing.koofang.com/rent/d-1001475059.html" target="_blank" title="力宝广场 108平米 大开间 可自己隔断 看房随时"> <img src="http://i01.koofang.com/house/rent/2014/03/14/08/49/20140314084943wz6w2h532252271e1a6_thumb.jpg" width="180" height="120" alt="力宝广场 108平米 大开间 可自己隔断 看房随时"/> </a> </div>
			    		</div>
			    		<div class="pric_100">
			      		<dl>
			        		<dd><a href="http://beijing.koofang.com/rent/c29/">大兴&nbsp;&nbsp;</a>  -   <a href="http://beijing.koofang.com/rent/d-1001475059.html" title="力宝广场 108平米 大开间 可自己隔断 看房随时">&nbsp;力宝广场</a></dd>
			        		<dd><span class="red_span_colo">7800元/月</span><span class="blue_span_colo">2室1厅</span><span  class="blue_span_colo">108平米</span></dd>
			      		</dl>
			    		</div>
			  		</div>
			   </td>
				</tr>
			</table>
		</div>
	</div>
</div>
<div class="lettler_div">
   酷房网北京租房网免费为广大网友提供大量出售房源信息。<br/>
   如果您有房源，还可以免费发布相关房源，感谢您对酷房网北京租房网的支持，并欢迎大家对房源信息进行监督。<br/>
</div>

<div class="foot"><a href="http://beijing.koofang.com/about/index.php" target="_blank" rel="nofollow">关于我们</a>  |  <a href="http://beijing.koofang.com/about/hr.php" target="_blank" rel="nofollow">人才招聘</a>  |  <a href="http://beijing.koofang.com/about/treaty.php" target="_blank" rel="nofollow">用户协议</a>  |  <a href="http://beijing.koofang.com/about/copyright.php" target="_blank" rel="nofollow">版权声明</a>  |  <a href="http://beijing.koofang.com/about/state.php" target="_blank" rel="nofollow">免责声明</a>  |  <a href="http://beijing.koofang.com/sitemap.html" target="_blank">网站地图</a>  <!-- |  <a href="http://beijing.koofang.com/wiki/" target="_blank">房产百科</a> -->  |  <a href="http://bbs.koofang.com/forum-17-1.html" target="_blank" rel="nofollow">投诉与建议</a>
  	<br />
	<div class="foot_02">Copyright &copy; 2010 www.koofang.com  All Rights Reserved</div>
	<div class="foot_02">酷房网 - <span style="font-weight:bold;color:##646464;">北京二手房</span>网 版权所有</div><br /><br />
</div>
</body>
</html>