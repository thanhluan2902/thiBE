<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhsachNV.aspx.cs" Inherits="_6651783LeQuocViet04.DanhsachNV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="style/main.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <p align="center">
                <a href="DanhsachNV.aspx">Danh sách nhân viên</a> |
                <a href="TimKiemNV.aspx">Tìm kiếm nhân viên</a>
            </p>
            <h1>DANH SÁCH NHÂN VIÊN</h1>

            <asp:Table ID="tblNV" runat="server">
                <asp:TableRow runat="server" class="tieude">
                    <asp:TableCell runat="server">STT</asp:TableCell>
                    <asp:TableCell runat="server">Mã NV</asp:TableCell>
                    <asp:TableCell runat="server">Tên NV</asp:TableCell>
                    <asp:TableCell runat="server">Ngày sinh</asp:TableCell>
                    <asp:TableCell runat="server">Chức vụ</asp:TableCell>
                    <asp:TableCell runat="server">Phòng ban</asp:TableCell>
                </asp:TableRow>
            </asp:Table>

        </div>
    </form>
</body>
</html>
