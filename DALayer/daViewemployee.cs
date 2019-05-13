using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DALayer
{
    public class daViewemployee
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User ID=sa; Password=sql");

        public string EID { get; set; }

        public void viewEmployee(string EID, string Firstname, string Lastname, string Dateofbirth, string Address, string Gender)
        {
            SqlCommand cmd = new SqlCommand("SELECT * From Firstname, Lastname, Dateofbirth, Address, Gender WHERE EID='" + EID + "'", con);
            con.Open();
            SqlDataReader rd;
            rd = cmd.ExecuteReader();

            while (rd.Read())
            {
                Firstname = rd.GetString(0);
                Lastname = rd.GetString(1);
                Dateofbirth = rd.GetString(2);
                Address = rd.GetString(3);
                Gender = rd.GetString(4);
            }
            con.Close();
        }

        public DataTable getTable()
        {
            SqlCommand comd = new SqlCommand ("SELECT Firstname, Lastname, Dateofbirth, Address, Gender  From tblEmployee ", con);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(comd);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            con.Close();
            return dt;
            
            
        }

    }
}

