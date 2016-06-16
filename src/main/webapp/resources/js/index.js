/**
 * Created by Administrator on 2015/11/5.
 */
//���ﳵ������ʾ
$("#head_car").hover(function(){
    $(this).css("background", "#FBFEE9");
    $(".head_car_text").css("color", "#ff6700");
    $("#car_content").css({"width":"300px"}).animate({
        height:"100px"
    },400).finish();
},function(){
    $(this).css("background", "#424242");
    $(".head_car_text").css("color", "#b0b0b0");
    $("#car_content").css({"width":"300px"}).animate({
        height:"0px"
    },400);
})
//登录注册hover事件
/*function headRight(obj1){
	console.log(22)
	obj1.click(function() {
		var divHeight = obj1.css("height");
		var divH = parseInt(divHeight);
		console.log(divH);
		if(divH == 40) {
			obj1.animate({height:120+'px'},200);
		}
		if(divH == 120) {
			obj1.animate({height:40+'px'},200);
		}
	});
}
headRight($('.login'),$('.login'));
headRight($('.register'),$('.register'));*/

//登录注册按钮下拉框效果
var divHeight;
$('#login').click(function(){
	divHeight=$(this).height();
	if(divHeight == 40) {
		$(this).animate({height:120+'px'},200);
	}
	if(divHeight == 120) {
		$(this).animate({height:40+'px'},200);
	}
})
$('#register').click(function(){
	divHeight=$(this).height();
	if(divHeight == 40) {
		$(this).animate({height:120+'px'},200);
	}
	if(divHeight == 120) {
		$(this).animate({height:40+'px'},200);
	}
})
$(document).click(function(){
	if($('#login').height() == 120){
		$('#login').animate({height:40+'px'},200);
	}else if($('#register').height() == 120){
		$('#register').animate({height:40+'px'},200);
	}
});

$('.flex1').css('height',15+'px');
$('.head_hot_goods_content_li').click(function(){
	
    $('.flex1').css('display','block').animate({"opacity":"1"},200);
})

$('.flex').css('height',340+'px');
$('.floor_goods_wrap_li').click(function(){
	
    $('.flex').css('display','block').animate({"opacity":"1"},200);
})

$('.close').click(function(){
//	$('#myvideo').pause();
    $('.flex').animate({"opacity":"0"},200).css('display','none');
    $('.flex').css('top',310 + 'px');
	$('.flex').css('left',0 + 'px');
	
})
//$('.close').click(function(){
//	console.log("clicked");
//	$('#myvideo').remove();
//})

var lastX;
var lastY;
var oFlex = document.getElementsByClassName('flex')[0];
oFlex.onmousedown = function (e) {
	var event = event || e;
	var disX = event.clientX - oFlex.offsetLeft;
	var disY = event.clientY - oFlex.offsetTop;

	document.onmousemove = function (e) {
		var event = event || e;
		var l = event.clientX - disX;
        var t = event.clientY - disY;
		iSpeedX = l - lastX;
		iSpeedY = t - lastY;

		lastX = l;
		lastY = t;

		oFlex.style.left = l + 'px';
		oFlex.style.top = t + 'px';
	}
	document.onmouseup = function () {
		document.onmousemove = null;
		document.onmouseup = null;
	}
}

var lastX1;
var lastY1;
var oFlex1 = document.getElementsByClassName('flex1')[0];
oFlex1.onmousedown = function (e) {
	var event1 = event1 || e;
	var disX1 = event1.clientX1 - oFlex1.offsetLeft;
	var disY1 = event1.clientY1 - oFlex1.offsetTop;

	document.onmousemove = function (e) {
		var event1 = event1 || e;
		var l1 = event1.clientX - disX1;
        var t1 = event1.clientY - disY1;
		iSpeedX1 = l1 - lastX1;
		iSpeedY1 = t1 - lastY1;

		lastX1 = l1;
		lastY1 = t1;

		oFlex1.style.left = l1 + 'px';
		oFlex1.style.top = t1 + 'px';
	}
	document.onmouseup = function () {
		document.onmousemove = null;
		document.onmouseup = null;
	}
}









//������������ʾ
$(".menu_li").hover(function(){
    $("#menu_content_bg").css("border","1px solid #D0D0D0");
    $(this).css("color","#ff6700");
    $("#"+$(this).attr("control")).show();
    $("#menu_content_bg").height(230);
},function(){
    $("#"+$(this).attr("control")).hide();
   $(this).css("color"," #ccc");
    $("#menu_content_bg").height(0);
    $("#menu_content_bg").css("border","0px solid #D0D0D0");
})
//������ʧȥ�ͻ�ȡ����border��ɫ�ı�
$("#find_input").focus(function(){
    $("#find_wrap").css("border","1px solid #ff6700");
    $("#find_but").css("border-left","1px solid #ff6700");
})
$("#find_input").blur(function(){
    $("#find_wrap").css("border","1px solid #F0F0F0");
    $("#find_but").css("border-left","1px solid #F0F0F0");
})
//������ť�ı�����ɫ�ı�
$("#find_but").hover(function(){
    $(this).css({"background":"#ff6700",color:"#fff"});
},function(){
    $(this).css({"background":"#fff",color:"#424242"});
})
//�˵�������ʾ
$("#banner_menu_wrap").children().hover(function(){
    $(this).css("background","#ff6700");
    $(this).children(".banner_menu_content").css("border","1px solid #F0F0F0").show();
},function(){
    $(this).css("background","none");
    $(this).children(".banner_menu_content").css("border","0px solid #F0F0F0").hide();
})
//�ֲ�
$(function(){
    var i=0;
    var big_banner_pic = $("#big_banner_pic");
    var allimg=$("#big_banner_pic li").length;
    function img_change(){
        var img_i=i*-1226+"px";
        big_banner_pic.animate({opacity:".2"},100,function(){
            big_banner_pic.css("left",img_i );
            big_banner_pic.animate({
                opacity: "1"
            }, 100);
        })
    }
    function automatic(){
        i+=1;
        if(i>=allimg){
            i=0;
        }
        img_change();
    }
    change_self_time = setInterval(automatic, 3000);
    //�ֲ���һ����һ��ͼ�����
    $("#big_banner_change_wrap").hover(function(){
        clearInterval(change_self_time);
        $("#big_banner_change_wrap").children().show();
    },function(){
        change_self_time = setInterval(automatic, 3000);
        $("#big_banner_change_wrap").children().hide();
    })
    $("#big_banner_change_prev").click(function(){
        i += 1;
        if (i >= allimg) {
            i = 0;
        }
        img_change();
    })
    $("#big_banner_change_next").click(function(){
        i -= 1;
        if (i <= 0) {
            i = allimg - 1;
        }
        img_change();
    })
})
//С������border-top color����
$(function(){
    $("#head_hot_goods_content").children().children().eq(0).css("border-color","#ff7600");
    $("#head_hot_goods_content").children().children().eq(1).css("border-color","red");
    $("#head_hot_goods_content").children().children().eq(2).css("border-color","#adff2f");
    $("#head_hot_goods_content").children().children().eq(3).css("border-color","#6495ed");
    $("#head_hot_goods_content").children().children().eq(4).css("border-color","#6a5acd");
    $("#head_hot_goods_content").children().children().eq(5).css("border-color","#ff7600");
    $("#head_hot_goods_content").children().children().eq(6).css("border-color","red");
    $("#head_hot_goods_content").children().children().eq(7).css("border-color","#adff2f");
    $("#head_hot_goods_content").children().children().eq(8).css("border-color","#6495ed");
    $("#head_hot_goods_content").children().children().eq(9).css("border-color","#6a5acd");
})
//����С������left
$("#head_hot_goods_prave").click(function(){
     $("#head_hot_goods_content").children("ul").animate({
         left:"-1226px"
     },300)
})
$("#head_hot_goods_next").click(function(){
    $("#head_hot_goods_content").children("ul").animate({
        left:"0"
    },300)
})
$("#head_hot_goods_prave").hover(function(){
    $(this).css("color","#ff6700");
},function(){
    $(this).css("color","#BEBEBE");
})
$("#head_hot_goods_next").hover(function(){
    $(this).css("color","#ff6700");
},function(){
    $(this).css("color","#BEBEBE");
})

$(".floor_goods_wrap_li").hover(function () {
       $(this).css({"top":"-5px",
           "box-shadow":"0px 15px 30px rgba(0,0,0,0.2)"
       });
},function(){
    $(this).css({"top":"0px",
        "box-shadow":"none"
    });
})

$(".foot_bottom_r").children("span").hover(function(){
    $(this).css({"background":"#ff6700",color:"#fff"});
},function(){
    $(this).css({"background":"none",color:"#ff6700"});
})