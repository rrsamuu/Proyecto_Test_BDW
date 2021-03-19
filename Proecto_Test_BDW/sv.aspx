<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sv.aspx.cs" Inherits="Proecto_Test_BDW.sv" %>

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
  padding: 10px;
  text-wrap:initial;
  text-align: left;
  border-bottom: 1px solid #ddd;
  font-family:Arial;
  font-size:small;
}

tr:hover {background-color:#f5f5f5;}


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
    width: 25%;
    background: linear-gradient(45deg, rgba(66, 183, 245,0.8) 0%,rgba(66, 245, 189,0.4) 100%);
}


</style>

</head>
<body>
    <div class="overlay">
<form id="form1" runat="server">
   <div class="con">
   <header class="head-form">
      <h2>Segunda Parte</h2>
       <br />
  <div class="progress">
    <div class="progress-bar">25% Complete</div>
  </div>

       
   </header>
       <asp:Repeater ID="Repeater1" runat="server">
           <ItemTemplate>
               <table>
                                    <tr>
                                        <td>
                                            <%#Eval("DescripcionOracion")%>
                                        </td>
                                        <td style="text-align:right">
                                            <asp:RadioButton ID="rbtnsi" runat="server" Text="Si" GroupName="sino"/>
                                            <asp:RadioButton ID="rbtnno" runat="server" Text="No" GroupName="sino"/>
                                            <asp:Label ID="LabCorrectAnswer" runat="server" Text='<%#Eval("NombreEstilo") %>' Visible="false"></asp:Label>
                                            
                                        </td>
                                    </tr>
                                </table>
           </ItemTemplate>
       </asp:Repeater>
      <center>
       <asp:Button ID="btn_tv" runat="server" Text="SIGUENTES" OnClick="btn_tv_Click" CssClass="btn log-in"/>
          </center>
  </div>
</form>
</div>
</body>
</html>
