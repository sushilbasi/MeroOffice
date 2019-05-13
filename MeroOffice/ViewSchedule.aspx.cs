using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALayer;
using System.Data;
using System.Data.SqlClient;

namespace MeroOffice
{
    public partial class ViewSchedule : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=.; Database=dbemployee; User ID=sa; Password=sql");
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        DataTable dt2 = new DataTable();
        DataTable dt3 = new DataTable();
        DataTable dt4 = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from tblEmployeelogin where Username='" + Session["Username"] + "'", con);
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            lblEID.Text = dt.Rows[0]["EID"].ToString();
            con.Close();


            if (lblEID.Text != null)
            {
                SqlCommand comd1 = new SqlCommand("Select First from tblEmployee where EID='" + lblEID.Text + "'", con);
                con.Open();
                SqlDataAdapter first = new SqlDataAdapter();
                first.SelectCommand = comd1;
                first.Fill(dt1);
                lblFirst.Text = dt1.Rows[0]["First"].ToString();
                con.Close();
                if(lblFirst.Text != null && lblFirst.Text != "0")
                {
                    blViewSchedule blObj = new blViewSchedule();
                    GridView1.DataSource = blObj.firstTable();
                    GridView1.DataBind();
                }

            }
           if (lblEID.Text != null)
            {
                SqlCommand comd2 = new SqlCommand("Select second from tblEmployee where EID='" + lblEID.Text + "'", con);
                con.Open();
                SqlDataAdapter second = new SqlDataAdapter();
                second.SelectCommand = comd2;
                second.Fill(dt2);
                lblSecond.Text = dt2.Rows[0]["Second"].ToString();
                con.Close();
                if (lblSecond.Text != null && lblSecond.Text !="0")
                {
                    blViewSchedule blObj = new blViewSchedule();
                    GridView2.DataSource = blObj.secondTable();
                    GridView2.DataBind();
                }
            }
                
            if (lblEID.Text != null)
            {
                SqlCommand comd3 = new SqlCommand("Select third from tblEmployee where EID='" + lblEID.Text + "'", con);
                con.Open();
                SqlDataAdapter third = new SqlDataAdapter();
                third.SelectCommand = comd3;
                third.Fill(dt3);
                lblThird.Text = dt3.Rows[0]["Third"].ToString();
                con.Close();
                if (lblThird.Text != null && lblThird.Text !="0")
                {
                    blViewSchedule blObj = new blViewSchedule();
                    GridView3.DataSource = blObj.thirdTable();
                    GridView3.DataBind();
                }

            }

            if (lblEID.Text != null)
            {
                SqlCommand comd4 = new SqlCommand("Select Fourth from tblEmployee where EID='" + lblEID.Text + "'", con);
                con.Open();
                SqlDataAdapter four = new SqlDataAdapter();
                four.SelectCommand = comd4;
                four.Fill(dt4);
                lblFourth.Text = dt4.Rows[0]["Fourth"].ToString();
                con.Close();
                if (lblFourth.Text != null && lblFourth.Text !="0")
                {
                    blViewSchedule blObj = new blViewSchedule();
                    GridView4.DataSource = blObj.fourthTable();
                    GridView4.DataBind();
                }

            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}