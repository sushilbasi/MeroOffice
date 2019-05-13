using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

//using System.Data.SqlServerCe;


using BALayer;
using DALayer;

namespace MeroOffice
{
    public partial class ViewEmployee : System.Web.UI.Page
    {
        // SqlCeConnection con = new SqlCeConnection("Data Source=.; Initial Catalog=dbemployee; User ID=sa; Password=sql");
        SqlConnection con = new SqlConnection("Data Source=.; Database=dbemployee; User ID=sa; Password=sql");
        SqlDataAdapter sda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        public void Page_Load(object sender, EventArgs e)  // string Firstname, string Lastname, string Dateofbirth, string Email, string Address, String Gender
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT * from tblEmployeelogin where Username='"+Session["Username"]+"'",con);
            sda.SelectCommand = cmd;
            sda.Fill(dt);
            lblEID.Text = dt.Rows[0]["EID"].ToString();
            con.Close();

            if (lblEID.Text != null)
            {
                SqlConnection con = new SqlConnection("Data Source=.; Database=dbemployee; User ID=sa; Password=sql");
                SqlCommand comd = new SqlCommand("Select * from tblEmployee where EID='" + lblEID.Text + "'", con);
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
       
       //{
       //     blEmployeelogin ba = new blEmployeelogin();
       //     daEmployeelogin da = new daEmployeelogin();
       //     DataTable dt = new DataTable();
       //     string abc = Session["Username"].ToString();
       //     da.EID = abc;
       //     dt = ba.tblEmployeelogin(da);

       //     SqlCommand comd = new SqlCommand("Select EID From tblEmployee WHERE EID='" + Session["Username"] + "'", con);
            
       //     SqlCommand cmd = new SqlCommand("Select Firstname, Lastname, Dateofbirth, Email, Address, Gender From tblEmployee WHERE EID = abc", con);
       //     con.Open();

       //     SqlDataReader rd;
       //     rd = comd.ExecuteReader();
       //     con.Close();
       //     con.Open();
       //     rd = cmd.ExecuteReader();

       //     while(rd.Read())
       //     {
       //             lblFname.Text = rd.GetString(0);
       //             lblLname.Text = rd.GetString(1);
       //             lblDob.Text = rd.GetString(2);
       //             lblEmail.Text = rd.GetString(3);
       //             lblAddress.Text = rd.GetString(4);
       //             lblGender.Text = rd.GetString(5);
       //         Label lb = new Label();
       //         lb.Text = rd.GetString(1);


       //     }
       //     con.Close();

       // }

        //SqlCeCommand cmd = new SqlCeCommand("SELECT tblEmployee.Firstname, tblEmployee.Lastname, tblEmployee.Dateofbirth,tblEmployee.Email,tblEmployee.Address,tblEmployee.Gender SELECT tblEmployee.Firstname, tblEmployee.Lastname, tblEmployee.Dateofbirth,tblEmployee.Email,tblEmployee.Address,tblEmployee.Gender From tblEmployee inner join tblEmployeelogin on tblEmployee.EID = tblEmployeelogin.EID WHERE tblEmployeelogin.EID='" + Session["Username"] + "'", con);    
        //con.Open();      
        //SqlCeDataReader rd;
        //rd = cmd.ExecuteReader();

        //while (rd.Read())
        //{


        //Label lb = new Label();
        //    lb.Text = rd.GetString(1);
        //    lblFname.Text = rd.GetString(0);
        //    lblLname.Text = rd.GetString(1);
        //    lblDob.Text = rd.GetString(2);
        //    lblEmail.Text = rd.GetString(3);
        //    lblAddress.Text = rd.GetString(4);
        //    lblGender.Text = rd.GetString(5);

        //    Panel2.Controls.Add(lb);
        //    Panel3.Controls.Add(lblLname);
        //    Panel4.Controls.Add(lblDob);
        //    Panel5.Controls.Add(lblEmail);
        //    Panel6.Controls.Add(lblAddress);
        //    Panel7.Controls.Add(lblGender);
        //}


        //con.Close();



        // daEmployeelogin da = new daEmployeelogin();
        // blEmployeelogin ba = new blEmployeelogin();
        // daViewemployee dve = new daViewemployee();
        // blViewemployee bve = new blViewemployee();
        // SqlDataReader rd;
        //// DataTable dt = new DataTable();
        // DataTable dt1 = new DataTable();
        // protected void Page_Load(object sender, EventArgs e)
        // {
        //     string Username = Session["Username"].ToString();
        //     string Password = Session["Password"].ToString();
        //     string EID = Session["EID"].ToString();
        //     da.Username = Username;
        //     da.Password = Password;
        //     bve.EID = EID;
        //     dt1 = ba.tblEmployeelogin(da);

        //while(rd.Read())
        //{
        //    lblFname.Text = rd.GetString(0);
        //    lblLname.Text = rd.GetString(1);
        //    lblDob.Text = rd.GetString(2);
        //    lblAddress.Text = rd.GetString(3);
        //    lblGender.Text = rd.GetString(4);
        //}


    }
}