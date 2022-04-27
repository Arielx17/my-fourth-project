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
    public partial class M_Register : System.Web.UI.Page
    {
        public UserModel Song = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
            }
        }
        protected void Register(object sender, EventArgs e)
        {
            if(UserPwd.Value == UserPwd1.Value)
            {
                //调用帮助类里的方法
                string sql = "insert into LP_User values(@UName,@UPwd,@UType)";
                SqlParameter[] pars = new SqlParameter[3];
                pars[0] = SqlHelper.MakeParam("@UName", SqlDbType.NChar, 10, UserName.Value);
                pars[1] = SqlHelper.MakeParam("@UPwd", SqlDbType.Char, 16, UserPwd.Value);
                pars[2] = SqlHelper.MakeParam("@UType", SqlDbType.NVarChar, 7, "用户");
                try
                {
                    SqlHelper.ExecuteNonQuery(sql, CommandType.Text, pars);
                    Response.Redirect("M_Login.aspx");//跳转到登录页
                }
                catch (SqlException)
                {

                }
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('两次输入密码不一致！')</script>");
            }
        }
        //public void AddPlayList(string UName)
        //{
        //    //自动生成收藏歌单
            
        //    string sql1 = "select UId from LP_User where UName=" + UName;
        //    SqlDataReader sdr = SqlHelper.returnDataReader(sql1, CommandType.Text, null);
        //    while (sdr.Read())
        //    {
        //       int uid = int.Parse(sdr["GId"].ToString());
        //    }
        //    sdr.Close();
        //    string sql = "insert into LP_Playlist values(@UName,@UPwd,@UId)";
        //    SqlParameter[] pars = new SqlParameter[3];
        //    pars[0] = SqlHelper.MakeParam("@UName", SqlDbType.NChar, 10, UserName.Value);
        //    pars[1] = SqlHelper.MakeParam("@UPwd", SqlDbType.Char, 6, UserPwd.Value);
        //    pars[2] = SqlHelper.MakeParam("@UId", SqlDbType.Int, uid);
        //    try
        //    {
        //        SqlHelper.ExecuteNonQuery(sql, CommandType.Text, pars);
        //        Response.Redirect("M_Login.aspx");//跳转到登录页
        //    }
        //    catch (SqlException)
        //    {

        //    }

        //}
    }
}