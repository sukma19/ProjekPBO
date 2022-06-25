using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using Npgsql;


namespace TokoBaju
{
    public partial class tambahproduk : System.Web.UI.Page
    {
        protected void btnInsertion_Click(object sender, EventArgs e)
        {
            try
            {
                /* Insertion After Validations*/
                using (NpgsqlConnection connection = new NpgsqlConnection("Server=localhost; Port=5432; Database=postgres; User Id=postgres; Password=12345678"))
                {
                    //connection.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ToString();
                    connection.Open();
                    NpgsqlCommand cmd = new NpgsqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandText = "Insert into produk values(@idproduk,@namaproduk,@hargaproduk)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add(new NpgsqlParameter("@idproduk", Convert.ToInt32(txtEmpidproduk.Text)));
                    cmd.Parameters.Add(new NpgsqlParameter("@namaproduk", txtEmpnamaproduk.Text));
                    cmd.Parameters.Add(new NpgsqlParameter("@hargaproduk", Convert.ToInt32(txtEmphargaproduk.Text)));
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    connection.Close();
                    txtEmpidproduk.Text = "";
                    txtEmpnamaproduk.Text = "";
                    txtEmphargaproduk.Text = "";
                    lblmsg.Text = "Produk Baru Telah Tersimpan";
                }
            }
            catch (Exception ex) { }
        }
    }
}