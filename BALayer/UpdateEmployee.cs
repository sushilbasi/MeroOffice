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
    public class UpdateEmployee
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User Id=sa; Password=sql");
        daViewemployee dalObj = new daViewemployee();
        public void updateEmployee(string EID, string Username, string Password, string Firstname, string Lastname, string Dateofbirth, string Email, string Address, string Gender)
        {
            SqlCommand cmd = new SqlCommand("Update tblEmployee SET Firstname=@a1, Lastname=@a2, Dateofbirth=@a3, Email=@a4, Address=@a5, Gender=@a6 WHERE EID=@EID",con);
            SqlCommand comd = new SqlCommand("Update tblEmployeelogin SET Username=@a7, Password=@a8 WHERE EID=@EID", con);
            con.Open();
            comd.Parameters.AddWithValue("EID", EID);
            cmd.Parameters.AddWithValue("EID", EID);
            comd.Parameters.AddWithValue("a7", Username);
            cmd.Parameters.AddWithValue("a1", Firstname);
            cmd.Parameters.AddWithValue("a2", Lastname);
            comd.Parameters.AddWithValue("a8", Password);
            cmd.Parameters.AddWithValue("a3", Dateofbirth);
            cmd.Parameters.AddWithValue("a4", Email);
            cmd.Parameters.AddWithValue("a5", Address);
            cmd.Parameters.AddWithValue("a6", Gender);
            cmd.ExecuteNonQuery();
            comd.ExecuteNonQuery();
            con.Close();
        }
        public object viewTable()
        {
            return dalObj.getTable();
        }
    }
}
