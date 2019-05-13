using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using BALayer;
using DALayer;


namespace MeroOffice
{
    public partial class LogIn : System.Web.UI.Page
    {
        blEmployeelogin ba = new blEmployeelogin();
        daEmployeelogin da = new daEmployeelogin();
        DataTable dt = new DataTable();
        DataTable dt1 = new DataTable();
        blViewemployee ve = new blViewemployee();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {

            da.Username = txtUsername.Text;
            da.Password = txtPassword.Text;
            dt = ba.tblEmployeelogin(da);
           
            if (dt.Rows.Count > 0)
            {
                Session["Username"] = txtUsername.Text;
                Session["Password"] = txtPassword.Text;
                
                Response.Redirect("ViewEmployee.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</Script>");
            }

        }
    }
}