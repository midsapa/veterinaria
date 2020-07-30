using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(catalogomascotas.Startup))]
namespace catalogomascotas
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
