<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StaffCurrentAttandanceStatus.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StaffCurrentAttandanceStatus" %>

<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="row" style="text-align:center">
             <span style="font-weight:bold;font-size:large">Staff Attandnce Status</span>
        </div>
        
              <div class="col-lg-8">
               
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Present Staff/Employee</a></li>
                <li><a data-toggle="tab" href="#menu1">Absents Staff/Employee</a></li>
             </ul>
                <div class="tab-content">
        <div id="home" class="tab-pane fade in active">
                       

        <div class="container" style="margin-top:20px;width:95%"> 
             <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKEID"  ShowFooter="true" >
               <Columns>
                  <asp:BoundField HeaderText="EMP/Staff ID" DataField="FKEID" />
                   <asp:BoundField HeaderText="AttandanceTime" DataField="attandancetime" />
                   <asp:BoundField HeaderText="Latitute" DataField="latitute" />
                   <asp:BoundField HeaderText="Longitute" DataField="longitute" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView></div> 
        
                    </div>
                    <div id="menu1" class="tab-pane fade">
                       
            <div class="container" style="margin-top:20px;width:95%"> 
             <asp:Label runat="server" ID="lbldate1" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories1" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKEID"  ShowFooter="true" >
               <Columns>
                 
                   <asp:BoundField HeaderText="EMP/Staff ID" DataField="FKEID" />
                   <asp:BoundField HeaderText="AttandanceTime" DataField="attandancetime" />
                   <asp:BoundField HeaderText="Latitute" DataField="latitute" />
                   <asp:BoundField HeaderText="Longitute" DataField="longitute" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView></div> 
                      
                    </div>
                    </div>
            </div>
    </div>
    <%--</form>--%>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
       
    </script>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories1]').footable();
        });
    </script>
   
</body>
</html>
</asp:Content>
