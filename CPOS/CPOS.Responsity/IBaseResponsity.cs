using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    /// <summary>
    /// 增 删 改 基类 接口信息
    /// </summary>
    public interface IBaseResponsity
    {
        void Add<T>(T model);
        void Update<T>(T model);
        void Delete<T>(T model);
    }
}
