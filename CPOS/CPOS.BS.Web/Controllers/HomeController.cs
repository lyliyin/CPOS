using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CPOS.BS.Web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public class UserInfo
        {
            public int Id { get; set; }
            public string UserName { get; set; }
            public string Address { get; set; }
            public string UserGender { get; set; }
        }

        public class PageResult<T>
        {
            public int totlal { get; set; }
            public List<T> rows { get; set; }
            public PageResult()
            {
                if (rows == null)
                {
                    rows = new List<T>();
                }
            }
        }
        [HttpPost]
        public JsonResult GetIndex()
        {
            PageResult<UserInfo> page = new PageResult<UserInfo>();
            page.totlal = 3;
            page.rows.Add(new UserInfo() { Id = 1, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            page.rows.Add(new UserInfo() { Id = 2, Address = "湖北武汉", UserGender = "男", UserName = "张俊" });
            page.rows.Add(new UserInfo() { Id = 3, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            page.rows.Add(new UserInfo() { Id = 4, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            page.rows.Add(new UserInfo() { Id = 5, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            page.rows.Add(new UserInfo() { Id = 6, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            page.rows.Add(new UserInfo() { Id = 7, Address = "湖北武汉", UserGender = "男", UserName = "李银" });
            return Json(page, JsonRequestBehavior.DenyGet);
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
    }
}