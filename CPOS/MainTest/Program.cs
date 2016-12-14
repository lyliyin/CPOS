using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using CPOS.CommTools;
using CPOS.DataAccess;
using CPOS.Model;
using CPOS.Responsity;
using System;
using System.Collections;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Linq.Expressions;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace MainTest
{
    class Program
    {
       
        static void Main(string[] args)
        {
            Queue q = new Queue();
            q.Enqueue("123");
            q.Enqueue("456");
            Console.WriteLine(q.Count.ToString());
            // Expression<Func<CustomerEntity, bool>> expression = PredicateExtensions.True<CustomerEntity>();
            //string CustomerCode = string.Empty;
            //string CustomerId = string.Empty;
            //var products = Factories.Repository<ICustomerResponsity>().GetCustomerInfo<xiaojunzi>(CustomerCode, CustomerId);

            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Queue");

            ////添加队列
            //List<xiaojunzi> models = new List<xiaojunzi>() { new xiaojunzi() { CustomerCode = "0011" }, new xiaojunzi() { CustomerCode = "jkb4" } };
            //CustomerSerializable<xiaojunzi>.AddQuence(Guid.NewGuid().ToString(), models);

            ////序列化到本地xml文件
            //CustomerSerializable<xiaojunzi>.SerializableToLocal(models);

        }
    }
    [Serializable]
    public class xiaojunzi
    {
        public xiaojunzi()
        {

        }
        public string CustomerCode { get; set; }
    }
    public class xiaoyinzi
    {
        public string CustomerName { get; set; }
    }
    public class IoCInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Component.For(typeof(ICustomerResponsity)).ImplementedBy(typeof(CustomerResponsity)).Named("CastleDemo.DataAccess.RepositoryImpl"));

        }
    }

}
