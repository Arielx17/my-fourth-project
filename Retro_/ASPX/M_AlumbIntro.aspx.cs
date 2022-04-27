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
    public partial class M_AlumbIntro : System.Web.UI.Page
    {
        public SongModel Song = null;
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                if (Request.QueryString["GId"] != null)
                {
                   
                    string GId = Request.QueryString["GId"].ToString();
                    Bind(GId);
                    string sql = "select * from LP_Goods where GId=" + GId;
                    SqlDataReader sdr = SqlHelper.returnDataReader(sql, CommandType.Text, null);
                    while (sdr.Read())
                    {
                        Goods = new GoodsModel();
                        Goods.GId = int.Parse(sdr["GId"].ToString());
                        Goods.GName = sdr["GName"].ToString();
                        Goods.GPhoto1 = sdr["GPhoto1"].ToString();
                        Goods.GPhoto2 = sdr["GPhoto2"].ToString();
                        Goods.GPhoto3 = sdr["GPhoto3"].ToString();
                        Goods.GType = sdr["GType"].ToString();
                        Goods.GPrice = Convert.ToSingle(sdr["GPrice"].ToString());
                        Goods.GStock = int.Parse(sdr["GStock"].ToString());
                        Goods.GIntro = sdr["GIntro"].ToString();
                        Goods.GPost = Convert.ToSingle(sdr["GPost"].ToString());
                        Goods.GSinger = sdr["GSinger"].ToString();
                        //Song.SName = sdr["SName"].ToString();
                        //Song.SLength = sdr["SLength"].ToString();
                        //Song.SPrice = sdr["SPrice"].ToString();
                        if (Request.QueryString["SId"] != null && Request.Cookies["uid"] != null)
                        {
                            string SId = Request.QueryString["SId"].ToString();
                            string UId = Request.Cookies["uid"].Value;
                            string sqlpid = "select PId from LP_Playlist where PName=N'播放列表' and UId=" + UId;
                            SqlDataReader sdr1 = SqlHelper.returnDataReader(sqlpid, CommandType.Text, null);
                            while (sdr1.Read())
                            {
                                int PId = int.Parse(sdr1["PId"].ToString());
                                int SIdd = int.Parse(SId);
                                string sqladd = "insert into LP_PlaylistSong (PId,SId) values(@PId,@SId)";
                                SqlParameter[] pars = new SqlParameter[2];
                                pars[0] = SqlHelper.MakeParam("@PId", SqlDbType.Int, PId);
                                pars[1] = SqlHelper.MakeParam("@SId", SqlDbType.Int, SIdd);
                                SqlHelper.ExecuteNonQuery(sqladd, CommandType.Text, pars);
                                Response.Redirect("M_AlumbIntro.aspx?GId=" + Request.QueryString["GId"]);//跳转回
                            }
                            sdr1.Close();

                        }
                    }
                    sdr.Close();
                }
                else
                {
                    Response.Redirect("Main.aspx");
                }

            }
        }
        private void Bind(string GId)
        {
            string sql = "select * from LP_Song where GId=" + GId;
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            gv_songlist.DataSource = ds.Tables["ds"];
            gv_songlist.DataBind();
        }



        protected void Songlist_RowCommand(object source, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "LOrB")
            {
                if (Request.Cookies["uid"] != null)
                {
                    GridViewRow row = ((Control)e.CommandSource).BindingContainer as GridViewRow;
                    ImageButton img_LOrB = (ImageButton)row.FindControl("img_LOrB") as ImageButton;
                    int UId = int.Parse(Request.Cookies["uid"].Value);
                    int SId = Convert.ToInt32(e.CommandArgument);

                    if (img_LOrB.ImageUrl == "../PIC/Album_Intro/List-Play.png")
                    {
                        string sqlpid = "select PId from LP_Playlist where PName=N'播放列表' and UId=" + UId;
                        SqlDataReader sdr1 = SqlHelper.returnDataReader(sqlpid, CommandType.Text, null);
                        while (sdr1.Read())
                        {
                            int PId = int.Parse(sdr1["PId"].ToString());
                            string sqladd = "insert into LP_PlaylistSong (PId,SId) values(@PId,@SId)";
                            SqlParameter[] pars = new SqlParameter[2];
                            pars[0] = SqlHelper.MakeParam("@PId", SqlDbType.Int, PId);
                            pars[1] = SqlHelper.MakeParam("@SId", SqlDbType.Int, SId);
                            SqlHelper.ExecuteNonQuery(sqladd, CommandType.Text, pars);
                        }
                        sdr1.Close();
                        Server.Transfer("M_AlumbIntro.aspx?GId=" + Request.QueryString["GId"].ToString());
                    }
                    else
                    {
                        CreateOrder(UId, SId);
                        Response.Redirect("AddOrder.aspx");
                    }

                }
            }
        }

        //根据获取到的SListen（是否已购买），若已购买，则放置播放icon，若未购买则放置购买icon
        protected string IsListen(string SListen)
        {
            string SListen1 = SListen.Trim();
            if (SListen1.Equals("true"))
            {
                return "../PIC/Album_Intro/List-Play.png";
            }
            else
            {
                return "../PIC/Buy.png";
            }
        }
        protected void CreateOrder(int UId, int SId)
        {
            string sql_create = "insert into LP_Order (OState,UId,GType) values (@OState,@UId,@GType)";
            SqlParameter[] pars_create = new SqlParameter[3];
            pars_create[0] = SqlHelper.MakeParam("@OState", SqlDbType.Int, 1);
            pars_create[1] = SqlHelper.MakeParam("@UId", SqlDbType.Int, UId);//UId
            pars_create[2] = SqlHelper.MakeParam("@GType", SqlDbType.NVarChar, 7, "线上音源");

            //pars_create[4] = SqlHelper.MakeParam("@OTime", SqlDbType.Timestamp, "2007-10-08 11:53:35");
            try
            {
                SqlHelper.ExecuteNonQuery(sql_create, CommandType.Text, pars_create);
                Response.Write("<script>alert('添加订单成功！')</script>");
                string sql_find = "select top 1 * from LP_Order order by OId desc";
                SqlDataReader sdr = SqlHelper.returnDataReader(sql_find, CommandType.Text, null);

                while (sdr.Read())
                {
                    int id = int.Parse(sdr["OID"].ToString());
                    //加入内容
                    string sql_add = "insert into LP_OrderGoods (OId,OGNum,SId) values (@OId,@OGNum,@SId)";
                    SqlParameter[] pars_add = new SqlParameter[3];
                    pars_add[0] = SqlHelper.MakeParam("@OId", SqlDbType.Int, id);
                    pars_add[1] = SqlHelper.MakeParam("@OGNum", SqlDbType.Int, 1);
                    pars_add[2] = SqlHelper.MakeParam("@SId", SqlDbType.Int, SId);
                    try
                    {
                        SqlHelper.ExecuteNonQuery(sql_add, CommandType.Text, pars_add);
                        Response.Write("<script>alert('添加商品订单成功！')</script>");
                        Response.Redirect("AddOrder.aspx");
                    }
                    catch (SqlException)
                    {
                    }
                }
                sdr.Close();
            }
            catch (SqlException)
            {

            }
        }
    }
}