<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tasks.aspx.cs" Inherits="seguimiento_de_tareas_de_proyectos.Views.tasks" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Registro de Nueva Tarea</h2>
<hr />
<div>
    <p>Nombre de la Tarea:</p>
    <asp:TextBox ID="txtTarea" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvTarea" runat="server" 
        ControlToValidate="txtTarea" 
        ErrorMessage="El nombre es obligatorio" 
        ForeColor="Red" />
</div>
<br />
<div>
    <p>Prioridad:</p>
    <asp:DropDownList ID="ddlPrioridad" runat="server">
        <asp:ListItem Text="-- Seleccione --" Value="" />
        <asp:ListItem Text="Alta" Value="A" />
        <asp:ListItem Text="Media" Value="M" />
        <asp:ListItem Text="Baja" Value="B" />
    </asp:DropDownList>
    <asp:RequiredFieldValidator ID="rfvPrioridad" runat="server" 
        ControlToValidate="ddlPrioridad" InitialValue="" 
        ErrorMessage="Seleccione una prioridad" 
        ForeColor="Red" />
</div>
<br />
<asp:Button ID="btnGuardar" runat="server" Text="Guardar Tarea" />

        </div>
    </form>
</body>
</html>
