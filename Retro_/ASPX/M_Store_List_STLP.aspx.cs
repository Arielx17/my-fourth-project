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
    public partial class M_Store_List_STLP : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        public AddCart addcart = null;
        public OrderModel order = null;
        public OrderGoodsModel ordergoods = null;
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
            String sql = "select GId,GPhoto4,GType,GPrice,GSinger,case when LEN(GName) > 15 then substring(GName,0,18)+'...' when LEN(GName) BETWEEN 1 and 15 then GName end as GName from LP_Goods where Type = 5";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            G_list_stlp.DataSource = ds.Tables["ds"];
            G_list_stlp.DataKeyField = "GId";
            G_list_stlp.DataBind();
        }

        protected void GoodsSTLP_ItemCommand(object source, DataListCommandEventArgs e)
        {
            //购物车
            if (e.CommandName == "add_car")
            {
                int gid = (int)G_list_stlp.DataKeys[e.Item.ItemIndex];
                string sql_find = "select CGNum from LP_UserCart where GId=" + gid;
                SqlDataReader sdr = SqlHelper.returnDataReader(sql_find, CommandType.Text, null);
                //如果数据库里有就更新数据库
                if (sdr.Read())
                {
                    string sql_update = "update LP_UserCart set CGNum=CGNum+" + 1 + " where GId=" + gid;

                    try
                    {
                        SqlHelper.ExecuteNonQuery(sql_update, CommandType.Text, null);
                        Response.Write("<img id='popout' src='" + ResolveUrl("~/PIC/Album_Intro/popout.png") + "'>");
                    }
                    catch (SqlException)
                    {
                    }
                }
                //如果数据库没有就插入新数据
                else
                {
                    string sql = "insert into LP_UserCart values (@CId,@GId,@CGNum)";
                    SqlParameter[] pars = new SqlParameter[3];
                    pars[0] = SqlHelper.MakeParam("@CId", SqlDbType.Int, 5);
                    pars[1] = SqlHelper.MakeParam("@GId", SqlDbType.Int, gid);
                    pars[2] = SqlHelper.MakeParam("@CGNum", SqlDbType.Int, 1);
                    try
                    {
                        SqlHelper.ExecuteNonQuery(sql, CommandType.Text, pars);
                        Response.Write("<img id='popout' src='" + ResolveUrl("~/PIC/Album_Intro/popout.png") + "'>");
                    }
                    catch (SqlException)
                    {
                    }
                }
                sdr.Close();
            }
            //立即购买
            if (e.CommandName == "buy_")
            {
                int gid = (int)G_list_stlp.DataKeys[e.Item.ItemIndex];
                //创建订单
                string sql_create = "insert into LP_Order values (@OState,@UId,@GType,@ADId)";
                SqlParameter[] pars_create = new SqlParameter[4];
                pars_create[0] = SqlHelper.MakeParam("@OState", SqlDbType.Int, 4);
                pars_create[1] = SqlHelper.MakeParam("@UId", SqlDbType.Int, 1);

                pars_create[2] = SqlHelper.MakeParam("@GType", SqlDbType.NVarChar, 7, "线上音源");
                pars_create[3] = SqlHelper.MakeParam("@ADId", SqlDbType.Int, 1);
                //pars_create[4] = SqlHelper.MakeParam("@OTime", SqlDbType.Timestamp, "2007-10-08 11:53:35");
                try
                {
                    SqlHelper.ExecuteNonQuery(sql_create, CommandType.Text, pars_create);
                    Response.Write("<script>alert('添加订单成功！')</script>");
                    //Response.Write("<img id='popout' src='" + ResolveUrl("~/PIC/Album_Intro/popout.png") + "'>");
                }
                catch (SqlException)
                {
                }

                //string sql_find = "select top 1 OId from LP_Order ";
                //SqlDataReader sdr = SqlHelper.returnDataReader(sql_find, CommandType.Text, null);
                //int oid = int.Parse(sql_find);
                //if (sdr.Read())
                //{
                //加入内容
                string sql_add = "insert into LP_OrderGoods values (@OId,@GId,@OGNum)";
                SqlParameter[] pars_add = new SqlParameter[3];
                pars_add[0] = SqlHelper.MakeParam("@OId", SqlDbType.Int, 30);
                pars_add[1] = SqlHelper.MakeParam("@GId", SqlDbType.Int, gid);
                pars_add[2] = SqlHelper.MakeParam("@OGNum", SqlDbType.Int, 1);
                try
                {
                    SqlHelper.ExecuteNonQuery(sql_add, CommandType.Text, pars_add);
                    Response.Redirect("AddOrder.aspx");
                }
                catch (SqlException)
                {
                }
                //}
            }
        }
    }
}