<%@ Page Title="Contactanos" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="seguimiento_de_tareas_de_proyectos.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <h2 id="title"><%: Title %>.</h2>
        <h3>Facultad de Ingeniera UTEC</h3>
        <address>
            3a Calle Poniente, Blvd Constitucion #301<br />
            Col. Escalon, San Salvador<br />
            <abbr title="Phone">Tel</abbr>
            2275.8888
        </address>

        <address>
            <strong>Soporte Tecnico:</strong>   <a href="mailto:Soporte@utec.com">Soporte@utec.com</a><br />
            <strong>Proyecto:</strong> <a href="mailto:Proyecto@utec.com">Proyecto@utec.com</a>
        </address>
    </main>
</asp:Content>
