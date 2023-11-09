<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Mesas.aspx.cs" Inherits="RestauraneUPI.Mesas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <p><h2>CATALOGO DE MESAS</h2></p>
    </div>

    <div>
        <br />
        <br />
        <asp:GridView runat="server" ID="datagrid" PageSize="10" HorizontalAlign="Center"
            CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header"
            RowStyle-CssClass="rows" AllowPaging="True"    />

        <br />
        <br />
        <br />

    </div>

    <div class="container text-center">
         <button type="button" class="btn btn-outline-primary">Agregar</button>
    <button type="button" class="btn btn-outline-secondary">Borrar</button>
    <button type="button" class="btn btn-outline-success">Modificar</button>
    <button type="button" class="btn btn-outline-danger">Consultar</button>
    </div>

</asp:Content>
