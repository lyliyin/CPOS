using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface IUserRoleResponsity
    {
        /// <summary>
        /// 查找用户角色
        /// </summary>
        /// <typeparam name="T">实体类注入</typeparam>
        /// <param name="UserId">用户编号</param>
        /// <param name="RoleId">角色编号</param>
        /// <returns>
        /// 二者参数必填一个或者都填
        /// </returns>
        List<T> FindUserRoleByUserIdOrRoleId<T>(string UserId, string RoleId);

        /// <summary>
        /// 分页查找用户
        /// </summary>
        /// <typeparam name="T">实体类注入</typeparam>
        /// <param name="UserId">用户编号</param>
        /// <param name="RoleId">角色编号</param>
        /// <param name="PageSize">煤业显示条数</param>
        /// <param name="PageIndex">当前第几页</param>
        /// <param name="TotalCount">总共页数</param>
        /// <returns></returns>
        List<T> PagedUserRoleByUserIdOrRoleId<T>(string UserId, string RoleId, int PageSize, int PageIndex, out int TotalCount);
    }
}
