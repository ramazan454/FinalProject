using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Otelim.az.Models;
using Otelim.az.VIewModel;

namespace Otelim.az.Controllers
{
    public class NewsController : Controller
    {
        DB_A3EC45_otelimazEntities db = new DB_A3EC45_otelimazEntities();
        public ActionResult Index()
        {
            VModel vm = new VModel()
            {
                information = db.Information.Find(1),
                news = db.News.OrderByDescending(x => x.Id).ToList()
            };
            return View(vm);
        }
        public ActionResult Read(int? id)
        {
            var news = db.News.FirstOrDefault(x => x.Id == id);
            if (news is null) {
                return new RedirectResult("/news/index");
            }
            else
            {
                VModel vm = new VModel()
                {
                    information = db.Information.Find(1),
                    news = db.News.OrderByDescending(x => x.Id).ToList(),
                };
                ViewBag.news = news;
                return View(vm);
            }
        }
    }
}