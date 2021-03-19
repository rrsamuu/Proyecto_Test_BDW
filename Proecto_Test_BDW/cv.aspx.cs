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
    public partial class cv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                string connection = ConfigurationManager.ConnectionStrings["Myconnection"].ConnectionString;
                SqlConnection sqlConnection = new SqlConnection(connection);
                string sqlquery = "select Oraciones.DescripcionOracion, EstilosAprendizaje.NombreEstilo from  Oraciones, EstilosAprendizaje where Oraciones.IdReactivosEstilos= EstilosAprendizaje.IdReactivosEstilos and Oraciones.IdOracion between 61 and 80 order by NEWID()";
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

        protected void btn_eleger_perfil_Click(object sender, EventArgs e)
        {
            int cont_cc_actvio = Convert.ToInt32(Session["pp_sp_tp_activo"].ToString()),
                cont_cc_teorico = Convert.ToInt32(Session["pp_sp_tp_teorico"].ToString()),
                cont_cc_pragmatico = Convert.ToInt32(Session["pp_sp_tp_pragmatico"].ToString()),
                cont_cc_reflexivo = Convert.ToInt32(Session["pp_sp_tp_reflexivo"].ToString());

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
                        cont_cc_actvio++;
                    }
                    else
                    if (labcorrectans.Text == "PRAGMATICO")
                    {
                        cont_cc_pragmatico++;
                    }
                    else
                    if (labcorrectans.Text == "TEORICO")
                    {
                        cont_cc_teorico++;
                    }
                    else
                    if (labcorrectans.Text == "REFLEXIVO")
                    {
                        cont_cc_reflexivo++;
                    }
                }
            }


            Session["pp_sp_tp_cp_activo"] = cont_cc_actvio;
            Session["pp_sp_tp_cp_reflexivo"] = cont_cc_reflexivo;
            Session["pp_sp_tp_cp_teorico"] = cont_cc_teorico;
            Session["pp_sp_tp_cp_pragmatico"] = cont_cc_pragmatico;

            int activo = cont_cc_actvio;
            int reflexivo = cont_cc_reflexivo;
            int teorico = cont_cc_teorico;
            int pragmatico = cont_cc_pragmatico;

            lblcontador.Text = "activo" + activo + "reflexivo" + reflexivo + "teorico" + teorico + "pragmatico" + pragmatico;

            //if (todos == true)
            //{
            //    Response.Write("<script>alert('Debes seleccionar todas, aunque sea la respuesta no')</script>");
            //}
            //else
            //{
                if (activo > reflexivo && activo > teorico && activo > pragmatico)
                {
                    Response.Redirect("activo.aspx");
                }
                else
                {
                    if (reflexivo > activo && reflexivo > teorico && reflexivo > pragmatico)
                    {
                        Response.Redirect("reflexivo.aspx");
                    }
                    else
                    {
                        if (teorico > activo && teorico > reflexivo && teorico > pragmatico)
                        {
                            Response.Redirect("teorico.aspx");
                        }
                        else
                        {
                            if (pragmatico > activo && pragmatico > reflexivo && pragmatico > teorico)
                            {
                                Response.Redirect("pragmatico.aspx");
                            }
                            else
                            {
                                if ((activo == reflexivo && activo == teorico && activo == pragmatico) || (reflexivo == activo && reflexivo == teorico && reflexivo == pragmatico) || (teorico == activo && teorico == reflexivo && teorico == pragmatico) || (pragmatico == activo && pragmatico == reflexivo && pragmatico == teorico))
                                {
                                    Response.Redirect("iguales.aspx");
                                }
                            }
                        }
                    }
                }
            //}
        }
    }
}