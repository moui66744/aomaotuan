$(function() {
	$('#jiesuan').click(function(event) {
		var checklist = document.getElementsByClassName("lincheck");//获取所有ClassName值为lincheck的标签
		var goodsIdList=new Array();
		var goodsNumList=new Array();
		for(var j=0;j<checklist.length;j++){
			 if($(checklist[j]).hasClass("checked")){
				 var idd=checklist[j].id.toString();
				 goodsIdList.push(checklist[j].id.toString());
				 goodsNumList.push($('#num'+checklist[j].id.toString()).val());
			 }
		 }
		
		
		qujiesuan(goodsIdList,goodsNumList);
		
	});
	
	function qujiesuan(goodsIdList,goodsNumList){
  	   $.ajax({
  		  "url":"AjaxShopitemsToOrdersController",
  		  "data":{"goodsIdList":JSON.stringify(goodsIdList),"goodsNumList":JSON.stringify(goodsNumList)},//以json的进行传递数据（前端 -》servlet）
  		  "type":"post",
		  "dataType":"json",
		  "traditional":true,
  		  "success":function(data){
  			
  				location.href ="RecipientsInCartIndentController.do?sumPrice="+$("#mysumprice").text();
  		  },
  		"error":function(error){
//			  alert(error);
		  }
  	   })
	}
	
});