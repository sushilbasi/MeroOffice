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
    public class AddEmployee
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User Id=sa; Password=sql");
        daViewemployee dalObj = new daViewemployee();
        public void insertDetail(string Username, string Password, string Firstname, string Lastname, string Dateofbirth, string Email, string Address, string Gender, string Image,string faculty, string First, string Second, string Third, string Fourth)
        { 
            SqlDataAdapter da = new SqlDataAdapter("Insert into tblEmployee values('" + Firstname + "','" + Lastname + "','" + Dateofbirth + "','" + Email + "','" + Address + "','" + Gender + "', '"+ Image +"', '"+faculty+"','"+First+ "','" + Second + "','" + Third + "','" + Fourth + "')", con);
            SqlDataAdapter lo = new SqlDataAdapter("Insert into tblEmployeelogin values('" + Username + "', '" + Password + "')", con);
            DataTable dt = new DataTable();
            lo.Fill(dt);
            da.Fill(dt);
        }

        public object viewTable()
        {
            return dalObj.getTable();
        }


    }
}
