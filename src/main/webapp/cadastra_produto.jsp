<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
  <head>
    <meta charset="utf-8">
    <title>Gerencia Produtos</title>
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
          <p class="navbar-text">Gerencia Estoque Show</p>
        </div>

        <ul class="nav navbar-nav">
          <li><a href="principal_funcionario.jsp">Funcionários</a></li>
          <li><a class="active" href="principal_produto.jsp">Produtos</a></li>
          <li><a href="principal_requisicoes.jsp">Requisições</a></li>
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
            <li><a href="#">Home</a></li>
            <li><a href="#">Produto</a></li>
            <li class="active"><a href="#">Cadastrar Produto</a></li>
          </ol>
        </div>

        <div class="col-xs-12">

          <form action="ControllerProduto" method="post">
            <div class="form-group">
              <div class="row">
                <div class="col-xs-12">
                  <label for="nome">Nome:</label>
                  <input type="text" class="form-control" name="nome" placeholder="Insira um Nome para o Produto:">
                </div>
              </div>
            </div>

            <div class="form-group">
              <div class="row">
                <div class="col-xs-6">
                  <label for="quantidade">Quantidade:</label>
                  <input type="number" class="form-control" name="quantidade" placeholder="Insira uma Quantidade:">
                </div>
                <div class="col-xs-6">
                  <label for="preco">Preço:</label>
                  <input type="text" class="form-control" name="preco" placeholder="Insira um Preço">
                </div>    
              </div>
            </div>

            <div class="form-group">
              <div class="row">
                <div class="col-xs-6">
                  <button type="submit" class="btn btn-success btn-block"><p>Cadastrar Produto</p><p><i class="glyphicon glyphicon-ok"></i></p></button>
                </div>
                <div class="col-xs-6">
                  <button type="submit" class="btn btn-danger btn-block"><p>Cancelar</p><p><i class="glyphicon glyphicon-remove"></i></p></button>
                </div>
              </div>
            </div>


          </form>

        </div>

      </div>
    </div>

    <nav class="navbar navbar-default navbar-fixed-bottom navbar-cor">
      <div class="container-fluid">
      </div>
    </nav>

  </body>
</html>
