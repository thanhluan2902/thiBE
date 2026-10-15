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
    public partial class DanhsachNV : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string constring = WebConfigurationManager.ConnectionStrings["qlnhansu"].ConnectionString;
            SqlConnection mycon = new SqlConnection(constring);
            mycon.Open();
            string sql = "select * from NHANVIEN";
            SqlCommand cmd = new SqlCommand(sql, mycon);
            SqlDataReader dr = cmd.ExecuteReader();
            int i, j;
            i = 1;
            while (dr.Read())
            {
                TableRow row = new TableRow();
                TableCell c = new TableCell();
                c.Text = i.ToString();
                row.Cells.Add(c);
                i++;
                for (j = 0; j < 5; j++)
                {
                    TableCell c2 = new TableCell();
                    c2.Text = dr[j].ToString();
                    row.Cells.Add(c2);
                }
                tblNV.Rows.Add(row);
            }
            mycon.Close();
        }
    }
}
