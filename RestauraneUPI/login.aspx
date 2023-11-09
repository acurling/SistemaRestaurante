<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RestauraneUPI.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <label for="exampleInputEmail1" class="form-label">Correo</label>
            <asp:TextBox ID="tlogin" class="form-control"  aria-describedby="emailHelp" runat="server"></asp:TextBox>
           
        </div>
        <div class="mb-3">
            <label for="exampleInputPassword1" class="form-label">Contraseña</label>
            <asp:TextBox ID="tclave" TextMode="Password" class="form-control" runat="server"></asp:TextBox>
        </div>
        <asp:Label ID="lmensaje" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" class="btn btn-primary btn-lg" runat="server" Text="Ingresar" OnClick="Button1_Click" />
    </form>
</body>
</html>
