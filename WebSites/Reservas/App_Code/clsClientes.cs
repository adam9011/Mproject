using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;



/// <summary>
/// Clase para capturar datos cliente
/// </summary>
public class clsClientes:  Clsconexion
{
    string tabla = "cliente";
    protected string nombres, apellidos, email, telefono, usuario, contraseña;
    protected int idcliente;
    public clsClientes(int idcliente, string nombres, string apellidos, string email, string  telefono, string usuario, string contraseña)
    {

        this.idcliente = idcliente;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.email = email;
        this.telefono = telefono;
        this.usuario = usuario;
        this.contraseña = contraseña;
    }
    //metodos para establecer y  recuperar datos

    public int Idcliente
    {
        set{ idcliente = value; }
        get { return idcliente; }
    }
    public string Nombres
    {
        set { nombres = value; }
        get { return nombres; }
    }
    public string Apellidos
    {
        set { apellidos = value; }
        get { return apellidos; }
    }
    public string Email
    {
        set { email = value; }
        get { return email; }
    }
    public string Telefono
    {
        set { telefono = value; }
        get { return telefono; }
    }
    public string Usuario
    {
        set { usuario = value; }
        get { return usuario; }
    }
    public string Contraseña
    {
        set { contraseña = value; }
        get { return contraseña; }
    }

    //metodo agregar registro cliente
    public void agregar()
    {
        conectar(tabla);
        DataRow fila;
        fila = Data.Tables[tabla].NewRow();
        fila["idcliente"] = Idcliente;
        fila["nombres"] = Nombres;
        fila["apellidos"] = Apellidos;
        fila["email"] = Email;
        fila["telefono"] = Telefono;
        fila["usuario"] = Usuario;
        fila["contraseña"] = Contraseña;


        Data.Tables[tabla].Rows.Add(fila);
        AdaptaDordatos.Update(Data, tabla);
    }

    public bool consultaCliente(int valor)
    {
        conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
            {
            fila = data.Tables[tabla].Rows[i];
            if (int.Parse(fila["idcliente"].ToString()) == valor)
                {
                idcliente = (int.Parse(fila["idcliente"].ToString()));
                Nombres = fila["nombres"].ToString();
                Apellidos = fila["apellidos"].ToString();
                Email = fila["email"].ToString();
                Telefono = fila["telefono"].ToString();
                Usuario = fila["usuario"].ToString();
                Contraseña = fila["contraseña"].ToString();

                return true;
            }

        }return false;
    }
    public bool consultaUsuario(String usuario, String contraseña)

    {
        conectar(tabla);
        DataRow fila;
        int x = Data.Tables[tabla].Rows.Count - 1;
        for (int i = 0; i <= x; i++)
        {
            fila = data.Tables[tabla].Rows[i];
            if (fila["usuario"].ToString() == usuario && fila["contraseña"].ToString() == contraseña)

                {

                Usuario = fila["usuario"].ToString();
                Contraseña = fila["contraseña"].ToString();

                return true;
            }

        }
        return false;
    }

}