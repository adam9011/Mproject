using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class reservas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
 

        {
        if (Session["usuario"].Equals(""))
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
            

            clsreservas clte = new clsreservas("", "", "", "", "");
        int minutosI, minutosF;
        minutosI= Convert.ToInt32(minutosi.Text);
        minutosF= Convert.ToInt32(minutosf.Text);

        if
         (minutosI < 60 & minutosF < 60)
        {

        
        
        clte.Auditorio = txtauditorio.Items[txtauditorio.SelectedIndex].Text.Trim();
        clte.Fecha = DateTime.Now.ToString(txtFecha.Text);
        clte.HoraI = slchorai.Items[slchorai.SelectedIndex].Text.Trim() + minutosi.Text;
        clte.HoraF = slchoraf.Items[slchoraf.SelectedIndex].Text.Trim() + minutosf.Text;
                clte.Observacines = txtobservaciones.Value;

                clte.agregar();
            solicitud.Text = "Registro exitoso";


        Response.Write("<script>window.alert('Solicitud Enviada');</script>" + "<script>window.setTimeout(location.href='reservas.aspx', 2000);</script>");
        }
        else
        {
            solicitud.Text = "Ingrese valores validos en el campo de minutos";
        }

    }

    
}