using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Dapper.Contrib.Extensions;
namespace CPOS.Model
{
    [Table("T_User")]
    public class UserEntity
    {
        [ExplicitKey]
        public Guid UserId { get; set; }
        public String UserCode { get; set; }
        public String UserName { get; set; }
        public String UserPassword { get; set; }
        public String UserAge { get; set; }
        public String UserPhone { get; set; }
        public String UserAddress { get; set; }
        public String UserEmail { get; set; }
        public String IsDelete { get; set; }
        public String CustomerId { get; set; }

    }
}
