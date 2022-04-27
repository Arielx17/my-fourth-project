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

namespace LP
{
    public partial class HeadAFoot : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["uid"] != null)
                {
                    Bind(Request.Cookies["uid"].Value);
                }
                
            }
        }
        private void Bind(string UId)
        {
            //case when LEN(SName) > 10 then substring(SName,0,13) + '...' when LEN(SName)BETWEEN 1 and 10 then SName end as SName " + "
            string sql = "select SName from LP_Song where SId in (select SId from LP_PlaylistSong where PId=(select PId from LP_Playlist where PName=N'播放列表' and UId=" + UId +"))";
            DataSet ds = SqlHelper.returnDataSet(sql, CommandType.Text, null);
            dl_songlist.DataSource = ds.Tables["ds"];
            dl_songlist.DataKeyField = "SName";
            dl_songlist.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}