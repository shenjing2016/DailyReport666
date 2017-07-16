/**
 * Created by Administrator on 2016/5/31 0031.
 *//*

//input改变的时候发出ajax请求或者检查两次密码是否相同
$ ("input").change(
    function(){
        //设置发送ajax请求的部分参数
        var ajaxType="GET";
        var url=null;
        var data=null;

        //获取选中元素的id
        var id=$(this).attr("id");

        //移除提示信息的元素
        $(this).nextAll("span").remove();

        //判断选中元素的id
        if(id=="loginUserName"){
            //设置发送请求的ajax参数
            url="check";
            data={
              "userName":$(this).val()
            };

            //发送ajax请求
            $.ajax({
            	type:ajaxType,
                url:url,
                data:data,
                contentType:"application/json;charset=utf-8",
                success:function(result){
                	//如果当前的是登录
                	if(result==0){
               		 	$("#loginUserName").after("<span class='help-inline' style='color: #ff0000'>该用户名还未注册，请先注册！</span>");
               		 	$("#loginUserName").select();
                	}
                }
            });


        }else if(id=="userName"){
            //设置发送请求的ajax参数
            url="check";
            data={
                "userName":$(this).val()
            };

            //发送ajax请求
            $.ajax({
                type:ajaxType,
                url:url,
                data:data,
                contentType:"application/json;charset=utf-8",
                success:function(result){
                	if(result==1){
               		 	$("#userName").after("<span class='help-inline' style='color: #ff0000'>当前用户已经存在！</span>");
               		 	$("#userName").select();
                	}else{
                		$("#userName").after("<span class='help-inline' style='color: #00ff00'>恭喜，用户名可用！</span>");
                	}
                }
            });

        }else if(id=="captcha"){
            //设置发送请求的ajax参数
            url="checkCaptcha";
            data={
                "captcha":$(this).val()
            };

            //发送ajax请求
            $.ajax({
                type:ajaxType,
                url:url,
                data:data,
                contentType:"application/json;charset=utf-8",
                success:function(result){
                	if(result==1){
                		$("#captcha").after("<span class='help-inline' style='color: #00ff00'>验证码正确！</span>");
                	}else{
                		$("#captcha").after("<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
                		$("#captcha").select();
                	}
                }
            });

        }else if(id=="reUserPwd"){
            //如果是重复输入密码，那么检查两次输入是否相同
            if($("#userPwd").val()!=$(this).val()){
                $(this).after("<span class='help-inline' style='color: #ff0000'>两次输入不相同！</span>");
            }
        }
});
*/
/**
 * 显示用户信息
 */
function showUser () {
    $("#regLogin").toggle();
    $("#user").toggle();
}


