using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text.RegularExpressions;
using System.Data;
using System.Security.Cryptography;
using System.Text;

namespace paducncms.Module
{

    public class UserRights
    {
        public static string AdminUserID
        {
            get
            {
                return PaducnSoft.Common.StringPlus.NullToString(System.Web.HttpContext.Current.Session["pdcms_admin"]);
            }
        }
        public static bool CheckUserSession()
        {
            object o = System.Web.HttpContext.Current.Session["pdcms_admin"];
            if (o == null)
                return false;
            else
                return true;

        } 
    }
}