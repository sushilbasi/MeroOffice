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
    public class blViewSchedule
    {
        daViewSchedule dalObj = new daViewSchedule();
        public object firstTable()
        {
            return dalObj.getSchedulefirst();
        }

        public object secondTable()
        {
            return dalObj.getSchedulesecond();
        }
        public object thirdTable()
        {
            return dalObj.getSchedulethird();
        }
        public object fourthTable()
        {
            return dalObj.getSchedulefourth();
        }

    }
}
