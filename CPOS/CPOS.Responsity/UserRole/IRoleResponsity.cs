using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface IRoleResponsity
    {
        T GetRoleById<T>(string Id);
        T GetRoleByCode<T>(string Code);

    }
}
