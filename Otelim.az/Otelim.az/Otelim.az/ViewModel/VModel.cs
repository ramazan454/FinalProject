using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Otelim.az.Models;

namespace Otelim.az.VIewModel
{
    public class VModel
    {
        DB_A3EC45_otelimazEntities db = new DB_A3EC45_otelimazEntities();
        public Information information { get; set; }
        public List<News> news { get; set; }
    }
}