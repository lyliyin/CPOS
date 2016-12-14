using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(CPOS.BS.Web.Startup))]
namespace CPOS.BS.Web
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
