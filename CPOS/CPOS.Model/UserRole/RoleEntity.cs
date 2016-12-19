using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;
namespace CPOS.Model
{
    [Table("T_Role")]
    public class RoleEntity
    {
        [ExplicitKey]
        public Guid RoleId { get; set; }
        public String RoleCode { get; set; }
        public String RoleName { get; set; }
        public String CustomerId { get; set; }
        public String IsDelete { get; set; }

    }
}
