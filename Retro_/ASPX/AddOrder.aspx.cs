using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using Model;
namespace Retro_.ASPX
{
    public partial class AddOrder : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        public OrderModel order = null;
        public OrderGoodsModel ordergood = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        private void Bind()
        {
            //歌名超过18个字段便省略
            //GId,GPhoto1,GType,GPrice,GSinger,case when LEN(GName) > 15 then substring(GName,0,18)+'...'
            // when LEN(GName) BETWEEN 1 and 15 then GName end as GName from LP_Goods where Type = 2
            String sql = "select top 1 LP_Goods.*,LP_OrderGoods.*,LP_Order.* from LP_OrderGoods,LP_Goods,LP_Order where LP_OrderGoods.GId=LP_Goods.GId and LP_Order.OId = LP_OrderGoods.OId ";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            test_u.DataSource = ds.Tables["ds"];
            test_u.DataKeyField = "GId";
            test_u.DataBind();
        }
    }
}