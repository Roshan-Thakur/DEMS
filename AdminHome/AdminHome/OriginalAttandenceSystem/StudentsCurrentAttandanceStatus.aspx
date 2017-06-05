<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudentsCurrentAttandanceStatus.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StudentsCurrentAttandanceStatus" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>

    <div class="container">
        <div class="row" style="text-align:center">
            <span style="font-weight:bold;text-align:center;margin-bottom:20px;font-size:large">Students Attandnce Status</span>
        </div>
              <div class="col-lg-8"> 
                <ul class="nav nav-tabs">
                <li class="active"><a data-toggle="tab" href="#home">Present Students</a></li>
                <li><a data-toggle="tab" href="#menu1">Absents Students</a></li>
             </ul>
                <div class="tab-content">
                     <div id="home" class="tab-pane fade in active">
                         

           <div class="container" style="width:95%;margin-top:20px;"> 
             <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKSTFormNo"  ShowFooter="true" >
               <Columns>
                   <asp:BoundField HeaderText="StudentRoll." DataField="FKSTFormNo" />
                   <asp:BoundField HeaderText="Batch" DataField="batch" />
                   <asp:BoundField HeaderText="Subject" DataField="subject" />
                   <asp:BoundField HeaderText="AttandanceDate" DataField="attandancedate" />
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
                        
         <div class="container" style="width:95%;margin-top:20px;"> 
             <asp:Label runat="server" ID="lbldate1" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories1" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKSTFormNo"  ShowFooter="true" >
               <Columns>
                   <asp:BoundField HeaderText="StudentRoll." DataField="FKSTFormNo" />
                   <asp:BoundField HeaderText="Batch" DataField="batch" />
                   <asp:BoundField HeaderText="Subject" DataField="subject" />
                   <asp:BoundField HeaderText="AttandanceDate" DataField="attandancedate" />
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
         $(function () {
             $('[id*=gvTerritories1]').footable();
         });
    </script>
</body>
</html>
</asp:Content>