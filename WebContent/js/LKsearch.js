$(document).ready(function(){
	if ($("#headq").length>0){
		var stitle = $("#stitle").val();
		$('#headq').focus(function(){
			var z = $('#headq').val();
			if(z==stitle){
				$('#headq').val('');
			}
		}).blur(function(){
			var z = $('#headq').val();
			if(z==''){
				$('#headq').val(stitle);
			}
		});
		$("#headq").autocomplete("/LKsearch.php",{width:472,scrollHeight:400,max:15,selectFirst:true})
	}
});

function theSelect(n)
{
	$('#headq').val($("#value"+n).html());
	$("#topsearch").submit();
}

function allPrpos ( obj ) {
  // 用来保存所有的属性名称和值
  var props = "" ;
  // 开始遍历
  for ( var p in obj ){ // 方法
  if ( typeof ( obj [ p ]) == " function " ){ obj [ p ]() ;
  } else { // p 为属性名称，obj[p]为对应属性的值
  props += p + " = " + obj [ p ] + " /t " ;
  } } // 最后显示所有的属性
  alert ( props ) ;
}