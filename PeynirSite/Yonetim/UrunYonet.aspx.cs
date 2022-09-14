using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PeynirSite.Yonetim
{
    public partial class UrunYonet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            int i = 0;




            if (e.Row.RowType == DataControlRowType.DataRow)


            {

                foreach (TableCell cell in e.Row.Cells)

                {

                    i++;

                    string str = HttpUtility.HtmlDecode(cell.Text);

                    if (cell.Text.Length > 40)

                        cell.Text = str.Substring(0, 40) + "…";


                    cell.ToolTip = str;

                }


            }




        }
  
    }
}