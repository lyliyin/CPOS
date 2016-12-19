using Dapper.Contrib.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CPOS.Model
{
    [Table("T_User_Role_Mappering")]
    public class UserRoleEntity
    {
        [ExplicitKey]
        public Guid UserRoleId { get; set; }
        public Guid UserId { get; set; }
        public Guid RoleId { get; set; }
    }
}
