using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.SqlClient;
using Dapper;
using Dapper.Contrib.Extensions;
namespace CPOS.Model
{
    public class BaseEntity
    {
        public string connectionStrings
        {
            get
            {
                if (String.IsNullOrWhiteSpace((ConfigurationManager.ConnectionStrings["connectionStrings"] + "").ToString()))
                {
                    return "Data Source=.;Initial Catalog=CPOS;Persist Security Info=True;User ID=sa;password=123456";
                }
                else
                {
                    return ConfigurationManager.ConnectionStrings["connectionStrings"].ToString();
                }
            }
            set
            {

            }
        }

        /// <summary>
        /// 商户编号  const{声明在类里面} 为常量 编译时 解析 而 Readonly{声明在函数里面} 也为常量 但是实在运行时编译
        /// </summary>
        public static string CustomerId = "f1521fb45ae647ea90b8f08717330f94";
        //{
        //    get
        //    {
        //        return "f1521fb45ae647ea90b8f08717330f94";
        //    }
        //    set
        //    {
        //        if (ConfigurationManager.AppSettings["CustomerId"] != null)
        //        {
        //            CustomerId = ConfigurationManager.AppSettings["CustomerId"].ToString();
        //        }
        //    }
        //}
        /// <summary>
        /// 获取查询信息
        /// </summary>
        /// <param name="SQL">SQL 脚本信息</param>
        /// <param name="Parameters">参数化信息</param>
        /// <returns></returns>
        public List<T> Query<T>(string SQL, DynamicParameters Parameters)
        {
            using (var conn = new SqlConnection(connectionStrings))
            {
                if (Parameters == null)
                {
                    return conn.Query<T>(SQL.ToString()).ToList();
                }
                else
                {
                    return conn.Query<T>(SQL.ToString(), Parameters).ToList();
                }
            }
        }

        /// <summary>
        /// 带事物的查询信息
        /// </summary>
        /// <param name="SQL">SQL 脚本信息</param>
        /// <param name="Parameters">参数化信息</param>
        /// <returns></returns>
        public List<T> Query<T>(string SQL, DynamicParameters Parameters, SqlTransaction Tran)
        {
            using (var conn = new SqlConnection(connectionStrings))
            {

                if (Parameters == null)
                {
                    return conn.Query<T>(SQL.ToString(), null, Tran).ToList();
                }
                else
                {
                    return conn.Query<T>(SQL.ToString(), Parameters, Tran).ToList();
                }
            }
        }
    }
}
