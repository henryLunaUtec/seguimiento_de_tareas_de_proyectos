using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace seguimiento_de_tareas_de_proyectos.Views
{
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlRoles.Items.Clear();
                ddlRoles.Items.Add(new ListItem("Seleccione...", ""));
                ddlRoles.Items.Add(new ListItem("Administrador", "admin"));
                ddlRoles.Items.Add(new ListItem("Gerente de Proyecto", "projectManager"));
                ddlRoles.Items.Add(new ListItem("Desarrollador", "dev"));
                ddlRoles.Items.Add(new ListItem("Cliente", "customer"));
            }
        }

        protected void btnSaveUser_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string nombre = txtNombre.Text;
                addUser();
                lblResult.Text = "Usuario "+ nombre + " guardado existosamente";
                LimpiarFormulario();
            }
        }

        private void addUser()
        {
            DataTable dt = new DataTable(); // creamos instancia del data table
            //con column add agregamos una columna al data table
            dt.Columns.Add("Nombre");
            dt.Columns.Add("Apellido");
            dt.Columns.Add("Email");
            dt.Columns.Add("Rol");

            //hacemos el llenado de la informacion por cada fila
            DataRow fila = dt.NewRow();
            fila["Nombre"] = txtNombre.Text;
            fila["Apellido"] = txtApellido.Text;
            fila["Email"] = txtEmail.Text;
            fila["Rol"] = ddlRoles.SelectedItem.Text;

            dt.Rows.Add(fila);// insertamos la informacion en el contenedor del datatable
            gvUsuarios.DataSource = dt; // le decimos de donde debe de tomar los datos
            gvUsuarios.DataBind(); // aqui le decimos que renderice la informacion
        }

        private void LimpiarFormulario()
        {
            txtNombre.Text = string.Empty;
            txtApellido.Text = string.Empty;
            txtEmail.Text = string.Empty;
            txtPassword.Text = string.Empty;

            if (ddlRoles.Items.Count > 0) ddlRoles.SelectedIndex = 0;
        }
    }
}