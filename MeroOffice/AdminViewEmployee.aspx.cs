using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace MeroOffice
{
    public partial class AdminViewEmployee : System.Web.UI.Page
    {
        DataTable dt1 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.; Database=dbemployee; User ID=sa; Password=sql");
            SqlCommand comd = new SqlCommand("Select * from tblEmployee where EID='" + txtEID.Text + "'", con);
            con.Open();
            SqlDataAdapter sdda = new SqlDataAdapter();
            sdda.SelectCommand = comd;
            sdda.Fill(dt1);
            lblFname.Text = dt1.Rows[0]["Firstname"].ToString();
            lblLname.Text = dt1.Rows[0]["Lastname"].ToString();
            lblDob.Text = dt1.Rows[0]["Dateofbirth"].ToString();
            lblEmail.Text = dt1.Rows[0]["Email"].ToString();
            lblAddress.Text = dt1.Rows[0]["Address"].ToString();
            lblGender.Text = dt1.Rows[0]["Gender"].ToString();
            con.Close();
        }
    }
}