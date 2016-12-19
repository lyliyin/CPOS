using CPOS.Model;
using CPOS.Responsity;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPOS.CommTools;
using Dapper;
using Dapper.Contrib.Extensions;
namespace CPOS.DataAccess
{
    public class RoleResponsity : BaseEntity, IRoleResponsity
    {
        public T GetRoleByIdOrCode<T>(string Id, string Code)
        {
            throw new NotImplementedException();
        }

        public void Add<T>(T model)
        {
            using (var conn = new SqlConnection(connectionStrings))
            {
                RoleEntity role = model.ObjectConvertToEntity<T, RoleEntity>();
                conn.Insert<RoleEntity>(role);
            }
        }
    }
}
