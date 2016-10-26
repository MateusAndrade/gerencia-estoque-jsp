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
            <li class="active"><a href="#">Produtos</a></li>
          </ol>
        </div>

        <div class="col-xs-12">
          <table class="table table-bordered">
            <caption>Produtos Cadastrados:</caption>
            <tr>
              <th colspan="5">
                <div style='width:100%;' class="input-group">
                  <span class="input-group-addon">Nome:</span>
                  <input type="text" class="form-control" placeholder="Pesquisar Produtos por Nome:">
                  <span class="input-group-addon"><i class="glyphicon glyphicon-search"></i></span>
                </div>
              </th>
            </tr>
            <tr>
              <th>ID:</th>
              <th>Produto:</th>
              <th>Quantidade:</th>
              <th>Alterar:</th>
              <th>Deletar:</th>
            </tr>
            <tr>
              <td><a href="#">01</a></td>
              <td>Escova</td>
              <td>23:15:01</td>
              <td>
                <button class="btn btn-info" name="button">Alterar Produto<i class="glyphicon glyphicon-pencil"></i></button>
              </td>
              <td>
                <button class="btn btn-danger" name="button">Excluir Produto<i class="glyphicon glyphicon-remove"></i></button>
              </td>
            </tr>
          </table>

        </div>

        <div class="col-xs-12">
          <a href="cadastra_produto.jsp" class="btn btn-success btn-block" name="button"><p>Cadastrar Produto</p><p><i class="glyphicon glyphicon-plus"></i></p></a>
        </div>

      </div>

    <nav class="navbar navbar-default navbar-fixed-bottom navbar-cor">
      <div class="container-fluid">
      </div>
    </nav>


  </body>
</html>
