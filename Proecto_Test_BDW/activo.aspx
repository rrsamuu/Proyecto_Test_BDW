<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="activo.aspx.cs" Inherits="Proecto_Test_BDW.activo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Test de Estilos de Aprendizaje</title>
    <link rel="stylesheet" href="estilos.css" type="text/css"/>

    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">

        // Load the Visualization API and the corechart package.
        google.charts.load('current', { 'packages': ['corechart'] });

        // Set a callback to run when the Google Visualization API is loaded.
        google.charts.setOnLoadCallback(drawChart);

        // Callback that creates and populates a data table,
        // instantiates the pie chart, passes in the data and
        // draws it.
        function drawChart() {

            var data = google.visualization.arrayToDataTable(<%=obtenerDatos()%>);

            var options = {
                backgroundColor: { fill: 'transparent' },
                width: '600',
                height:'500'
            };

            // Instantiate and draw our chart, passing in some options.
            var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        }
    </script>

    <style>
table {
  border-collapse: collapse;
  width: 100%;
}
th, td {
  padding: 10px;
  text-wrap:initial;
  text-align: left;
  border-bottom: 1px solid #ddd;
  font-family:Arial;
  font-size:small;
}

.progress {
    padding: 4px;
    background: rgba(0, 0, 0, 0.25);
    border-radius: 6px;
    -webkit-box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.08);
    box-shadow: inset 0 1px 2px rgba(0, 0, 0, 0.25), 0 1px rgba(255, 255, 255, 0.08);
    width: 100%;
    background-color: darkgray;
}

.progress-bar {
    height: 20px;
    border-radius: 4px;
    -webkit-box-shadow: 0 0 1px 1px rgba(0, 0, 0, 0.25), inset 0 1px rgba(255, 255, 255, 0.1);
    box-shadow: 0 0 1px 1px rgba(0, 0, 0, 0.25), inset 0 1px rgba(255, 255, 255, 0.1);
    width: 100%;
    background: linear-gradient(45deg, rgba(66, 183, 245,0.8) 0%,rgba(66, 245, 189,0.4) 100%);
}

</style>

   

</head>
<body>
    <div class="overlay">
<form id="form1" runat="server">
     
   <div class="con">
        
   <header class="head-form">
       <div class="progress">
    <div class="progress-bar">100% Complete</div>
  </div>

      <h2>Tu perfil es:  <br />ACTIVO</h2>
       <div id="chart_div" style="display:flex; vertical-align:middle; align-items:center; justify-content:center"></div>
       <table>
      <tr>
        <th>Perfil</th>
        <th>Caracteristicas</th>
          <th>Respuesta</th>
          <th>Facilidades</th>
          <th>Dificultades</th>
      </tr>
      <tr>
        <th>Activos</th>
        <th>-          Se involucran totalmente y sin prejuicios en las experiencias nuevas.<br />

-          Disfrutan el momento presente y se dejan llevar por los acontecimientos.<br />

-          Suelen ser entusiastas ante lo nuevo y tienden a actuar primero y pensar después en las consecuencias.<br />

-          Llenan sus días de actividades y tan pronto disminuye el encanto de una de ellas se lanzan a la siguiente.<br />

-          Les aburre ocuparse de planes a largo plazo y consolidar los proyectos.<br />

-          Les gusta trabajar rodeados de gente, pero siendo el centro de las actividades.</th>
          <th>¿Cómo?</th>
          <th>-          Cuando se lanzan a una actividad que les presente un desafío.<br />

-          Cuando realizan actividades cortas e de resultado inmediato.<br />

-          Cuando hay emoción, drama y crisis.</th>
          <th>-          Cuando tienen que adoptar un papel pasivo.<br />

-          Cuando tienen que asimilar, analizar e interpretar datos<br />

-          Cuando tienen que trabajar solos.</th>
      </tr>
    </table>
       
       <center>
       <asp:Button ID="btn_intentar4" runat="server" Text="Volver a Intentarlo"  CssClass="btn log-in" OnClick="btn_intentar4_Click"/>
          </center>
   </header>
   <br/>
  </div>
</form>
</div>
</body>
</html>
