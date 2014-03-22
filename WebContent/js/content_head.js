function RL_H_Set(elms, id){
	var cur = elms.id.replace(/-h/ig,"");
	for(var i=1;i<3;i++){
		document.getElementById("RL-Item-"+i).style.display="none";
		document.getElementById("RL-Item-H-"+i).className="";
	}
	elms.className = "selected";
	document.getElementById(cur).style.display="block";
}
document.cookies=new Object();
document.cookies.set=function(f,c,e,h,b){
	var d=f+"="+c;
	if(e!=null){
		var a=new Date();
		var g=a.getTime()+e;
		a.setTime(g);
		d+=";expires="+a.toGMTString()
	}
	if(h==null){
		h="/"
	}
	d+=";path="+h;
	if(b!=null){
		d+="; domain="+b
	}
	document.cookie=d;
	document.cookies[f]=c
};
function ChangeShowStyle(style){
	document.cookies.set('showstyle', style, 1000*60*60*24, '/', window.location.host);
	location.replace(location.href);
}