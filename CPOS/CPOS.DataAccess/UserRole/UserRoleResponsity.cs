using CPOS.Model;
using CPOS.Responsity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPOS.CommTools;
using Dapper.Contrib.Extensions;
using System.Data.SqlClient;
using Dapper;
namespace CPOS.DataAccess
{
    public class UserRoleResponsity : BaseEntity, IUserRoleResponsity
    {
        public List<T> FindUserRoleByUserIdOrRoleId<T>(string UserId, string RoleId)
        {

            StringBuilder sbsql = new StringBuilder();

            sbsql.Append("SELECT TOP 1 * FROM [T_User_Role_Mappering] WITH(NOLOCK) WHERE 1=1 ");

            if (!String.IsNullOrWhiteSpace(UserId))
            {
                sbsql.Append(" AND [UserId]=@UserId ");
            }

            if (!String.IsNullOrWhiteSpace(RoleId))
            {
                sbsql.Append(" AND [RoleId]=@RoleId ");
            }

            var Parameter = new DynamicParameters();
            if (!String.IsNullOrWhiteSpace(UserId))
            {
                Parameter.Add("UserId", UserId);
            }

            if (!String.IsNullOrWhiteSpace(RoleId))
            {
                Parameter.Add("RoleId", RoleId);
            }

            return Query<T>(sbsql.ToString(), Parameter).ObjectConvertToListEntity<UserRoleEntity, T>();
        }

        public List<T> PagedUserRoleByUserIdOrRoleId<T>(string UserId, string RoleId, int PageSize, int PageIndex, out int TotalCount)
        {
            throw new NotImplementedException();
        }
    }
}
