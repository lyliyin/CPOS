using Castle.MicroKernel.Registration;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using CPOS.CommTools;
using CPOS.DataAccess;
using CPOS.Model;
using CPOS.Responsity;
using System;
using System.Collections.Generic;
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
            // Expression<Func<CustomerEntity, bool>> expression = PredicateExtensions.True<CustomerEntity>();
            string CustomerCode = string.Empty;
            var products = Factories.Repository<ICustomerResponsity>().GetCustomerInfo<xiaojunzi>(CustomerCode);

        }
    }

    public class xiaojunzi
    {
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
