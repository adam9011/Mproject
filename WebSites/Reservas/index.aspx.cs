using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            Response.Write(Session["usuario"].ToString());
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            clsClientes clte = new clsClientes(0, "", "", "", "","","");
        if (clte.consultaCliente(int.Parse(txtid.Text)))
        {
            lblestado.Text = "Usuario registrado";

        }
        else
        {
                Response.Write("<script>window.alert('Usuario no registrado');</script>" + "<script>window.setTimeout(location.href='Usuarios.aspx', 2000);</script>");

            }

        }
        catch
        {
            
        }
    }

}