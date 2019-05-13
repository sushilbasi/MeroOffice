using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALayer;
using DALayer;
using System.Data;
using System.Data.SqlClient;

namespace MeroOffice
{
    public partial class EditEmployee : System.Web.UI.Page
    {
        UpdateEmployee balObj = new UpdateEmployee();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            string gender = string.Empty;
            if (RadioMale.Checked)
            {
                gender = "Male";
            }
            else
            {
                gender = "Female";
            }
            balObj.updateEmployee(txtEid.Text, txtUsername.Text, txtPassword.Text, txtFname.Text, txtLname.Text, txtDob.Text, txtEmail.Text, txtAddress.Text, gender);
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();
        }
    }
}