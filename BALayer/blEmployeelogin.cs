using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DALayer;
using System.Data;
using System.Data.SqlClient;

namespace BALayer
{
    public class blEmployeelogin
    {   
        public DataTable tblEmployeelogin(daEmployeelogin da)
        {
            DataTable dt = new DataTable();
            dt = da.tblEmployeelogin(da);
            return dt;
        }

    }
}
