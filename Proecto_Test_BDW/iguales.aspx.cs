using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Proecto_Test_BDW
{
    public partial class iguales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected string obtenerDatos()
        {


            DataTable Datos = new DataTable();

            int activo = Convert.ToInt32(Session["pp_sp_tp_cp_activo"]);
            int reflexivo = Convert.ToInt32(Session["pp_sp_tp_cp_reflexivo"]);
            int teorico = Convert.ToInt32(Session["pp_sp_tp_cp_teorico"]);
            int pragmatico = Convert.ToInt32(Session["pp_sp_tp_cp_pragmatico"]);

            Datos.Columns.Add(new DataColumn("Estilos", typeof(string)));
            Datos.Columns.Add(new DataColumn("Reactivos", typeof(int)));

            Datos.Rows.Add(new Object[] { "ACTIVO", activo });
            Datos.Rows.Add(new Object[] { "REFLEXIVO", reflexivo });
            Datos.Rows.Add(new Object[] { "TEORICO", teorico });
            Datos.Rows.Add(new Object[] { "PRAGMATICO", pragmatico });

            string strDatos;
            strDatos = "[['Estilos','Reactivos'],";

            foreach (DataRow dr in Datos.Rows)
            {
                strDatos = strDatos + "[";
                strDatos = strDatos + "'" + dr[0] + "'" + "," + dr[1];
                strDatos = strDatos + "],";
            }

            strDatos = strDatos + "]";

            return strDatos;
        }

        protected void btn_intentar_Click(object sender, EventArgs e)
        {
            Response.Redirect("index.aspx");
        }
    }
}