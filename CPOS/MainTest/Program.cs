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
            List<UserEntity> products = Factories.Repository<IUserRoleResponsity>().FindUserRoleByUserIdOrRoleId<UserEntity>(null, null);
            //UserEntity user = new UserEntity()
            //{
            //    CustomerId = BaseEntity.CustomerId,
            //    IsDelete = "0",
            //    UserAddress = "湖北武汉新洲市",
            //    UserAge = "25",
            //    UserCode = "jun.zhang",
            //    UserEmail = "15221091529@163.com",
            //    UserId = Guid.NewGuid(),
            //    UserName = "张俊",
            //    UserPassword = "888888",
            //    UserPhone = "15221091529"
            //};
            //Factories.Repository<IUserResponsity>().Add<UserEntity>(user);
            //RoleEntity role = new RoleEntity()
            //{
            //    CustomerId = BaseEntity.CustomerId,
            //    IsDelete = "0",
            //    RoleCode = "UserManager",
            //    RoleId = Guid.NewGuid(),
            //    RoleName = "人事管理者"
            //};
            //Factories.Repository<IRoleResponsity>().Add<RoleEntity>(role);


            string dir = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Queue");
        }
    }
    public class IoCInstaller : IWindsorInstaller
    {
        public void Install(IWindsorContainer container, IConfigurationStore store)
        {
            container.Register(Component.For(typeof(ICustomerResponsity)).ImplementedBy(typeof(CustomerResponsity)));
            container.Register(Component.For(typeof(IUserRoleResponsity)).ImplementedBy(typeof(UserRoleResponsity)));
            container.Register(Component.For(typeof(IUserResponsity)).ImplementedBy(typeof(UserResponsity)));
            container.Register(Component.For(typeof(IRoleResponsity)).ImplementedBy(typeof(RoleResponsity)));
        }
    }

}
