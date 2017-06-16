using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!Page.IsPostBack)
        {
            HtmlGenericControl liindex = (HtmlGenericControl)this.Page.Master.FindControl("ulnav").FindControl("liindex");

            liindex.Attributes["class"] = "active";

        }
    }
}