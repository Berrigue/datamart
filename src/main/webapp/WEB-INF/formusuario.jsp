<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %> 
<%@ page import="br.com.datacrunch.entidade.Usuario" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Lista de Usuarios</title>

<script type="text/javascript">

function confirmarExclusao (id){
	
	if (window.confirm('Tem certeza que deseja excluir?')){
		
		location.href="usucontroller.do?acao=exc&id="+id;
	}
}

</script>

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
<body>

<%

	List<Usuario> lista = (List<Usuario>) request.getAttribute("lista");

%>

<div class="col-md-12">
									<h5 class="over-title margin-bottom-15">Tabela (teste) <span class="text-bold">Datacrunch</span></h5>
									<p>
										Segue a baixo lista atualizada do banco de dados datacrunch referente ao banco teste.
									</p>
									
									<table class="table table-hover" id="sample-table-1">
										<thead>
										
											<tr>
												<th class="center">ID</th>
												<th>Nome</th>
												<th class="hidden-xs">Creator</th>
												<th>Software license</th>
												<th class="hidden-xs">Current layout engine</th>
												<th></th>
											</tr>
										</thead>
										
										<tbody>
										<% 
										for (Usuario u: lista){
											%>	
											<tr>
												<td class="center"><% out.print(u.getId()); %></td>
												<td class="hidden-xs"><% out.print(u.getNome());  %></td>
												<td>Datacrunch</td>
												<td>
												<a href="#" rel="nofollow" target="_blank">
													Terms of Service
												</a></td>
												<td class="hidden-xs">Blink</td>
												<td class="center">
												<div class="visible-md visible-lg hidden-sm hidden-xs">
													<a href="usucontroller.do?acao=alt&id=<%= u.getId() %>" class="btn btn-transparent btn-xs" tooltip-placement="top" tooltip="Edit"><i class="fa fa-pencil"></i></a>
													<a href="#" class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Share"><i class="fa fa-share"></i></a>
													<a href="javascript:confirmarExclusao(<%= u.getId() %>)" class="btn btn-transparent btn-xs tooltips" tooltip-placement="top" tooltip="Remove"><i class="fa fa-times fa fa-white"></i></a>
												</div>
									</td>
											</tr>
											<%		} %>
											
								
										</tbody>
										
									
										
									</table>
									
									
								</div>


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
</html>