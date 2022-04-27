using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    public class AddCart
    {
        public int UCId { get; set; }
        public int CId { get; set; }
        public int GId { get; set; }
        public int CGNum { get; set; }
        public DataTable DataSource { get; set; }
        public string DataKeyField { get; set; }

        public void DataBind()
        {
            throw new NotImplementedException();
        }
    }
}
