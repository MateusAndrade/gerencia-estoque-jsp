<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
	<title>Gerencia Funcionário</title>
	<link rel="stylesheet" href="css/bootstrap.min.css" media="screen" title="no title">
    <link rel="stylesheet" href="css/vanilla.css" media="screen" title="no title">
    <script src="js/jquery.js" charset="utf-8"></script>
    <script src="js/bootstrap.min.js" charset="utf-8"></script>
</head>
<body>
	
	<nav class="navbar navbar-default navbar-fixed-top navbar-cor">
      <div class="container-fluid">
        <div class="navbar-header">
	        <a class="navbar-brand" href="#">
	           <img class="alinha-icone-navbar" src="imgs/icone-navbar.png" height="35">
	        </a>
	        <p class="navbar-text">Gerencia Funcionários</p>
    	</div> 
    	
    	<ul class="nav navbar-nav">
    		<li><a class="active" href="principal_funcionario.jsp">Funcionários</a></li>
    		<li><a href="principal_produto.jsp">Produtos</a></li>
    		<li><a href="principal_requisicao.jsp">Requisições</a></li>
    	</ul>
    	
    	<div class="pull-right">
    		<ul class="nav navbar-nav">
    			<li><a href="#">Usuário <i class="glyphicon glyphicon-user"></i></a></li>
    			<li><a href="#">Sair <i class="glyphicon glyphicon-remove"></i></a></li>
    		</ul>
    	</div>
    	
      </div>
    </nav> 
    
    <div class="container-fluid">
    	<div class="row">
    		<div class="col-xs-12">
    			<ol class="breadcrumb">
    				<li><a href="index.jsp">Home</a></li>
    				<li><a href="principal_funcionario.jsp">Funcionário</a></li>
    				<li class="active"><a href="#">Cadastrar Funcionário</a></li>
    			</ol>
    		</div>
    	</div>
    	
    	<div class="col-xs-12">
    		<form action="ServletFuncionario" method="post">
    			<div class="form-group">
    				<div class="row">
    					<div class="col-xs-12">
    						<label for="nome">Nome:</label>
    						<input type="text" class="form-control" name="nome" placeholder="Insira um nome para o Funcionário:">
    					</div>
    				</div>
    			</div>
    			
    			<div class="form-group">
    				<div class="row">
    					<div class="col-xs-6">
    						<label for="nome">CPF:</label>
    						<input type="text" class="form-control" name="cpf" placeholder="Insira um CPF válido para o Funcionário:">
    					</div>
    					<div class="col-xs-6">
    						<label for="nome">RG:</label>
    						<input type="text" class="form-control" name="rg" placeholder="Insira um RG válido para o Funcionário:">
    					</div>
    				</div>
    			</div>   				
    			<div class="form-group">
    				<div class="row">
    					<div class="col-xs-6">
    						<label for="nome">Telefone:</label>
    						<input type="text" class="form-control" name="fone" placeholder="Insira um telefone para o Funcionário:">
    					</div>
    					<div class="col-xs-6">
    						<label for="nome">Email:</label>
    						<input type="text" class="form-control" name="email" placeholder="Insira um email válido para o Funcionário:">
    					</div>
    				</div>
    			</div>
    			<div class="form-group">
    				<div class="row">
    					<div class="col-xs-6">
    						<label for="nome">Senha:</label>
    						<input type="number" class="form-control" name="senha" placeholder="Insira uma Quantidade:">
    					</div>
    				</div>	   			
    		   </div>
    		   
    		  <div class="form-group">
    		  	<div class="row">
    		  		<div class="col-xs-6">
    		  			<button type="submit" class="btn btn-success btn-block"><p>Cadastrar Funcionário</p><p><i class="glyphicon glyphicon-ok"></i></p></button>
    		  		</div>
    		  		<div class="col-xs-6">
    		  			<button type="submit" class="btn btn-danger btn-block"><p>Cancelar</p><p><i class="glyphicon glyphicon-remove"></i></p></button>
    		  		</div>
    		  	</div>
    		  </div>  			
    	 </form>
    </div>
  </div>
 	   
  
  <nav class="navbar navbar-default navbar-fixed-bottom navbar-cor">
  	<div class="container-fluid">
    </div>
  </nav>

</body>
</html>