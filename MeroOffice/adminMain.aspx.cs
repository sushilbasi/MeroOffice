using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BALayer;
using DALayer;

namespace MeroOffice
{
    public partial class adminMain : System.Web.UI.Page
    {
      
        protected void Page_Load(object sender, EventArgs e)
        {
            blViewemployee balObj = new blViewemployee();
            GridView1.DataSource = balObj.showTable();
            GridView1.DataBind();

        }
    }
}