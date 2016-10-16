using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;



/// <summary>
/// Clase para capturar datos de la reserva
/// </summary>
public class clsreservas : Clsconexion
{
    string tabla = "tbreserva";
    protected string auditorio, fecha, hora_inicio, hora_fin, observaciones;
    
    public clsreservas(string auditorio, string fecha, string hora_inicio, string hora_fin, string observaciones)
    {

        this.auditorio = auditorio;
        this.fecha = fecha;
        this.hora_inicio = hora_inicio;
        this.hora_fin = hora_fin;
        this.observaciones = observaciones;
    }
    //metodos para establecer y  recuperar datos

    public string Auditorio
    {
        set { auditorio = value; }
        get { return auditorio; }
    }
    public string Fecha
    {
        set { fecha = value; }
        get { return fecha; }
    }
    public string HoraI
    {
        set { hora_inicio = value; }
        get { return hora_inicio; }
    }
    public string HoraF
    {
        set { hora_fin = value; }
        get { return hora_fin; }
    }
    public string Observacines
    {
        set { observaciones = value; }
        get { return observaciones; }
    }


    //metodo agregar reserva
    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["auditorio"] = Auditorio;
        fila["fecha"] = Fecha;
        fila["hora_inicio"] = HoraI;
        fila["hora_fin"] = hora_fin;
        fila["observaciones"] = Observacines;

        Data.Tables[tabla].Rows.Add(fila);
        AdaptaDordatos.Update(Data, tabla);
    }
    ///
  
    ///

}