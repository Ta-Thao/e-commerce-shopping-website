<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1" name="viewport" />
    <meta name="description" content="Responsive Admin Template" />
    <meta name="author" content="SmartUniversity" />
    <title>Login</title>
    <!-- google font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700" rel="stylesheet" type="text/css" />
    <!-- icons -->
    <link href="/resources-management/plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="/resources-management/plugins/iconic/css/material-design-iconic-font.min.css">
    <!-- bootstrap -->
    <link href="/resources-management/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- style -->
    <link rel="stylesheet" href="/resources-management/css/pages/extra_pages.css">
    <!-- favicon -->
    <link rel="shortcut icon" href="/resources-management/img/favicon.ico" />

</head>
<body>
<!-- /login?error=true -->
<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION}">
    <p style="color: red; text-align: center;font-size: 20px;">
        Your login attempt was not successful due to: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>.
    </p>
</c:if>
<div class="limiter">
    <div class="container-login100 page-background">
        <div class="wrap-login100">
            <form class="login100-form validate-form" action="<c:url value="j_spring_security_check"/> " method="post">
					<span class="login100-form-logo">
						<i class="zmdi zmdi-flower"></i>
					</span>
                <span class="login100-form-title p-b-34 p-t-27">
						Log in
					</span>
                <div class="wrap-input100 validate-input" data-validate = "Enter username">
                    <input class="input100" type="text" name="username" placeholder="Username">
                    <span class="focus-input100" data-placeholder="&#xf207;"></span>
                </div>
                <div class="wrap-input100 validate-input" data-validate="Enter password">
                    <input class="input100" type="password" name="password" placeholder="Password">
                    <span class="focus-input100" data-placeholder="&#xf191;"></span>
                </div>
                <div class="contact100-form-checkbox">
                    <input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me">
                    <label class="label-checkbox100" for="ckb1">
                        Remember me
                    </label>
                </div>
                <div class="container-login100-form-btn">
                    <button class="login100-form-btn">
                        Login
                    </button>
                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                    <a href="/" class="login100-form-btn">
                        Home
                    </a>
                </div>
                <div class="text-center p-t-90">
                    <a class="txt1" href="#">
                        Forgot Password?
                    </a>
                </div>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
            </form>
        </div>
    </div>
</div>
<!-- start js include path -->
<script src="/resources-management/plugins/jquery/jquery.min.js" ></script>
<!-- bootstrap -->
<script src="/resources-management/plugins/bootstrap/js/bootstrap.min.js" ></script>
<script src="/resources-management/js/pages/extra_pages/login.js" ></script>
<!-- end js include path -->
</body>
</html>