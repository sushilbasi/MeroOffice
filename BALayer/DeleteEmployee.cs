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
    public class DeleteEmployee
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User Id=sa; Password=sql");

        public void deleteEmployee(string EID, string Firstname)
        {
            SqlCommand cmd = new SqlCommand("delete from tblEmployee where EID='" + EID + "' and Firstname='" + Firstname + "'",con);
            SqlCommand comd = new SqlCommand("delete from tblEmployeelogin where EID = '"+ EID +"'", con); 
            con.Open();
            cmd.ExecuteNonQuery();
            comd.ExecuteNonQuery();
            con.Close();
        }

        daViewemployee dalObj = new daViewemployee();
        public object viewTable()
        {
            return dalObj.getTable();
        }

    }
}
