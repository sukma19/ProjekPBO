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
    public partial class editproduk : System.Web.UI.Page
    {
        protected void btnUpdation_Click(object sender, EventArgs e)
        {
            try /* Updation After Validations*/
            {
                using (NpgsqlConnection connection = new NpgsqlConnection("Server=localhost; Port=5432; Database=postgres; User Id=postgres; Password=12345678"))
                {
                    //connection.ConnectionString = ConfigurationManager.ConnectionStrings["constr"].ToString();
                    connection.Open();
                    NpgsqlCommand cmd = new NpgsqlCommand();
                    cmd.Connection = connection;
                    cmd.CommandText = "update produk set idproduk=@idproduk,namaproduk=@namaproduk,hargaproduk=@hargaproduk where idproduk=@idproduk";
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
                    lblmsg.Text = "Pembaruan telah disimpan";

                }
            }
            catch (Exception ex) { }
        }
    }
}