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
    public partial class transaksi : System.Web.UI.Page
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
                    cmd.CommandText = "Insert into transaksi (idtransaksi, namapelanggan, idproduk, jumlahproduk) values(@idtransaksi,@namapelanggan,@idproduk,@jumlahproduk)";
                    cmd.CommandType = CommandType.Text;
                    cmd.Parameters.Add(new NpgsqlParameter("@idtransaksi", Convert.ToInt32(txtidtransaksi.Text)));
                    cmd.Parameters.Add(new NpgsqlParameter("@namapelanggan", txtnamapelanggan.Text));
                    cmd.Parameters.Add(new NpgsqlParameter("@idproduk", Convert.ToInt32(txtidproduks.Text)));
                    cmd.Parameters.Add(new NpgsqlParameter("@jumlahproduk", Convert.ToInt32(txtjumlahproduk.Text)));
                    cmd.ExecuteNonQuery();
                    cmd.Dispose();
                    connection.Close();
                    txtidtransaksi.Text = "";
                    txtnamapelanggan.Text = "";
                    txtidproduks.Text = "";
                    txtjumlahproduk.Text = "";
                    lblmsg.Text = "Transaksi Berhasil";
                }
            }
            catch (Exception ex) { }
        }
    }
}