<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tambahproduk.aspx.cs" Inherits="TokoBaju.tambahproduk" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
</head>
<body class="container">

    <nav class="navbar navbar-expand-lg bg-light container shadow">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">Toko Baju</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="transaksi.aspx">Transaksi</a>
            </li>
            <li class="nav-item">
              <a class="nav-link active" aria-current="page" href="riwayattransaksi.aspx">Riwayat Transaksi</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Produk
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="lihatproduk.aspx">Lihat Produk</a></li>
                <li><a class="dropdown-item" href="tambahproduk.aspx">Tambah Produk</a></li>
                <li><a class="dropdown-item" href="editproduk.aspx">Edit Produk</a></li>
                <li><a class="dropdown-item" href="hapusproduk.aspx">Hapus Produk</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </div>
    </nav>

    <form id="form1" runat="server">

    <table>  
        <tr>  
            <td colspan="2">  
                <h1>Tambah Produk</h1>  
            </td>  
        </tr>  
        <tr>  
            <td>ID Produk</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmpidproduk" runat="server"></asp:TextBox>  
            </td>  
        </tr>  
        <tr>  
            <td>Nama Produk</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmpnamaproduk" runat="server"></asp:TextBox>  
            </td>  
        </tr>  
        <tr>  
            <td>Harga Produk</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmphargaproduk" runat="server"></asp:TextBox>  
            </td>  
        </tr>
        <tr>  
        <td colspan="2">  
            <asp:Button ID="btnInsertion" runat="server" Text="Tambah" OnClick="btnInsertion_Click" type="button" class="btn btn-success"/>  
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>  
        </td>  
    </tr>
    </table>  

    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</body>
</html>
