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
    public partial class DeleteEmployee : System.Web.UI.Page
    {
        BALayer.DeleteEmployee balObj = new BALayer.DeleteEmployee();
        protected void Page_Load(object sender, EventArgs e)
        {
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            balObj.deleteEmployee(txtEid.Text, txtFname.Text);
            blViewemployee blObj = new blViewemployee();
            GridView1.DataSource = blObj.showTable();
            GridView1.DataBind();
        }
    }
}