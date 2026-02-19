<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="users.aspx.cs" Inherits="seguimiento_de_tareas_de_proyectos.Views.users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="pnlUsers" runat="server" BackColor="#66CCFF" BorderColor="Blue" BorderStyle="Solid" Height="619px">
            <br />
            <br />
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="txtNombre" ErrorMessage="El campo de nombre es requerido">*</asp:RequiredFieldValidator>
            <asp:Label ID="lblNombre" runat="server" Text="Nombre"></asp:Label>
            <asp:TextBox ID="txtNombre" runat="server" Height="16px" Width="119px"></asp:TextBox>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="txtApellido" ErrorMessage="El campo de apellido es requerido">*</asp:RequiredFieldValidator>
            <asp:Label ID="lblApellido" runat="server" Text="Apellido"></asp:Label>
            <asp:TextBox ID="txtApellido" runat="server" Height="16px" Width="119px"></asp:TextBox>
            <br />
            <br />
            <asp:RegularExpressionValidator ID="rexCorreo" runat="server" ControlToValidate="txtEmail" ErrorMessage="El formato del correo no es valido" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="rfvCorreo" runat="server" ControlToValidate="txtEmail" ErrorMessage="El campo de correo es requerido">*</asp:RequiredFieldValidator>
            <asp:Label ID="lblEmail" runat="server" Text="Correo"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" Height="16px" Width="119px"></asp:TextBox>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="rfvPassword" runat="server" ControlToValidate="txtPassword" ErrorMessage="El campo de Contraseña es requerido">*</asp:RequiredFieldValidator>
            <asp:Label ID="lblPassword" runat="server" Text="Contraseña"></asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" Height="16px" Width="119px"></asp:TextBox>
            <br />
            <br />
            <asp:RequiredFieldValidator ID="rfvRoles" runat="server" ControlToValidate="ddlRoles" ErrorMessage="Debes seleccionar un rol">*</asp:RequiredFieldValidator>
            <asp:Label ID="lblRol" runat="server" Text="Roles"></asp:Label>
            &nbsp;<asp:DropDownList ID="ddlRoles" runat="server">
            </asp:DropDownList>
            <br />
            <br />
            <br />
            <asp:Button ID="btnSaveUser" runat="server" Text="Guardar Usuario" OnClick="btnSaveUser_Click" />
            <br />
            
            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
            
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Height="38px" />
            <br />
            <br />

            <h3>Usuarios Registrados</h3>
            <asp:GridView ID="gvUsuarios" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" 
                CellPadding="4" Width="100%">
                <Columns>
                    <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                    <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                    <asp:BoundField DataField="Email" HeaderText="Correo Electrónico" />
                    <asp:BoundField DataField="Rol" HeaderText="Rol Asignado" />
                </Columns>
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:GridView>

        </asp:Panel>
    </form>
</body>
</html>
