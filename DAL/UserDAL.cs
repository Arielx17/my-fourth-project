using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class UserDAL
    {
        ////check账号密码是否正确
        //public static bool CheckUser(string UName,string UPwd)
        //{
        //    SqlParameter[] pars = new SqlParameter[2];
        //    pars[0] = SqlHelper.MakeParam("@UName", SqlDbType.NVarChar, 50, UName);
        //    pars[1] = SqlHelper.MakeParam("@UPwd", SqlDbType.NVarChar, 80, UPwd);
        //    string sql = "select * from LP_User where UName=@UName and UPwd=@UPwd";
        //}
    }
}
