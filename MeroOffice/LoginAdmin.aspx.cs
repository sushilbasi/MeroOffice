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
    public partial class LoginAdmin : System.Web.UI.Page
    {
        blAdminlogin ba = new blAdminlogin();
        daAdminlogin da = new daAdminlogin();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            da.Username = txtUsername.Text;
            da.Password = txtPassword.Text;
            dt = ba.tblAdminlogin(da);

            if (dt.Rows.Count > 0)
            {
                Session["Username"] = txtUsername.Text;
                Session["Password"] = txtPassword.Text;
                Response.Redirect("AddEmployee.aspx");
            }
            else
            {
                Response.Write("<script>alert('invalid username or password')</Script>");
            }
        }
    }
}