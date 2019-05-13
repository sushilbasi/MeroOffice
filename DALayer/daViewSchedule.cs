using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
namespace DALayer
{
    public class daViewSchedule
    {
        SqlConnection con = new SqlConnection("Data Source=.;Database=dbemployee; User ID=sa; Password=sql");

        public DataTable getSchedulefirst()
        {
            SqlCommand cmd1 = new SqlCommand("Select * from tblSchedulefirst", con);
            con.Open();
            SqlDataAdapter sdaa = new SqlDataAdapter(cmd1);
            DataTable dtfirst = new DataTable();
            sdaa.Fill(dtfirst);
            con.Close();
            return dtfirst;

        }
        public DataTable getSchedulesecond()
        {
            SqlCommand cmd2 = new SqlCommand("Select * from tblSchedulesecond", con);
            con.Open();
            SqlDataAdapter sdaa = new SqlDataAdapter(cmd2);
            DataTable dtsecond = new DataTable();
            sdaa.Fill(dtsecond);
            con.Close();
            return dtsecond;

        }
        public DataTable getSchedulethird()
        {
            SqlCommand cmd3 = new SqlCommand("Select * from tblSchedulethird", con);
            con.Open();
            SqlDataAdapter sdaa = new SqlDataAdapter(cmd3);
            DataTable dtthird = new DataTable();
            sdaa.Fill(dtthird);
            con.Close();
            return dtthird;

        }
        public DataTable getSchedulefourth()
        {
            SqlCommand cmd4 = new SqlCommand("Select * from tblSchedulefourth", con);
            con.Open();
            SqlDataAdapter sdaa = new SqlDataAdapter(cmd4);
            DataTable dtfourth = new DataTable();
            sdaa.Fill(dtfourth);
            con.Close();
            return dtfourth;

        }
    }
}
