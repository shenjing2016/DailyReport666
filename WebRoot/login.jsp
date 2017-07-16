<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt"  prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!-->
<html lang="en">
<!--<![endif]-->
<!-- BEGIN HEAD -->

<head>
    <meta charset="utf-8" />
    <title>登录</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- BEGIN GLOBAL MANDATORY STYLES -->
    <link href="media/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style-metro.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style.css" rel="stylesheet" type="text/css" />
    <link href="media/css/style-responsive.css" rel="stylesheet" type="text/css" />
    <link href="media/css/default.css" rel="stylesheet" type="text/css" id="style_color" />
    <link href="media/css/uniform.default.css" rel="stylesheet" type="text/css" />
    <!-- END GLOBAL MANDATORY STYLES -->
    <!-- BEGIN PAGE LEVEL STYLES -->
    <link href="media/css/login-soft.css" rel="stylesheet" type="text/css" />
    <!-- END PAGE LEVEL STYLES -->
    <link rel="shortcut icon" href="media/image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->

<body class="login">
    <!-- BEGIN LOGO -->
    <div class="logo">
        <!-- 全透明图片 -->
        <img src="media/image/logo-big.png" alt="" />
    </div>
    <!-- END LOGO -->
    <!-- BEGIN LOGIN -->
    <div class="content">
        <!-- BEGIN LOGIN FORM -->
        <form class="form-vertical login-form" method="post" action="loginSuccess">
            <h3 class="form-title">登录日报</h3>
            <div class="alert alert-error hide">
                <button class="close" data-dismiss="alert"></button>
                <span>请输入工号和密码</span>
            </div>
            <div class="control-group">
                <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
                <label class="control-label visible-ie8 visible-ie9">工号</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-user"></i>
                        <input id="loginUserId" class="m-wrap placeholder-no-fix" type="text" placeholder="工号" name="userId" required/>
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">密码</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-lock"></i>
                        <input id="userPwd" name="userPwd" class="m-wrap placeholder-no-fix" type="password" placeholder="密码" />
                        ${info }
                    </div>
                </div>
            </div>
            <div class="control-group">
	            <div class="controls">
	                <input type="text" id="captcha" name="captcha" class="m-wrap small" required>
	                <img id="captchaPicture" src="captcha" />
	                ${info1}
	            </div>
	        </div>
            <div class="form-actions">
                <button type="submit" class="btn blue pull-right">
                    登录 <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>
        <!-- END LOGIN FORM -->
        <!-- BEGIN REGISTRATION FORM
        <form class="form-vertical register-form" action="index.html">
            <h3 class="">Sign Up</h3>
            <p>Enter your account details below:</p>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">Username</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-user"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="Username" name="username" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">Password</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-lock"></i>
                        <input class="m-wrap placeholder-no-fix" type="password" id="register_password" placeholder="Password" name="password" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <label class="control-label visible-ie8 visible-ie9">Re-type Your Password</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-ok"></i>
                        <input class="m-wrap placeholder-no-fix" type="password" placeholder="Re-type Your Password" name="rpassword" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                ie8, ie9 does not support html5 placeholder, so we just show field title for that
                <label class="control-label visible-ie8 visible-ie9">Email</label>
                <div class="controls">
                    <div class="input-icon left">
                        <i class="icon-envelope"></i>
                        <input class="m-wrap placeholder-no-fix" type="text" placeholder="Email" name="email" />
                    </div>
                </div>
            </div>
            <div class="control-group">
                <div class="controls">
                    <label class="checkbox">
                        <input type="checkbox" name="tnc" /> I agree to the <a href="#">Terms of Service</a> and <a href="#">Privacy Policy</a>
                    </label>
                    <div id="register_tnc_error"></div>
                </div>
            </div>
            <div class="form-actions">
                <button id="register-back-btn" type="button" class="btn">
                    <i class="m-icon-swapleft"></i> Back
                </button>
                <button type="submit" id="register-submit-btn" class="btn blue pull-right">
                    Sign Up <i class="m-icon-swapright m-icon-white"></i>
                </button>
            </div>
        </form>
        END REGISTRATION FORM -->
    </div>
    <!-- END LOGIN -->
    <!-- BEGIN COPYRIGHT -->
    <div class="copyright">
        2017 &copy; HEU - Daily Report.
    </div>
    <!-- END COPYRIGHT -->
    <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
    <!-- BEGIN CORE PLUGINS -->

    <script src="media/js/user.js" type="text/javascript"></script>
    <script src="media/js/jquery-1.9.1.js" type="text/javascript"></script>



    <script src="media/js/jquery-1.10.1.min.js" type="text/javascript"></script>
    <script src="media/js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
    <!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
    <script src="media/js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
    <script src="media/js/bootstrap.min.js" type="text/javascript"></script>
    <!--[if lt IE 9]>

	<script src="media/js/excanvas.min.js"></script>

	<script src="media/js/respond.min.js"></script>

	<![endif]-->
    <script src="media/js/jquery.slimscroll.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.blockui.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.cookie.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.uniform.min.js" type="text/javascript"></script>
    <!-- END CORE PLUGINS -->
    <!-- BEGIN PAGE LEVEL PLUGINS -->
    <script src="media/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="media/js/jquery.backstretch.min.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL PLUGINS -->
    <!-- BEGIN PAGE LEVEL SCRIPTS -->
    <script src="media/js/app.js" type="text/javascript"></script>
    <script src="media/js/login-soft.js" type="text/javascript"></script>
    <!-- END PAGE LEVEL SCRIPTS -->
    <script>
    /* jQuery(document).ready(function() {

        App.init();

        //Login.init();

    }); */
    $.backstretch([
 		        "media/image/bg/2.jpg",
 		        ], {
 		          fade: 1000,
 		          duration: 8000
 		      });

    $("#keepLogin").change(
        function(){
            if($("#keepLogin").is("check")){
                <% session.setMaxInactiveInterval(604800); %>
            }
        }
    );

    $("input").change(
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
   	        if(id=="loginUserId"){
   	            //设置发送请求的ajax参数
   	            url="check";
   	            data={
   	              "userId":$(this).val()
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
   	               		 	$("#loginUserId").after("<span class='help-inline' style='color: #ff0000'>该用户名还未注册，请先注册！</span>");
   	               		 	$("#loginUserId").select();
   	                	} else if(result == 2) {
   	                		$("#loginUserId").after("<span class='help-inline' style='color: #ff0000'>该用户已离职或调任！</span>");
   	               		 	$("#loginUserId").select();
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
   	                		$("#captchaPicture").after("<span class='help-inline' style='color: #00ff00'>验证码正确！</span>");
   	                	}else{
   	                		$("#captchaPicture").after("<span class='help-inline' style='color: #ff0000'>验证码不正确！</span>");
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

    /**
     * 如果确认注销用户
     */
    $("#loginOffOK").click(function(){
    	//发送ajax请求
        $.ajax({
            type:"GET",
            url:"loginOff",
            data:null,
            contentType:"application/json;charset=utf-8",
            success:function(result){
            	if(result==1){
            		window.location.reload();
            	}
            }
        });
    });

    </script>
    <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->

</html>
