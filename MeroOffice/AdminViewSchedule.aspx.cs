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
    public partial class AdminViewSchedule : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            blViewSchedule bl1Obj = new blViewSchedule();
            GridView1.DataSource = bl1Obj.firstTable();
            GridView1.DataBind();
            blViewSchedule bl2Obj = new blViewSchedule();
            GridView2.DataSource = bl2Obj.secondTable();
            GridView2.DataBind();
            blViewSchedule bl3Obj = new blViewSchedule();
            GridView3.DataSource = bl3Obj.thirdTable();
            GridView3.DataBind();

            blViewSchedule bl4Obj = new blViewSchedule();
            GridView4.DataSource = bl4Obj.fourthTable();
            GridView4.DataBind();
        }
    }
}