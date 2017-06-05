<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="GenerateClassRoutin.aspx.cs" Inherits="AdminHome.RoutinModule.GenerateClassRoutin" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
     <link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/themes/base/jquery-ui.css"/>
     <script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
     <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.2/jquery-ui.min.js"></script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>

  
<%--<form id="form1" runat="server">--%>
<div class="container" style="background-color:skyblue; margin-bottom:50px;margin-top:50px; height:50px;text-align:center"><h4>Generate Schedule Class Routine</h4></div>       
<div class="container">
         <p>
         <input type="button" value="add column" onclick="addColumn('tblSample')" />
         <input type="button" value="delete column" onclick="deleteColumn('tblSample')" />
         </p>
           <table id="tblSample" class="table table-striped tblSample">
      <thead style="background-color:skyblue">
        <tr>
          <th>Days</th>
          <th>First Name</th>
          <th>Last Name</th>
          <th>Username</th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row">Mon</th>
          <td class="cell-which-triggers-popup">Mark</td>
          <td class="cell-which-triggers-popup">Otto</td>
          <td class="cell-which-triggers-popup">@mdo</td>
        </tr>
        <tr>
          <th scope="row">Tue</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
        </tr>
        <tr>
          <th scope="row">Wed</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
           <tr>
          <th scope="row">Thu</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
           <tr>
          <th scope="row">Fri</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
           <tr>
          <th scope="row">Sat</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
        </tr>
      </tbody>
    </table>
        <%-- POPUP --%>
         <div id="popup" class="dialog">
            <%--<a href="#close"><img src="http://bit.ly/1qAuZh3" alt="..." width="166" height="104" align="left"/></a>--%>
            <h5 style="text-align:center"></h5> 
             <asp:Table runat="server" CssClass="table" >
                 <asp:TableRow><asp:TableCell><asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control"></asp:DropDownList></asp:TableCell><asp:TableCell><asp:DropDownList ID="ddlbatch" runat="server" CssClass="form-control"></asp:DropDownList></asp:TableCell></asp:TableRow>
                 <asp:TableRow><asp:TableCell><asp:TextBox runat="server" ID="txtfrom" placeholder="Time From" CssClass="form-control"></asp:TextBox></asp:TableCell>
                 <asp:TableCell><asp:TextBox runat="server" ID="txtto" placeholder="Time To" CssClass="form-control"></asp:TextBox></asp:TableCell><asp:TableCell>
                 <asp:Button runat="server" ID="btndetails" Text="Add" CssClass="btn btn-primary" /></asp:TableCell></asp:TableRow>
             </asp:Table>
             <h6 style="text-align:center">OR</h6> <asp:CheckBox runat="server" ID="chklunch" Text="Lunch Break" />
             <asp:Button ID="btnlunch" runat="server" CssClass="btn btn-primary" Text="Add" />
        </div>
</div>

<%--</form>--%>
   <%-- Script to add or delete Columns --%>
     <script>
         function addColumn(tblId) {
             var tblHeadObj = document.getElementById(tblId).tHead;
             for (var h = 0; h < tblHeadObj.rows.length; h++) {
                 var newTH = document.createElement('th');
                 tblHeadObj.rows[h].appendChild(newTH);
                 newTH.innerHTML = 'Period:' + (tblHeadObj.rows[h].cells.length - 1)
             }

             var tblBodyObj = document.getElementById(tblId).tBodies[0];
             for (var i = 0; i < tblBodyObj.rows.length; i++) {

                 var newCell = document.createElement('td');

                 tblBodyObj.rows[i].insertCell(-1).appendChild(newCell);
                 
                 newCell.outerHTML = newCell.className('cell-which-triggers-popup');
                 newCell.innerHTML = '[td] row:' + i + ', cell: ' + (tblBodyObj.rows[i].cells.length - 1);
             }
         }
         function deleteColumn(tblId) {
             var allRows = document.getElementById(tblId).rows;
             for (var i = 0; i < allRows.length; i++) {
                 if (allRows[i].cells.length > 1) {
                     allRows[i].deleteCell(-1);
                 }
             }
         }
   </script>
    <%-- script to popup --%>
    <script>
        $(document).ready(function () {
            $(document).on("click", ".cell-which-triggers-popup", function (event) {
                var cell_value = $(event.target).text();
                showPopup(cell_value)
            });

            function showPopup(your_variable) {
                $("#popup").dialog({
                    width: 500,
                    height: 300,
                    open: function () {
                        $(this).find("h5").html("Hello " + your_variable)
                    }
                });
            }
        });
</script>
    <%-- Css Style to popup --%>
    <style>
            #popup{
                display: none;
                border: 1px solid black;
            }

            .cell-which-triggers-popup{
                cursor: pointer;    
            }

            .cell-which-triggers-popup:hover{
                background-color: yellow;    
            }
    </style>
</body>

</html>
</asp:Content>