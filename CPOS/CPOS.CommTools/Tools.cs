using AutoMapper;
using Castle.MicroKernel.Registration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Castle.MicroKernel.SubSystems.Configuration;
using Castle.Windsor;
using Castle.Windsor.Installer;

namespace CPOS.CommTools
{
    public class Factories
    {
        public static T Repository<T>() where T : class
        {
            return IoCContainer.Instance.Resolve<T>();
        }
    }

    internal class IoCContainer
    {
        private static readonly object syncRoot = new object();

        private IoCContainer() { }

        private static IWindsorContainer _Instance;

        public static IWindsorContainer Instance
        {
            get
            {
                lock (syncRoot)
                {
                    if (_Instance == null)
                    {
                        var configdata = Configuration.FromAppConfig();
                        _Instance = new WindsorContainer().Install(configdata);
                    }
                    return _Instance;
                }
            }
        }
    }


    public static class Tools
    {
        /// <summary>
        /// 扩展方法
        /// </summary>
        /// <typeparam name="TSources">原实体类型</typeparam>
        /// <typeparam name="TTarget">目标实体类型</typeparam>
        /// <param name="sourcesentity">原实体数据</param>
        /// <returns></returns>
        public static TTarget ObjectConvertToEntity<TSources, TTarget>(this TSources sourcesentity)
        {
            Mapper.Initialize(cfg => cfg.CreateMap<TSources, TTarget>());
            return Mapper.Map<TTarget>(sourcesentity);
        }
    }
}
