    using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proecto_Test_BDW
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btn_empezar_pv_Click(object sender, EventArgs e)
        {
            Response.Redirect("pv.aspx");
        }
    }
}