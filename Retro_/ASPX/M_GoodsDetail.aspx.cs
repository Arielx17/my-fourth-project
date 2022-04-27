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
    public partial class GoodsDetail : System.Web.UI.Page
    {
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
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
                        Goods.GPhoto4 = sdr["GPhoto4"].ToString();
                        Goods.GNum = int.Parse(sdr["GNum"].ToString());
                        Goods.GPrice = Convert.ToSingle(sdr["GPrice"].ToString());
                        Goods.GStock = int.Parse(sdr["GStock"].ToString());
                        Goods.GIntro = sdr["GIntro"].ToString();
                        Goods.GTime = sdr["GTime"].ToString();
                        Goods.GPost = Convert.ToSingle(sdr["GPost"].ToString());
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
            string sql = "select SName from LP_Song where GId="+GId;
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            dl_AlbumSong.DataSource = ds.Tables["ds"];
            dl_AlbumSong.DataKeyField = "SName";
            dl_AlbumSong.DataBind();
        }

        protected void dl_AlbumSong_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}