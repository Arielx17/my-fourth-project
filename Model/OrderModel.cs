using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Model
{
    public class OrderModel
    {
        public int OId { get; set; }
        public byte OTime { get; set; }
        public string OState { get; set; }
        public int UId { get; set; }
        public int ADId { get; set; }
        public string GType { get; set; }
    }
}
