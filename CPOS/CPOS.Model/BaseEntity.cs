using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
namespace CPOS.Model
{
    public class BaseEntity
    {
        public string connectionStrings
        {
            get
            {
                return connectionStrings;
            }
            set
            {
                if (String.IsNullOrWhiteSpace(connectionStrings))
                {
                    connectionStrings = ConfigurationManager.ConnectionStrings["connectionStrings"].ToString();
                }
            }
        }

        public SqlConnection conn
        {
            get
            {
                return conn;
            }
            set
            {
                if (conn == null)
                {
                    conn = new SqlConnection(connectionStrings);
                }
            }
        }
    }
}
