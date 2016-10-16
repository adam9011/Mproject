using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;




/// <summary>
///Clase de conexion a la BD
/// </summary>

  
public class Clsconexion
{
    protected SqlDataReader reader;
    protected SqlDataAdapter AdaptaDordatos;
    protected DataSet data;
    protected SqlConnection oconeccion = new SqlConnection();



    public Clsconexion()
    {
        
    }
    public void conectar(string tabla)
    {
        string strconeccion = ConfigurationManager.ConnectionStrings["reservasConnectionString"].ConnectionString;
        oconeccion.ConnectionString = strconeccion;
        oconeccion.Open();
        AdaptaDordatos = new SqlDataAdapter("select * from " + tabla, oconeccion);
        SqlCommandBuilder ejecutacomandos = new SqlCommandBuilder(AdaptaDordatos);
        Data = new DataSet();
        AdaptaDordatos.Fill(data, tabla);
        oconeccion.Close();

    }

    public DataSet Data  {
        set { data = value; }
        get { return data; }
    }
    public SqlDataReader DataReader
    {
        set { reader = value; }
        get { return reader; }
    }
}
