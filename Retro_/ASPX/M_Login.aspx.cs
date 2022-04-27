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
    public partial class M_Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["name"] != null)
                {
                    UserName.Value = Request.Cookies["name"].Value;
                    UserPwd.Value = Request.Cookies["pwd"].Value;
                }
            }
        }
        protected void Log_Click(object sender, EventArgs e)
        {
            string sql = "select UId from LP_User where UName=N'" + UserName.Value + "' and UPwd=N'" + UserPwd.Value + "'";
            string uId = Convert.ToString(SqlHelper.ExecuteScalar(sql, CommandType.Text, null));
            Response.Write(uId);
            if (check.Checked == true)
            {
                if (UserName.Value == string.Empty && UserPwd.Value == string.Empty)
                {
                    /*ClientScript:往客户端发送脚本*/
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('不能为空')</script>");
                }
                else if (uId != string.Empty)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('登录成功')</script>");
                    //假设数据库验证通过后
                    //把用户名跟密码放进session里  
                    Response.Cookies["name"].Value = UserName.Value;
                    Response.Cookies["pwd"].Value = UserPwd.Value;
                    Response.Cookies["uid"].Value = uId;
                    Session["userName"] = UserName.Value;
                    Session["userPwd"] = UserPwd.Value;
                    Session["uid"] = uId;
                    Response.Redirect("Main.aspx");
                    //设置过期时间为7天
                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["pwd"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["uid"].Expires = DateTime.Now.AddDays(7);

                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('用户名或者密码错误')</script>");
                }
            }
            else
            {
                if (UserName.Value == string.Empty && UserPwd.Value == string.Empty)
                {
                    /*ClientScript:往客户端发送脚本*/
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('不能为空')</script>");
                }
                else if (uId != string.Empty)
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('登录成功')</script>");
                    Response.Redirect("Main.aspx");
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Alert", "<script>alert('用户名或者密码错误')</script>");
                }
            }
        }
    }
}