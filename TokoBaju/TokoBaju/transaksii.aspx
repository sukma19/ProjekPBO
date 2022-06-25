<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="transaksii.aspx.cs" Inherits="TokoBaju.transaksii" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

    <table>  
        <tr>  
            <td colspan="2">  
                <h1>Transaksi</h1>  
            </td>  
        </tr>  
        <tr>  
            <td>ID Transaksi</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmpidtransaksi" runat="server"></asp:TextBox>  
            </td>  
        </tr>  
        <tr>  
            <td>Nama Pelanggan</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmpnamapelanggan" runat="server"></asp:TextBox>  
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
            <td>Jumlah Produk</td>  
            <td>:</td>  
            <td>  
                <asp:TextBox ID="txtEmpjumlahproduk" runat="server"></asp:TextBox>  
            </td>  
        </tr>
        <tr>  
        <td colspan="2">  
            <asp:Button ID="btnInsertion" runat="server" Text="Selesai" OnClick="btnInsertion_Click" Style="width: 48px" />  
            <asp:Label ID="lblmsg" runat="server" ForeColor="Red"></asp:Label>  
        </td>  
        </tr>
    </table>

    </form>
</body>
</html>
