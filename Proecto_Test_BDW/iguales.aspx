<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="iguales.aspx.cs" Inherits="Proecto_Test_BDW.iguales" %>

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


      <h2>Tu perfil es:  <br />DE TODO UN POCO</h2>
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
           <tr>
        <th>Reflexivo</th>
        <th>-          Tienden a adoptar la postura de un observador que analiza sus experiencias desde muchas perspectivas distintas.<br />

-          Recogen datos y los analizan detalladamente antes de llegar a una conclusión.<br />

-          Son precavidos y analizan todas las implicaciones de cualquier acción antes de ponerse en movimiento.<br />

-          En las reuniones observan y escuchan antes de hablar, procurando pasar desapercibidos.</th>
          <th>¿Por qué?</th>
          <th>-          Cuando pueden adoptar la postura del observador.<br />

-          Cuando pueden ofrecer observaciones y analizar la situación.<br />

-          Cuando pueden pensar antes de actuar.</th>
          <th>-          Cuando se les fuerza a convertirse en el centro de la atención.<br />

-          Cuando se les apresura de una actividad a otra.<br />

-          Cuando tienen que actuar sin poder planificar previamente.</th>
      </tr>
           <tr>
        <th>Teorico</th>
        <th>-          Adaptan e integran las observaciones que realizan en teorías complejas y bien fundamentadas lógicamente.<br />

-          Piensan de forma secuencial y paso a paso, integrando hechos dispares en teorías coherentes.<br />

-          Les gusta analizar y sintetizar la información y su sistema de valores premia la lógica y la racionalidad.<br />

-          Se sienten incómodos con los juicios subjetivos, las técnicas de pensamiento lateral y las actividades faltas de lógica clara.</th>
          <th>¿Qué?</th>
          <th>-          A partir de modelos, teorías, sistemas con ideas y conceptos que presenten un desafío.<br />

-          Cuando tienen oportunidad de preguntar e indagar.</th>
          <th>-          Con actividades que impliquen ambigüedad e incertidumbre.<br />

-          En situaciones que enfaticen las emociones y los sentimientos.<br />

-          Cuando tienen que actuar sin un fundamento teórico.</th>
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
       <asp:Button ID="btn_intentar" runat="server" Text="Volver a Intentarlo"  CssClass="btn log-in" OnClick="btn_intentar_Click"/>
          </center>
   </header>
   <br/>
  </div>
</form>
</div>
</body>
</html>
