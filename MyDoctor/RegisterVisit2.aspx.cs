using MyDoctor.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDoctor
{
    public partial class RegisterVisit2 : System.Web.UI.Page
    {
        VisitData data = null;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                data = Session["RegForm"] as VisitData;                
            } catch (Exception exc)
            {
                Response.Redirect("~/RegisterVisit.aspx");
            }
        }
    }
}