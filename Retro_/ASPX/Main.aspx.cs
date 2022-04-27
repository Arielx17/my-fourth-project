using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using DAL;
using System.Data;
using System.Data.SqlClient;

namespace Retro_.ASPX
{
    public partial class Main : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind();
            }
        }
        private void Bind()
        {
            string sqlnew = "select top 4 GPhoto5,GId from LP_Goods where Type=1 order by GId";
            DataSet dsnew = SqlHelper.returnDataSet(sqlnew, CommandType.Text, null);
            dl_new.DataSource = dsnew.Tables["ds"];
            dl_new.DataKeyField = "GPhoto5";
            dl_new.DataBind();

            string sqlweek = "select top 4 * from LP_Goods where Type=1 order by GId desc";
            DataSet dsweek = SqlHelper.returnDataSet(sqlweek, CommandType.Text, null);
            dl_week.DataSource = dsweek.Tables["ds"];
            dl_week.DataKeyField = "GPhoto5";
            dl_week.DataBind();
        }
    }
}