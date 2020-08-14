<%@ Page Title="Aplicações Web" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Aplicacao.aspx.cs" Inherits="AvaliacaoAsp.Aplicacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-8">
            <asp:GridView ID="GvApp" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDsAplicacao">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Descricao" HeaderText="Descrição" SortExpression="Descricao" />
                    <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" />
                    <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDsAplicacao" runat="server" ConnectionString="<%$ ConnectionStrings:DbAplicationConnectionString %>" SelectCommand="SELECT * FROM [Aplicacaos]"></asp:SqlDataSource>
        </div>
        <div class="col-md-4">
            <h2>Entrada de dados</h2>
            <br />
            <asp:TextBox ID="TxtNome" runat="server" CssClass="form-control" placeholder="Nome" TextMode="SingleLine"></asp:TextBox>
            <br />
            <asp:TextBox ID="TxtDesc" runat="server" CssClass="form-control" placeholder="Descrição" TextMode="MultiLine"></asp:TextBox>
            <br />
            <asp:TextBox ID="TxtData" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            <br />
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
            <br />
            <asp:DropDownList ID="DdlStatus" runat="server" CssClass="form-control dropdown-toggle">
                <asp:ListItem Value="1">Bloqueado</asp:ListItem>
                <asp:ListItem Value="2">Desenvolvimento</asp:ListItem>
                <asp:ListItem Value="3">Testes</asp:ListItem>
                <asp:ListItem Value="4">Aprovado</asp:ListItem>
            </asp:DropDownList><br />
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Adicionar" CssClass="btn btn-primary" Width="90px" />
            <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Editar" CssClass="btn btn-primary"  Width="90px" />
            <asp:Button ID="BtnRemove" runat="server" OnClick="BtnRemove_Click" Text="Remover" CssClass="btn btn-danger" Width="90px"/>
            <div class="input-group">
            </div>
        </div>
    </div>
</asp:Content>
