using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;


namespace DALayer
{
    public class daEmployeelogin
    {
       public string Username { get; set; }
        public string Password { get; set; }
        public string EID { get; set; }
        SqlConnection con = new SqlConnection("Data Source=.; Database=dbemployee;User ID=sa; Password=sql");

        public DataTable tblEmployeelogin(daEmployeelogin da)
        {
            DataTable dt = new DataTable();
            con.Open();
            SqlCommand com =new SqlCommand("select * from tblEmployeelogin where  Username='" + da.Username + "' and Password='" + da.Password + "'", con);
            SqlDataAdapter sda = new SqlDataAdapter(com);
            sda.Fill(dt);
            return dt;
        }
    }
}
