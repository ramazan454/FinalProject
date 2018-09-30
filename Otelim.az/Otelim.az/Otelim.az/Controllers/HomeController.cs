using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Otelim.az.Models;
using Otelim.az.VIewModel;

namespace Otelim.az.Controllers
{
    public class HomeController : Controller
    {
        DB_A3EC45_otelimazEntities db = new DB_A3EC45_otelimazEntities();
        public ActionResult Index()
        {
            VModel vm = new VModel()
            {
                information = db.Information.Find(1)
            };
            return View(vm);
        }
    }
}