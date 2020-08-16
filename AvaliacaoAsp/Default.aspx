<%@ Page Title="Inicio" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AvaliacaoAsp._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Aplicações Web</h1>
        <p class="lead">Site criado para cadastro de novas aplicações, com armazenamento em um banco de dados.</p>
    </div>

    <div class="row">
        <div class="col-md-6">
            <h2>Utilizando Entity Framework</h2>
            <p> O banco de dados SQL é criado usando a abordagem Code First do Entity Framework.</p>
            <p>Toda interação com o banco de dados é feita de forma simples e ágil.</p>
        </div>

        <div class="col-md-6">
            <h2>CRUD</h2>
            <p>Oferece uma maneira prática para cadastrar os softwares desenvolvidos pela empresa, bem como editar e deletar os mesmos.</p>
            <p>Clique no botão abaixo para começar.</p>
            <p><a runat="server" class="btn btn-default" href="~/Aplicacao">Clique aqui &raquo;</a></p>
        </div>
    </div>
</asp:Content>
