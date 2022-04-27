using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class SongModel
    {
        public int SId { get; set; }
        public int GId { get; set; }
        public string SName { get; set; }
        public string SPrice { get; set; }
        public string SListen { get; set; }
        //true/false，判断是否可听
        public string SLength { get; set; }
    }
}
