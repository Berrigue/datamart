<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="br.com.datacrunch.entidade.Usuario" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>datamart</title>
<!-- start: META -->
<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta content="" name="description" />
<meta content="" name="author" />
<!-- end: META -->
<!-- start: GOOGLE FONTS -->
<link
	href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic"
	rel="stylesheet" type="text/css" />
<!-- end: GOOGLE FONTS -->
<!-- start: MAIN CSS -->
<link rel="stylesheet"
	href="resources/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="resources/vendor/fontawesome/css/font-awesome.min.css">
<link rel="stylesheet"
	href="resources/vendor/themify-icons/themify-icons.min.css">
<link href="resources/vendor/animate.css/animate.min.css"
	rel="stylesheet" media="screen">
<link
	href="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.css"
	rel="stylesheet" media="screen">
<link href="resources/vendor/switchery/switchery.min.css"
	rel="stylesheet" media="screen">
<!-- end: MAIN CSS -->
<!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
<link
	href="resources/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.css"
	rel="stylesheet" media="screen">
<link href="resources/vendor/select2/select2.min.css" rel="stylesheet"
	media="screen">
<link
	href="resources/vendor/bootstrap-datepicker/bootstrap-datepicker3.standalone.min.css"
	rel="stylesheet" media="screen">
<link
	href="resources/vendor/bootstrap-timepicker/bootstrap-timepicker.min.css"
	rel="stylesheet" media="screen">
<!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
<!-- start: CLIP-TWO CSS -->
<link rel="stylesheet" href="resources/assets/css/styles.css">
<link rel="stylesheet" href="resources/assets/css/plugins.css">
<link rel="stylesheet" href="resources/assets/css/themes/theme-1.css"
	id="skin_color" />

</head>

<body>

<%
	Usuario u = (Usuario)request.getAttribute("usu");
	
%>

<div class="col-lg-6 col-md-12">
	<div class="panel panel-white">
		<div class="panel-heading">
			<h5 class="panel-title">Sistema para cadastro de usuario</h5>
		</div>
		<div class="panel-body">
			<p class="text-small margin-bottom-20">Favor fornecer: Nome,
				Login e senha para que possamos liberar o seu acesso ao sistema.</p>

			<form role="form" action="UsuarioController" method="post">

				<div class="form-group">
					<label class="control-label"> ID </label> <input type="number"
						placeholder="ID" id="id" name="id" class="form-control"
						 value="<%=u.getId()%>">
				</div>

				<div class="form-group">
					<label for="exampleInputEmail1"> Nome completo: </label> <input
						type="text" class="form-control" id="exampleInputName1"
						placeholder="Digite seu nome" name="nome" required="required"
						value="<%=u.getNome() %>">
				</div>
				<div class="form-group">
					<label for="exampleInputEmail1"> Login </label> <input type="text"
						class="form-control" id="exampleInputEmail1" placeholder="Login"
						name="login" required="required" value="<%=u.getLogin() %>">
				</div>
				<div class="form-group">
					<label for="exampleInputPassword1"> Password </label> <input
						type="password" class="form-control" id="exampleInputPassword1"
						placeholder="Password" name="senha" required="required" value="<%=u.getSenha() %>">
				</div>
				<div class="checkbox clip-check check-primary">
					<input type="checkbox" id="checkbox1" value="1"> <label
						for="checkbox1"> Remember me </label>
				</div>
				<button type="submit" class="btn btn-o btn-primary">
					Salvar</button>
				<a href="UsuarioController?acao=lis"  class="btn btn-o btn-primary">Visualizar dados</a>
				
			</form>
		</div>
	</div>
</div>

<!-- start: MAIN JAVASCRIPTS -->
<script src="resources/vendor/jquery/jquery.min.js"></script>
<script src="resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="resources/vendor/modernizr/modernizr.js"></script>
<script src="resources/vendor/jquery-cookie/jquery.cookie.js"></script>
<script
	src="resources/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="resources/vendor/switchery/switchery.min.js"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<script src="resources/vendor/maskedinput/jquery.maskedinput.min.js"></script>
<script
	src="resources/vendor/bootstrap-touchspin/jquery.bootstrap-touchspin.min.js"></script>
<script src="resources/vendor/autosize/autosize.min.js"></script>
<script src="resources/vendor/selectFx/classie.js"></script>
<script src="resources/vendor/selectFx/selectFx.js"></script>
<script src="resources/vendor/select2/select2.min.js"></script>
<script
	src="resources/vendor/bootstrap-datepicker/bootstrap-datepicker.min.js"></script>
<script
	src="resources/vendor/bootstrap-timepicker/bootstrap-timepicker.min.js"></script>
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<!-- start: CLIP-TWO JAVASCRIPTS -->
<script src="resources/assets/js/main.js"></script>
<!-- start: JavaScript Event Handlers for this page -->
<script src="resources/assets/js/form-elements.js"></script>
<script>
	jQuery(document).ready(function() {
		Main.init();
		FormElements.init();
	});
</script>
<!-- end: JavaScript Event Handlers for this page -->
<!-- end: CLIP-TWO JAVASCRIPTS -->

</body>
</html>