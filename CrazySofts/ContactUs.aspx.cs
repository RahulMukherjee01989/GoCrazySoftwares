using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            HtmlGenericControl licontact = (HtmlGenericControl)this.Page.Master.FindControl("ulnav").FindControl("licontact");

            licontact.Attributes["class"] = "active";

        }
    }
}