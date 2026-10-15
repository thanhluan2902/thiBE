<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TimKiemNV.aspx.cs" Inherits="_6651783LeQuocViet04.TimKiemNV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/main.css" />
    <style type="text/css">
        .auto-style1 {
            width: 50%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p align="center">
                <a href="DanhsachNV.aspx">Danh sách nhân viên</a> |
                <a href="TimKiemNV.aspx">Tìm kiếm nhân viên</a>
            </p>
            <h1>TÌM KIẾM NHÂN VIÊN</h1>
            <table align="center" cellpadding="3" cellspacing="3" class="auto-style1">
                <tr>
                    <td>Nhập mã nhân viên</td>
                    <td>
                        <asp:TextBox ID="txtmanv" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btntim" runat="server" Text="Tìm kiếm" OnClick="btntim_Click" />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Table ID="tblKQ" runat="server" Visible="false">
                <asp:TableRow runat="server" class="tieude">
                    <asp:TableCell runat="server">Mã NV</asp:TableCell>
                    <asp:TableCell runat="server">Tên NV</asp:TableCell>
                    <asp:TableCell runat="server">Ngày sinh</asp:TableCell>
                    <asp:TableCell runat="server">Chức vụ</asp:TableCell>
                    <asp:TableCell runat="server">Phòng ban</asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <p align="center">
                <asp:Label ID="lblthongbao" runat="server" ForeColor="Red"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
