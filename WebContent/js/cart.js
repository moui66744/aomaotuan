$(function() {
//	$('.Allcheck').click(function(event) {
////		alert(2);
//		selectAll();
//	});
	// 购物车的复选框全选
	
	
	$('.Allcheck').click(function(event) {
//		var checklist = document.getElementsByClassName("lincheck");//获取所有name值为selected的标签
//		checklist[1].checked = true;
//		 alert(checklist[1].checked);
		if ($(this).hasClass('checked')) {
			
			$(this).removeClass('checked');
			$('.indent .checkbox').removeClass('checked');
			
			setTotal(); 
		}else{
			$(this).addClass('checked');
			$('.indent .checkbox').addClass('checked');
			setTotal(); 
		}
	});
	$('.lincheck').click(function(event) {
			if ($(this).hasClass('checked')) {
				/*alert($(this).hasClass('checked'));*/
				$(this).removeClass('checked');
				$('.Allcheck').removeClass('checked');
				setTotal(); 
			} else{
				$(this).addClass('checked');
				var flag = 1;
				$(".lincheck").each(function(){
        			if(!$(this).hasClass("checked")){
              		flag = 0;
        			}
				});
				if(flag == 0){
    				$(".Allcheck").removeClass("checked");
				}else{
      				$(".Allcheck").addClass("checked");

				}
				setTotal(); 
				/*alert("check-set");*/
			};
	});

//function selectAll(){
////	alert(3);
//	 var checklist = document.getElementsByClassName("lincheck");//获取所有name值为selected的标签
//	 
//	 checklist[1].checked = true;
//	 alert(checklist[1].checked);
//	 if(document.getElementsByClassName("Allcheck checkbox").checked == true){//判断当id为controlAll的标签是否被选中
//		 alert(1);
//		 for(var i=0;i<checklist.length;i++){ 
//			 checklist[i].checked = true;//当被选中时，则获取所有name值为selected的标签都被选中
//			 setTotal(); 
//		 } 
//	 }else{
//		 for(var j=0;j<checklist.length;j++){
//			 checklist[j].checked = false;//当不被选中时，则获取所有name值为selected的标签都不被选中
//			 setTotal(); 
//		 }
//	 }
//}
	
//	$('.lincheck').click(function(event) {
////		
//			if ($(this).hasClass('checked')) {
//				$(this).removeClass('checked');
//				$('.Allcheck').removeClass('checked');
//				setTotal(); 
//			} else{
//				alert(1);
//				$(this).addClass('checked');
//				var flag = 1;
//				$(".lincheck").each(function(){
//        			if(!$(this).hasClass("checked")){
//              		flag = 0;
//        			}
//				});
//				if(flag == 0){
//    				$(".Allcheck").removeClass("checked");
//				}else{
//      				$(".Allcheck").addClass("checked");
//
//				}
//				setTotal(); 
//			};
//	});

	// 删除
	$('.IAbdw .delet').click(function(event) {
		$(this).parentsUntil('.IAbdArea').remove();
	});
	// 购物车金额结算
	$('.IAul .reduce').click(function(event) {
		var n=parseFloat($(this).siblings('input').val());
		n--;
		if (n<0) {
			n=0;
		}
		$(this).siblings('input').val(n);
		var onePreice=parseFloat($(this).parent('.num').siblings('.price').find('u').html());
		var OlAll=n*onePreice;
		$(this).parent('li').siblings('.Lastprice').children('u').html(OlAll);
		console.log(OlAll);
		setTotal(); 
	});
	$('.IAul .add').click(function(event) {
		var n=parseFloat($(this).siblings('input').val());
		n++;
		$(this).siblings('input').val(n);
		var onePreice=parseFloat($(this).parent('.num').siblings('.price').find('u').html());
		var OlAll=n*onePreice;
		$(this).parent('li').siblings('.Lastprice').children('u').html(OlAll);
		setTotal(); 
	});
	
//	function test(){     
//		var mylist=[];
//		
////		var s =document.getElementById("txt");
//		
//		$(".IAbdArea .IAbdw").each(function(){ 
//			if ($(this).find('.lincheck').hasClass('checked')) {
//				mylist=mylist.push($(this).val());
////				s+=parseInt($(this).find('.Lastprice u').html());
////				nu+=parseInt($(this).find('.num input').val());
////				guanshui+=parseInt($(this).find('.IAtax u').html());
//			} else{
//				mylist=mylist;
////				s=s;
////				nu=nu;
////				guanshui=guanshui;
//			};
//		}); 
//		$.post("/ShopitemsToOrdersController.do",{mylist:mylist})
////		location.href="2.html?"+"txt="+encodeURI(s.value);
//	}
	
	function setTotal(){
		var s=0;
		var nu=0;
		var guanshui=0;
		$(".IAbdArea .IAbdw").each(function(){ 
			if ($(this).find('.lincheck').hasClass('checked')) {
				s+=parseInt($(this).find('.Lastprice u').html());
				nu+=parseInt($(this).find('.num input').val());
				guanshui+=parseInt($(this).find('.IAtax u').html());
			} else{
				s=s;
				nu=nu;
				guanshui=guanshui;
			};
		}); 
		$(".allpri").html(s);
		$('#allnum').html(nu);
		$(".allguanshui").html(guanshui);
		} 
		setTotal(); 
});