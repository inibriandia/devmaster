using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Threading;
using System.Globalization;

namespace Master
{
    public partial class Information : System.Web.UI.Page
    {
        protected override void InitializeCulture()
        {
            string langue = this.Request.Form["ctl00$ContentPlaceHolder1$centreContent$langueDropDownList"];
            Console.Write(langue);

            if (langue == null)
            {
                this.Session.Add("AncienneCulture", Thread.CurrentThread.CurrentCulture.Name);
            }
            else
            {
                this.Culture = langue;
                this.UICulture = langue;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.IsPostBack)
            {
                if (langueDropDownList.SelectedValue == "auto")
                {
                    this.Session["AncienneCulture"] = this.Request.UserLanguages[0];
                }
                else
                {
                    this.Session["AncienneCulture"] = langueDropDownList.SelectedValue;
                }
            }
        }
    }
}