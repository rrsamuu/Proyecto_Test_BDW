<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pragmatico.aspx.cs" Inherits="Proecto_Test_BDW.pragmatico" %>

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


      <h2>Tu perfil es:  <br />PRAGMATICO</h2>
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
        <th>Pragmatico</th>
        <th>-          Les gusta probar ideas, teorías y técnicas nuevas, y comprobar si funcionan en la práctica.<br />

-          Les gusta buscar ideas y ponerlas en práctica inmediatamente.<br />

-          Les aburren e impacientan las largas discusiones discutiendo la misma idea de forma interminable.<br />

-          Son básicamente gente práctica, apegada a la realidad, a la que le gusta tomar decisiones y resolver problemas.<br />

-          Los problemas son un desafío y siempre están buscando una manera mejor de hacer las cosas</th>
          <th>¿Qué pasaría si...?</th>
          <th>-          Con actividades que relacionen la teoría y la práctica.<br />

-          Cuando ven a los demás hacer algo.<br />

-          Cuando tienen la posibilidad de poner en práctica inmediatamente lo que han aprendido.</th>
          <th>-          Cuando lo que aprenden no se relacionan con sus necesidades inmediatas.<br />

-          Con aquellas actividades que no tienen una finalidad aparente.<br />

-          Cuando lo que hacen no está relacionado con la 'realidad'.</th>
      </tr>
           
    </table>
       <center>
       <asp:Button ID="btn_intentar2" runat="server" Text="Volver a Intentarlo"  CssClass="btn log-in" OnClick="btn_intentar2_Click"/>
          </center>
   </header>
   <br/>
  </div>
</form>
</div>
</body>
</html>
