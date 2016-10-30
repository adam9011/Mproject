using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try { 
        clsClientes clte = new clsClientes(0, "", "", "", "","","");
        clte.Idcliente = int.Parse(txtdocumento.Text.Trim());
        clte.Nombres = txtnombre.Text;
        clte.Apellidos = txtapellido.Text;
        clte.Email = txtcorreo.Text;
        clte.Telefono = txttelefono.Text;
        clte.Usuario = txtuser.Text;
        clte.Contraseña = txtpass.Text;

        clte.agregar();
        lblregistro.Text = "Registro exitoso";

        txtdocumento.Text = "";
        txtnombre.Text = "";
        txtapellido.Text = "";
        txtcorreo.Text = "";
        txttelefono.Text = "";
        txtuser.Text = "";
        txtpass.Text = "";
        }
        catch
        {
            lblregistro.Text = "El documento ya se encuentra registrado, ingrese otro documento";
        }

    }
}