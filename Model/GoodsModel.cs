using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class GoodsModel
    {
        public int GId { get; set; }
        public string GName { get; set; }
        public string GPhoto1 { get; set; }
        public string GPhoto2 { get; set; }
        public string GPhoto3 { get; set; }
        public string GPhoto4 { get; set; }
        public string GPhoto5 { get; set; }
        public int GNum { get; set; }
        public string GType { get; set; }
        public float GPrice { get; set; }
        public int GStock { get; set; }
        public string GIntro { get; set; }
        public string GTime { get; set; }
        public float GPost { get; set; }
        //邮费
        public string GSinger { get; set; }
        public int Type { get; set; }
        //1:new;2:线上；3实体；4详情；5week
    }
}
