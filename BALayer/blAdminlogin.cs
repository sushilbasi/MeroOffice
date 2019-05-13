using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using DALayer;

namespace BALayer
{
    public class blAdminlogin
    {
        public DataTable tblAdminlogin(daAdminlogin da)
        {
            DataTable dt = new DataTable();
            dt = da.tblAdminlogin(da);
            return dt;
        }
        
    }
}
