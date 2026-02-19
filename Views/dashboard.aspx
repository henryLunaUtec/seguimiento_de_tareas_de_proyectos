<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="seguimiento_de_tareas_de_proyectos.Views.proyectos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Panel ID="pnlDasboard" runat="server" BackColor="#66CCFF" BorderColor="Blue" BorderStyle="Solid" Height="350px" Width="350px">
            <asp:Label ID="lblSession" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnGoToTask" runat="server" OnClick="btnGoToTask_Click" Text="Ir a tareas" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnGoToUsers" runat="server" OnClick="btnGoToUsers_Click" Text="Ir a usuarios" />
            <br />
            <br />
            <br />
            <asp:Button ID="btnGoToContact" runat="server"  OnClick="btnGoToContact_Click" style="height: 26px" Text="Contactanos" />
        </asp:Panel>
    </form>
</body>
</html>
