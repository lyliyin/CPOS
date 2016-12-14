using CPOS.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Responsity
{
    public interface ICustomerResponsity
    {
        T GetCustomerInfo<T>(string CustomerCode,string CustomerId);
    }
}
