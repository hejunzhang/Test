function uaredirect(f){try{if(document.getElementById("bdmark")!=null){return}var b=false;if(arguments[1]){var e=window.location.host;var a=window.location.href;if(isSubdomain(arguments[1],e)==1){f=f+"/#m/"+a;b=true}else{if(isSubdomain(arguments[1],e)==2){f=f+"/#m/"+a;b=true}else{f=a;b=false}}}else{b=true}if(b){var c=window.location.hash;if(!c.match("fromapp")){if((navigator.userAgent.match(/(iPhone|iPod|Android|ios)/i))){location.replace(f)}}}}catch(d){}}function isSubdomain(c,d){this.getdomain=function(f){var e=f.indexOf("://");if(e>0){var h=f.substr(e+3)}else{var h=f}var g=/^www\./;if(g.test(h)){h=h.substr(4)}return h};if(c==d){return 1}else{var c=this.getdomain(c);var b=this.getdomain(d);if(c==b){return 1}else{c=c.replace(".","\\.");var a=new RegExp("\\."+c+"$");if(b.match(a)){return 2}else{return 0}}}};

var mobielUrl="http://m.koofang.com";
mobielUrl+= "/" + getcity() + getSecondLevel();
uaredirect(mobielUrl);

function getcity()
{
	var urlHeader=window.location.href.substr(7); 	// 先去掉http://部分
	urlArry=urlHeader.split(".");
	var theCity="";
	switch(urlArry[0])
	{
		case "beijing":
		{
			theCity="beijing";
			break;
		}
		case "shanghai":
		{
			theCity="shanghai";
			break;
		}
		case "shenzhen":
		{
			theCity="shenzhen";
			break;
		}
		case "chengdu":
		{
			theCity="chengdu";
			break;
		}
		case "xian":
		{
			theCity="xian";
			break;
		}
		case "jinan":
		{
			theCity="jinan";
			break;
		}
	}
	return theCity;
}

function getSecondLevel()
{
	var secondExt="";
	var allExt=window.location.href.substr(window.location.host.length + 7);
	extArry=allExt.split("/");
	for(i=0;i<extArry.length;i++)
	{
		if(extArry[i].toLowerCase()=="sale")
		{
			secondExt="/kooroomlistsale.html?action=search&busitype=sale&searchkey=";
			break;
		}
		if(extArry[i].toLowerCase()=="rent")
		{
			secondExt="/kooroomlistsale.html?action=search&busitype=rent&searchkey=";
			break;
		}
	}
	return secondExt;	
}