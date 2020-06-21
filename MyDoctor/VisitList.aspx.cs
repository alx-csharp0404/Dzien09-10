using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyDoctor
{
    public partial class VisitList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["auth_user"]==null)
            {
                Response.Redirect("~/Login");
            }
        }

        protected void gridView_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                if (e.Row.Cells[8].Text=="0")
                {
                    e.Row.Cells[8].Text = "NOWY";
                }
                if (e.Row.Cells[8].Text == "1")
                {
                    e.Row.Cells[8].Text = "AKCEPTACJA";
                }
                if (e.Row.Cells[8].Text == "-1")
                {
                    e.Row.Cells[8].Text = "ANULOWANO";
                }


            }
        }

        public String GetDoctor(int doctorId)
        {
            switch (doctorId)
            {
                case 1:
                    return "Jan Kowalski";
                case 2:
                    return "Janina Zientek";
                case 3:
                    return "Mirosław Baka";
                default:
                    return "---";
            }
        }

        String cs = ConfigurationManager.ConnectionStrings["edoctorConnectionString"].ConnectionString;
        protected void gridView_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName=="DeleteRow")
            {
                //usuwać rekord
                int rowId = Convert.ToInt32(e.CommandArgument);
                using (MySqlConnection conn = new MySqlConnection(cs))
                {
                    conn.Open();
                    MySqlCommand cmd = new MySqlCommand("DELETE FROM visits WHERE id=" + rowId, conn);
                    cmd.ExecuteNonQuery();

                    //odśwież grid
                    gridView.DataBind();
                }
            }
        }
    }
}