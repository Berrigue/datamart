<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="pt">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<!-- start: HEAD -->
	<head>
		<title>Datacrunch</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: GOOGLE FONTS -->
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<!-- end: GOOGLE FONTS -->
		<!-- start: MAIN CSS -->
		<link rel="stylesheet" href="resources/vendor/bootstrap/css/bootstrap.min.css">
		<link rel="stylesheet" href="resources/vendor/fontawesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="resources/vendor/themify-icons/themify-icons.min.css">
		<link href="resources/vendor/animate.css/animate.min.css" rel="stylesheet" media="screen">
		<link href="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.css" rel="stylesheet" media="screen">
		<link href="resources/vendor/switchery/switchery.min.css" rel="stylesheet" media="screen">
		<!-- end: MAIN CSS -->

		<link rel="stylesheet" href="resources/assets/css/styles.css">
		<link rel="stylesheet" href="resources/assets/css/plugins.css">
		<link rel="stylesheet" href="resources/assets/css/themes/theme-1.css" id="skin_color" />

		<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
		<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body class="login">
		<!-- start: LOGIN -->
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
				<div class="logo margin-top-30">
					<!-- <img src="" alt="Datacrunch Tecnologia"/> -->
					<h3>Datacrunch Tecnologia</h3></br>
					<h4>Dataset Publico</h4>
				</div>  
				<!-- start: LOGIN BOX -->
				<div class="box-login">
					<form class="form-login" action="autenticador.do" method="post">
						<fieldset>
							<legend>
								Faça login em sua conta
							</legend>
							<p>
								Por favor, insira seu nome e senha para entrar.
							</p>
							
							
							<div class="form-group">
								<span class="input-icon">
									<input type="text" class="form-control" name="login" placeholder="Username" required="required">
									<i class="fa fa-user"></i> </span>
							</div>
							<div class="form-group form-actions">
								<span class="input-icon">
									<input type="password" class="form-control password" name="senha" placeholder="Password" required="required">
									<i class="fa fa-lock"></i>
									<a class="forgot" href="#">
										Eu esquici minha senha
									</a> </span>
							</div>
							<div class="form-actions">
								<div class="checkbox clip-check check-primary">
									<input type="checkbox" id="remember" value="1">
									<label for="remember">
										Mantenha-me conectado

									</label>
								</div>
								<button type="submit" class="btn btn-primary pull-right">
									Login <i class="fa fa-arrow-circle-right"></i>
								</button>
							</div>
							<div class="new-account">
								Você ainda não possui uma conta?
								<a href="#">
									Crie uma agora
								</a>
							</div>
						</fieldset>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						&copy; <span class="current-year"></span><span class="text-bold text-uppercase"> Datacrunch</span>. <span>All rights reserved</span>
					</div>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: LOGIN BOX -->
			</div>
		</div>
		<!-- end: LOGIN -->
		<!-- start: MAIN JAVASCRIPTS -->
		<script src="resources/vendor/jquery/jquery.min.js"></script>
		<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
		<script src="resources/vendor/modernizr/modernizr.js"></script>
		<script src="resources/vendor/jquery-cookie/jquery.cookie.js"></script>
		<script src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
		<script src="resources/vendor/switchery/switchery.min.js"></script>
		<!-- end: MAIN JAVASCRIPTS -->
		<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<script src="resources/vendor/jquery-validation/jquery.validate.min.js"></script>
		<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
		<!-- start: datacrunch JAVASCRIPTS -->
		<script src="resources/assets/js/main.js"></script>
		<!-- start: JavaScript Event Handlers for this page -->
		<script src="resources/assets/js/login.js"></script>
		<script>
			jQuery(document).ready(function() {
				Main.init();
				Login.init();
			});
		</script>
		<!-- end: JavaScript Event Handlers for this page -->
		<!-- end: DATACRUNCH JAVASCRIPTS -->
	</body>
	<!-- end: BODY -->
</html>
