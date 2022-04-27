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
    public partial class BoughtSingel : System.Web.UI.Page
    {
        public SongModel Song = null;
        public GoodsModel Goods = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["uid"] != null)
                {
                    Bind(Request.Cookies["uid"].Value);
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('请先登录！')</script>");
                }
            }
        }
        private void Bind(string UId)
        {
            //string sql = "select GId from LP_Song where SId in (select SId from LP_PlaylistSong where PId=" +
            //   "(select PId from LP_Playlist where PName=N'收藏歌单' and UId=" + UId + "))";
            string sql = "select GSinger,GName,SName,SLength from LP_Song left join LP_Goods on LP_Goods.GId = LP_Song.GId where LP_Song.GId in (select GId from LP_Song where SId in (select SId from LP_PlaylistSong where PId=" +
               "(select PId from LP_Playlist where PName=N'收藏歌单' and UId=" + UId + ")))";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            gv_songlist.DataSource = ds.Tables["ds"];
            gv_songlist.DataBind();
        }
    }
}