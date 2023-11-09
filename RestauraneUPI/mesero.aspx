<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="mesero.aspx.cs" Inherits="RestauraneUPI.mesero" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
     <p><h2>CATALOGO DE MESEROS</h2></p>
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
        Codigo:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        nombre:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
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
