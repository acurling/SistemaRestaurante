<%@ Page Title="" Language="C#" MasterPageFile="~/menu.Master" AutoEventWireup="true" CodeBehind="Pedidos.aspx.cs" Inherits="RestauraneUPI.Pedidos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center">
        <asp:ImageButton ID="ImageButton1" ImageUrl="Imagenes/MesaDesactivada.png" runat="server" Height="338px" Width="388px" OnClick="ImageButton1_Click" />
        <asp:ImageButton ID="ImageButton2" ImageUrl="Imagenes/MesaDesactivada.png" runat="server" Height="338px" Width="388px" OnClick="ImageButton2_Click" />
        <asp:ImageButton ID="ImageButton3" ImageUrl="~/Imagenes/MesaDesactivada.png" runat="server" Height="338px" Width="388px" OnClick="ImageButton3_Click" />
        <asp:ImageButton ID="ImageButton4" ImageUrl="Imagenes/MesaDesactivada.png" runat="server" Height="338px" Width="388px" OnClick="ImageButton4_Click" />
        <asp:Button ID="Button1" class="btn btn-warning" runat="server" Text="Button" />
    </div>
</asp:Content>
