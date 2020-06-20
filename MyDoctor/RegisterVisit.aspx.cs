using MyDoctor.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDoctor
{
    public partial class RegisterVisit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cbVIP_CheckedChanged(object sender, EventArgs e)
        {
            tbVIPNumber.Visible = cbVIP.Checked;
        }

        protected void btnOK_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                VisitData data = new VisitData();
                data.FirstName = tbFName.Text;
                data.LastName = tbLName.Text;
                data.Email = tbEmail.Text;
                data.PESEL = tbPESEL.Text;
                data.CardNumber = tbVIPNumber.Text;
                data.DateVisit = calVisitDate.SelectedDate;
                data.DoctorId = Convert.ToInt32(ddDoctor.SelectedValue);
                Session["RegForm"] = data;
                Response.Redirect("~/RegisterVisit2.aspx");
            }
        }
    }
}