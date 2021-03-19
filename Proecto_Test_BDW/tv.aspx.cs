using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Proecto_Test_BDW
{
    public partial class tv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connection = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                string sqlquery = "select Oraciones.DescripcionOracion, EstilosAprendizaje.NombreEstilo from  Oraciones, EstilosAprendizaje where Oraciones.IdReactivosEstilos= EstilosAprendizaje.IdReactivosEstilos and Oraciones.IdOracion between 41 and 60 order by NEWID()";
                sqlConnection.Open();
                SqlCommand sqlCommand = new SqlCommand(sqlquery, sqlConnection);
                SqlDataAdapter sqlDataAdapter = new SqlDataAdapter(sqlCommand);
                DataTable dataTable = new DataTable();
                sqlDataAdapter.Fill(dataTable);
                Repeater1.DataSource = dataTable;
                Repeater1.DataBind();
                sqlConnection.Close();
            }
        }

        protected void btn_cv_Click(object sender, EventArgs e)
        {
            int cont_tt_actvio = Convert.ToInt32(Session["pp_sp_activo"].ToString()),
                cont_tt_teorico = Convert.ToInt32(Session["pp_sp_teorico"].ToString()),
                cont_tt_pragmatico = Convert.ToInt32(Session["pp_sp_pragmatico"].ToString()),
                cont_tt_reflexivo = Convert.ToInt32(Session["pp_sp_reflexivo"].ToString());

            bool todos = false;

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rbsi = (RadioButton)ri.FindControl("rbtnsi");
                RadioButton rbno = (RadioButton)ri.FindControl("rbtnno");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAnswer");
                labcorrectans.Visible = false;
                //if (rbsi.Checked == false && rbno.Checked == false)
                //{
                //    todos = true;
                //}
                //else
                if (rbsi.Checked == true)
                {

                    if (labcorrectans.Text == "ACTIVO")
                    {
                        cont_tt_actvio++;
                    }
                    else
                    if (labcorrectans.Text == "PRAGMATICO")
                    {
                        cont_tt_pragmatico++;
                    }
                    else
                    if (labcorrectans.Text == "TEORICO")
                    {
                        cont_tt_teorico++;
                    }
                    else
                    if (labcorrectans.Text == "REFLEXIVO")
                    {
                        cont_tt_reflexivo++;
                    }
                }
            }

            //if (todos == true)
            //{
            //    Response.Write("<script>alert('Debes seleccionar todas, aunque sea la respuesta no')</script>");
            //}
            //else
            //{
                Session["pp_sp_tp_activo"] = cont_tt_actvio;
                Session["pp_sp_tp_reflexivo"] = cont_tt_reflexivo;
                Session["pp_sp_tp_teorico"] = cont_tt_teorico;
                Session["pp_sp_tp_pragmatico"] = cont_tt_pragmatico;
                Response.Redirect("cv.aspx");
            //}
        }
    }
}