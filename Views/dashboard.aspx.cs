using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace seguimiento_de_tareas_de_proyectos.Views
{
    public partial class proyectos : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["usuario"] != null)
                {
                    //evitamos la perdida de la sesion en caso haya
                    lblSession.Text = "Hola "+Session["usuario"].ToString() +"Bienvenido";
                }

            }
        }

        protected void btnGoToTask_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/tasks.aspx");
        }

        protected void btnGoToUsers_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Views/users.aspx");
        }
    }
}