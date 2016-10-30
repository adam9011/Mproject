using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try

        {
           
            clsClientes clte = new clsClientes(0, "", "", "", "", "", "");
            DataSetusuariosTableAdapters.clienteTableAdapter obj = new DataSetusuariosTableAdapters.clienteTableAdapter();
            string sesion = obj.login(txtuser.Text, txtpass.Text).ToString();

            if (!sesion.Equals(""))
            {
                Session["usuario"] = sesion;

                Response.Write("<script>window.alert('Bienvenido');</script>" + "<script>window.setTimeout(location.href='index.aspx', 2000);</script>");
            }
            else
            {
               

            }

        }
        catch
        {
            Response.Write("<script>window.alert('Usuario o contraseña invalido');</script>" + "<script>window.setTimeout(location.href='login.aspx', 2000);</script>");
        }
    }
  
}