using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seguimiento_de_tareas_de_proyectos
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //evitamos la perdida de datos tras un postbac
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                    //evitamos la perdida de la sesion en caso haya
                }
                
            }

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            //hacemos la verificacion que  nuestro usuario y coontrase;a sean los que esperamos para dar acceso
            // mas adelante aqui se debera de hacer de la validacion con la DB
            string passwordValid = "admin123";
            string userValid = "thisadmin";
            bool isValidPass = false;
            bool isValidUser = false;
            string user = txtUser.Text.Trim();
            string pass = txtPassword.Text.Trim();

            if (Page.IsValid)
            {

                isValidUser = user.Equals(userValid);
                isValidPass = pass.Equals(passwordValid);

                if (isValidUser && isValidPass)
                {
                    Response.Redirect("~/Views/dashboard.aspx");
                    //Session["usuario"] = "Admin";
                }
                else
                {
                    lblUserNotFound.Text = (isValidUser && isValidPass) ? "" : "Usuario no encontrado";
                }

            }
        }
    }
}