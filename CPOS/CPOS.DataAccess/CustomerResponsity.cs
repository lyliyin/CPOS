using CPOS.Responsity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CPOS.Model;
using System.Data.SqlClient;
using Dapper;
using AutoMapper;
using CPOS.CommTools;

namespace CPOS.DataAccess
{
    public class CustomerResponsity : BaseEntity, ICustomerResponsity, IBaseResponsity
    {
        public CustomerResponsity()
        {

        }
        /// <summary>
        /// 到时候注入实体类信息就可以了
        /// </summary>
        /// <param name="CustomerCode"></param>
        /// <returns></returns>
        public T GetCustomerInfo<T>(string CustomerCode, string CustomerId)
        {
            var Parameter = new DynamicParameters();
            Parameter.Add("CustomerCode", CustomerCode);
            CustomerEntity entity = new CustomerEntity() { CustomerCode = "0011", CustomerName = "小银子" };// conn.Get<CustomerEntity>(Parameter);
            //转换实体类型
            return entity.ObjectConvertToEntity<CustomerEntity, T>();
        }
        public void Add<T>(T model)
        {

        }
        public void Update<T>(T model)
        {

        }

        public void Delete<T>(T model)
        {

        }
    }
}
