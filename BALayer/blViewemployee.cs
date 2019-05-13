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
    public class blViewemployee
    {
        daViewemployee dalObj = new daViewemployee();
        public string EID { get; set; }
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User Id=sa; Password=sql");

        public void viewEmployee(daViewemployee da, string Firstname, string Lastname, string Dateofbirth, string Address, string Gender)
        {

            SqlCommand cmd = new SqlCommand("SELECT Firstname, Lastname, Dateofbirth, Address, Gender From tblEmployee WHERE EID='" + da.EID + "'", con);
            con.Open();
            SqlDataReader rd;
            rd = cmd.ExecuteReader();
            con.Close();
        }

        public object showTable()
        {
            return dalObj.getTable();
        }

      

    }
}
