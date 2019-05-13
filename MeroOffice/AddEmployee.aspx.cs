using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALayer;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace MeroOffice
{
    public partial class admin : System.Web.UI.Page
    {
        AddEmployee balObj = new AddEmployee();
        
        SqlCommand cmd = null;
        SqlDataReader dr = null;
        String SqlCmd = String.Empty;
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User Id=sa; Password=sql");
        protected void Page_Load(object sender, EventArgs e)
        {
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();

            if (!Page.IsPostBack)
            {
                BindSubject1DLL();
                BindSubject2DLL();
                BindSubject3DLL();
                BindSubject4DLL();
            }

        }

        void BindSubject1DLL()
        {
            try
            {
                SqlCmd = "spGetAllSubject1";
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd = new SqlCommand(SqlCmd, con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                ddlFirst.DataSource = dr;
                ddlFirst.DataTextField = "Subject";
                ddlFirst.DataValueField = "SID";
                ddlFirst.DataBind();

                ddlFirst.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (SqlException ex1)
            {
                lblFirst.Text = "<b style='color:red'>" + ex1.Message + "<br/>";
            }
            catch (Exception ex2)
            {
                lblFirst.Text = "<b style='color:red'>" + ex2.Message + "<br/>";
            }
            finally
            {
                con.Close();
                dr.Close();
            }

        }

        void BindSubject2DLL()
        {
            try
            {
                SqlCmd = "spGetAllSubject2";
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd = new SqlCommand(SqlCmd, con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                ddlSecond.DataSource = dr;
                ddlSecond.DataTextField = "Subject";
                ddlSecond.DataValueField = "SID";
                ddlSecond.DataBind();

                ddlSecond.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (SqlException ex1)
            {
                lblFirst.Text = "<b style='color:red'>" + ex1.Message + "<br/>";
            }
            catch (Exception ex2)
            {
                lblFirst.Text = "<b style='color:red'>" + ex2.Message + "<br/>";
            }
            finally
            {
                con.Close();
                dr.Close();
            }

        }

        void BindSubject3DLL()
        {
            try
            {
                SqlCmd = "spGetAllSubject3";
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd = new SqlCommand(SqlCmd, con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                ddlThird.DataSource = dr;
                ddlThird.DataTextField = "Subject";
                ddlThird.DataValueField = "SID";
                ddlThird.DataBind();

                ddlThird.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (SqlException ex1)
            {
                lblFirst.Text = "<b style='color:red'>" + ex1.Message + "<br/>";
            }
            catch (Exception ex2)
            {
                lblFirst.Text = "<b style='color:red'>" + ex2.Message + "<br/>";
            }
            finally
            {
                con.Close();
                dr.Close();
            }

        }

        void BindSubject4DLL()
        {
            try
            {
                SqlCmd = "spGetAllSubject4";
                if (con.State != ConnectionState.Open)
                    con.Open();
                cmd = new SqlCommand(SqlCmd, con);
                cmd.CommandType = CommandType.StoredProcedure;
                dr = cmd.ExecuteReader();
                ddlFourth.DataSource = dr;
                ddlFourth.DataTextField = "Subject";
                ddlFourth.DataValueField = "SID";
                ddlFourth.DataBind();

                ddlFourth.Items.Insert(0, new ListItem("Select", "0"));
            }
            catch (SqlException ex1)
            {
                lblFirst.Text = "<b style='color:red'>" + ex1.Message + "<br/>";
            }
            catch (Exception ex2)
            {
                lblFirst.Text = "<b style='color:red'>" + ex2.Message + "<br/>";
            }
            finally
            {
                con.Close();
                dr.Close();
            }

        }


        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            
            if(RadioMale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }

            string Image = string.Empty;
            if (!FileUpload1.HasFile)
            {
                lblError.Text = "Plz Insert image";

            }
            else
            {
                
                EnsureDirectoriesExist();
                Image = Server.MapPath(@"~/Image/ " + FileUpload1.FileName);
                FileUpload1.SaveAs(Image);
             
            }

            balObj.insertDetail(txtUsername.Text, txtPassword.Text, txtFname.Text, txtLname.Text, txtDob.Text, txtEmail.Text, txtAddress.Text, gender, Image,txtFaculty.Text, ddlFirst.SelectedItem.Value, ddlSecond.SelectedItem.Value, ddlThird.SelectedItem.Value, ddlFourth.SelectedItem.Value);
          
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();
        }

        public void EnsureDirectoriesExist()
        {
            if(!System.IO.Directory.Exists(Server.MapPath(@"~/Image/")))
            {
                System.IO.Directory.CreateDirectory(Server.MapPath(@"~/Image/ "));
            }
        }

    }
}