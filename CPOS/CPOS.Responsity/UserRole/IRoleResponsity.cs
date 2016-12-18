using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface IRoleResponsity
    {
        /// <summary>
        /// 通过编号获取角色信息
        /// </summary>
        /// <typeparam name="T">业务实体类</typeparam>
        /// <param name="Id">主键</param>
        /// <param name="Code">编号</param>
        /// <returns></returns>
        T GetRoleByIdOrCode<T>(string Id, string Code);
        void Add<T>(T model);
    }
}
