/**
 * Created by Sunny on 2017/3/2.
 */
$(function($){
    $('.btn').attr('a')
    $('#title').bind('change',function () {
        if( $(this).val().length>0 &&  $(this).val() != null &&  $(this).val()!=""){
            if($(this).val().length>16){
                $('#btn').attr("disabled","disabled");
                $('#btn').css("background","url(/resource/images/btnbg2.png) repeat-x");
                $("#yz").text("最大长度为25个字符");
            }else{
                $('#btn').removeAttr("disabled");
                $('#btn').css("background","url(/resource/images/btnbg.png) no-repeat");
                $("#yz").text("ok");
            }
        }else{
            $('#btn').attr("disabled","disabled");
            $('#btn').css("background","url(/resource/images/btnbg2.png) repeat-x");
            $("#yz").text("标题不能为空");
        }
    })
});
