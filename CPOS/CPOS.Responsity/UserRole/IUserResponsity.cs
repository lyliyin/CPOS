using CPOS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface IUserResponsity
    {
        /// <summary>
        /// 获取用户信息通过用户编号
        /// </summary>
        /// <typeparam name="T"></typeparam>
        /// <param name="UserCode"></param>
        /// <param name="CustomerId"></param>
        /// <returns></returns>
        T GetUserByCode<T>(string UserCode, string CustomerId);

        void Add<T>(T model);

    }
}
