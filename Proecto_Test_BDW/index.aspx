<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Proecto_Test_BDW.index" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Test de Estilos de Aprendizaje</title>
    <link rel="stylesheet" href="estilos.css" type="text/css"/>

    <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: center;
  font-family:Arial;
}
</style>

</head>
<body>
    <div class="overlay">
<form id="form1" runat="server">
   <div class="con">
   <header class="head-form">
      <h2>Bienvenido al <br />Test de Estilos de Aprendizaje</h2>
       <br />


       <table>
      <tr>
        <th style="width:15px"></th>
        <th style="width:50px">
            – Guild y Garger (1998) consideran que los Estilos de Aprendizaje son 
                            “las características estables de un individuo, expresadas a través de la interacción 
                            de la conducta de alguien y la personalidad cuando realiza una tarea de aprendizaje”.
        </th>
          <th style="width:15px"></th>
      </tr>
      <tr>
        <td style="width:15px;"></td>
        <td style="width:50px;">Este test ayuda a especificar preferencias de aprendizaje. La precisión de los resultados depende de la honestidad que desmuestres.</td>
          <td style="width:15px;"></td>
      </tr>
      <tr>
        <td style="width:15px;"></td>
        <td style="width:50px;">No hay respuesta correcta e incorrecta.</td>
          <td style="width:15px;"></td>
      </tr>  
           <tr>
        <td style="width:15px;"></td>
        <td style="width:50px;">Instrucciones: Marca el boton "SI" si estás más a favor que en contra, pero si estás en contra que a favor, entonces marca el boton "NO".</td>
          <td style="width:15px;"></td>
      </tr> 
            <tr>
        <td style="width:15px;"></td>
        <td style="width:50px;">Si deja un boton en blanco, es decir, sin seleccionar, de tomora en cuenta con la opcion de "No".</td>
          <td style="width:15px;"></td>
      </tr> 
    </table>
       <center>
       <asp:Button ID="btn_empezar_pv" runat="server" Text="EMPEZAR" OnClick="btn_empezar_pv_Click" CssClass="btn log-in"/>
          </center>
   </header>
   <br/>
  </div>
</form>
</div>
</body>
</html>
