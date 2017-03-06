/**
 * Created by Sunny on 2017/2/25.
 */
/*首页*/
    $('#site-nav').mouseover(function () {
        $(this).addClass("site-nav");
        $("#site-nav .nav-title").css("display","block");
        $("#site-nav span").addClass("iconspan");
    }).mouseout(function () {
        $(this).removeClass("site-nav");
        $("#site-nav .nav-title").css("display","none");
        $("#site-nav span").removeClass("iconspan");
    });
$("#nav .con-ul li").mouseover(function () {
    $(this).children().next().addClass("sel").css("z-index","999");
}).mouseout(function () {
    $(this).children().next().removeClass("sel").css("z-index","999");
});

/*list页面*/
$('#list-content .con-con .con-til li a').bind('click',function () {
    $(this).parent().siblings().removeClass("active");
    $(this).parent().siblings().children().css("color","#999");
    $(this).parent().addClass('active');
    $(this).css("color","#418ec7");
});
/*---------------------------------------------detail-----------------------------------------------*/

$(".tk-btn").bind("click",function () {
    $('#entry').show(500,function () {

    });
});


$("#sf .sf-img .sf-icon,#sf .sf-img .xg-img").mouseover(function () {
    $("#sf .sf-con .sf-img .xg-img").css('display','block')
}).mouseout(function () {
    $("#sf .sf-img .xg-img").css('display','none')
});

$('#sf-about .ab-left ul.title li').bind('click',function () {
    $(this).siblings().removeClass("sel");
    $(this).addClass("sel");
    var index=$(this).index();
    $('#sf-about .ab-left .li-con .my').css('display','none');
    $('#sf-about .ab-left .li-con .my')[index].style.display='block';
});


