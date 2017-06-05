<%@ Page Language="C#" MasterPageFile="~/TeacherDesboard/TeacherMasterpage.Master" AutoEventWireup="true" CodeBehind="TdStaffAttandancedetails.aspx.cs" Inherits="AdminHome.TeacherDesboard.TdStaffAttandancedetails" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="conntent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    
    <div class="container">
    <fieldset><legend style="text-align:center;font-size:medium">Teacher Attandance Details</legend>
    <div class="row" style="margin-top:10px;">
         <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" OnPageIndexChanging="gvTerritories_PageIndexChanging" 
              GridLines="None" DataKeyNames="FKEID"  ShowFooter="false" PageSize="9" AllowPaging="true" >
               <Columns>
                   <asp:BoundField HeaderText="EID" DataField="FKEID" />
                   <asp:BoundField HeaderText="Time" DataField="attandancetime" />
                   <asp:BoundField HeaderText="Attandance." DataField="attandancestatus" />
                   <asp:BoundField HeaderText="Date." DataField="attandancedate" />
                   <asp:BoundField HeaderText="Latitude." DataField="latitute" />
                   <asp:BoundField HeaderText="Longitude" DataField="longitute" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
    </div>

    </fieldset>
    </div>
   
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>