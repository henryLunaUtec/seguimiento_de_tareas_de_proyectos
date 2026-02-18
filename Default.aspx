<%@ Page Title="Home Page" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="seguimiento_de_tareas_de_proyectos._Default" %>
<form id="form1" runat="server">
    <asp:Panel ID="pnlContainer" runat="server" BackColor="#66CCFF" BorderColor="#3366FF" BorderStyle="Solid" Height="405px" Width="399px" style="display: flex; flex-direction:column; justify-content: center; align-items: center;">
        <br />
        <asp:Label ID="lblLogin" runat="server" Text="Sistema seguimiento de tareas y proyectos" Height="35px"></asp:Label>
        <div style="padding: 1rem; border-radius: 24px; border:solid 1px blue;">
        <br />
        <br />
        <br />
        <asp:Label ID="lblNameUser" runat="server" Text="Usuario"></asp:Label>
        <br />
        <asp:TextBox ID="txtUser" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvUser" runat="server" ControlToValidate="txtUser" ErrorMessage="Nombre de usuario es requerido" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
        <br />
        <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
        <br />
        <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="Contraseña es requerida" ForeColor="#CC0000"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesion" OnClick="btnLogin_Click" />
        <br />
        <asp:Label ID="lblUserNotFound" runat="server"></asp:Label>
        <br />
        </div>
    </asp:Panel>
</form>


