using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace _6651783LeQuocViet04
{
    public partial class TimKiemNV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btntim_Click(object sender, EventArgs e)
        {
            string constring = WebConfigurationManager.ConnectionStrings["qlnhansu"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            con.Open();
            SqlCommand cmd = new SqlCommand("pro_TimNV", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@manv", txtmanv.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                TableRow row = new TableRow();
                for (int j = 0; j < 5; j++)
                {
                    TableCell c = new TableCell();
                    c.Text = dr[j].ToString();
                    row.Cells.Add(c);
                }
                tblKQ.Rows.Add(row);
                tblKQ.Visible = true;
                lblthongbao.Text = "";
            }
            else
            {
                tblKQ.Visible = false;
                lblthongbao.Text = "Không tìm thấy nhân viên";
            }
            con.Close();
        }
    }
}
