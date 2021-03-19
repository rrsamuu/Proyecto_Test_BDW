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
    public partial class pv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connection = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                string sqlquery = "select Oraciones.DescripcionOracion, EstilosAprendizaje.NombreEstilo from  Oraciones, EstilosAprendizaje where Oraciones.IdReactivosEstilos= EstilosAprendizaje.IdReactivosEstilos and Oraciones.IdOracion between 1 and 20 order by NEWID()";
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

        protected void btn_sv_Click(object sender, EventArgs e)
        {
            int cont_pp_actvio = 0, 
                cont_pp_teorico = 0, 
                cont_pp_pragmatico = 0, 
                cont_pp_reflexivo = 0;

            bool todos = false;

            foreach (RepeaterItem ri in Repeater1.Items)
            {
                RadioButton rbsi = (RadioButton)ri.FindControl("rbtnsi");
                RadioButton rbno = (RadioButton)ri.FindControl("rbtnno");
                Label labcorrectans = (Label)ri.FindControl("LabCorrectAnswer");
                labcorrectans.Visible = false;
                //Checa si todos estan seleccionados
                //if(rbsi.Checked == false && rbno.Checked == false)
                //{
                //    todos = true;
                //}
                //else
                if (rbsi.Checked == true)
                {

                    if (labcorrectans.Text == "ACTIVO")
                    {
                        cont_pp_actvio++;
                    }
                    else
                    if (labcorrectans.Text == "PRAGMATICO")
                    {
                        cont_pp_pragmatico++;
                    }
                    else
                    if (labcorrectans.Text == "TEORICO")
                    {
                        cont_pp_teorico++;
                    }
                    else
                    if (labcorrectans.Text == "REFLEXIVO")
                    {
                        cont_pp_reflexivo++;
                    }
                }
            }

            //Comparaba la variable para saber si uno falta por seleccionar
            //if(todos == true)
            //{
            //    Response.Write("<script>alert('Debes seleccionar todas, aunque sea la respuesta no')</script>");
            //}
            //else
            //{
                Session["pp_activo"] = cont_pp_actvio;
                Session["pp_reflexivo"] = cont_pp_reflexivo;
                Session["pp_teorico"] = cont_pp_teorico;
                Session["pp_pragmatico"] = cont_pp_pragmatico;

                Response.Redirect("sv.aspx");
            //}
        }
    }
}