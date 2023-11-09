<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="orden.aspx.cs" Inherits="RestauraneUPI.orden" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Numero de mesa</label>
        <asp:TextBox ID="tmesa" class="form-control" runat="server"></asp:TextBox>
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Cliente</label>
        <asp:DropDownList ID="dcliente" class="form-control" runat="server"></asp:DropDownList>
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Mesero</label>
        <asp:DropDownList ID="dmesero" class="form-control" runat="server"></asp:DropDownList>
    </div>

    <div class="mb-3">
        <label for="exampleFormControlInput1" class="form-label">Orden</label>
        <asp:TextBox ID="torden" class="form-control" runat="server" Height="89px" TextMode="MultiLine"></asp:TextBox>
    </div>

    <div class="mb-3">
        <asp:Button ID="Bingresar" class="btn btn-primary form-control" runat="server" Text="ingresar Pedido" OnClick="Bingresar_Click" />
    </div>

</asp:Content>
