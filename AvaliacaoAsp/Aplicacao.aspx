<%@ Page Title="Aplicações Web" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Aplicacao.aspx.cs" Inherits="AvaliacaoAsp.Aplicacao" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-8">
            <h2>Aplicações</h2>
            <div class="table-responsive">
                <asp:GridView ID="GvApp" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDsAplicacao" UseAccessibleHeader="true" CssClass="table table-hover table-striped" OnRowDataBound="GvApp_RowDataBound" OnSelectedIndexChanged="GvApp_SelectedIndexChanged">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="Nome" HeaderText="Nome" SortExpression="Nome" />
                        <asp:BoundField DataField="Descricao" HeaderText="Descricao" SortExpression="Descricao" />
                        <asp:BoundField DataField="Data" HeaderText="Data" SortExpression="Data" DataFormatString="{0:dd/MM/yyyy}" />
                        <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Columns>
                </asp:GridView>
            </div>
            <asp:SqlDataSource ID="SqlDsAplicacao" runat="server" ConnectionString="<%$ ConnectionStrings:DbAplicationConnectionString %>" SelectCommand="SELECT * FROM [Aplicacaos]"></asp:SqlDataSource>
        </div>

        <div class="col-md-4">
            <h2>Entrada de dados</h2>
            <br />
            <label>Nome da aplicação</label>
            <asp:RequiredFieldValidator runat="server" ID="VldName" ControlToValidate="TxtNome" ErrorMessage=" *Campo obrigatório" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="TxtNome" runat="server" CssClass="form-control" TextMode="SingleLine"></asp:TextBox>
            <label>Descrição</label>
            <asp:TextBox ID="TxtDesc" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
            <label>Data de cadastro</label>
            <asp:RequiredFieldValidator runat="server" ID="VldData" ControlToValidate="TxtData" ErrorMessage=" *Campo obrigatório" ForeColor="Red">
            </asp:RequiredFieldValidator>
            <asp:TextBox ID="TxtData" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
            <label>Email do responsável</label>
            <asp:TextBox ID="TxtEmail" runat="server" CssClass="form-control" TextMode="Email"></asp:TextBox>
            <label>Status da aplicação</label>
            <asp:DropDownList ID="DdlStatus" runat="server" CssClass="form-control dropdown-toggle">
                <asp:ListItem Value="1">Bloqueado</asp:ListItem>
                <asp:ListItem Value="2">Desenvolvimento</asp:ListItem>
                <asp:ListItem Value="3">Testes</asp:ListItem>
                <asp:ListItem Value="4">Aprovado</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="LblTest" runat="server" Text="Indice a ser editado ou deletado" Visible="False"></asp:Label>
            <asp:Label ID="LblTest2" runat="server" Text="" Visible="False"></asp:Label>
            <br />
            <asp:Button ID="BtnAdd" runat="server" OnClick="BtnAdd_Click" Text="Adicionar" CssClass="btn btn-primary" Width="90px" />
            <asp:Button ID="BtnEdit" runat="server" OnClick="BtnEdit_Click" Text="Editar" CssClass="btn btn-primary" Width="90px" Visible="False" />
            <asp:Button ID="BtnRemove" runat="server" OnClick="BtnRemove_Click" Text="Remover" CssClass="btn btn-danger" Width="90px" Visible="False" />
            <asp:Button ID="BtnCancelar" runat="server" OnClick="BtnCancelar_Click" Text="Cancelar" CssClass="btn btn-primary" Width="90px" Visible="False" />
            <div class="input-group">
            </div>
        </div>
    </div>
</asp:Content>
