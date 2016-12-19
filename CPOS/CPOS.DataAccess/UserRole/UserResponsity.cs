using CPOS.Responsity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using Dapper.Contrib.Extensions;
using System.Data.SqlClient;
using CPOS.Model;
using CPOS.CommTools;
namespace CPOS.DataAccess
{
    public class UserResponsity : BaseEntity, IUserResponsity
    {
        public void Add<T>(T model)
        {
            using (var conn = new SqlConnection(connectionStrings))
            {
                UserEntity userentity = model.ObjectConvertToEntity<T, UserEntity>();
                conn.Insert<UserEntity>(userentity);
            }
        }

        public void Update<T>(T model)
        {
            throw new NotImplementedException();
        }

        public void Delete<T>(T model)
        {
            throw new NotImplementedException();
        }

        public T GetUserByCode<T>(string UserCode, string CustomerId)
        {
            throw new NotImplementedException();
        }
    }
}
