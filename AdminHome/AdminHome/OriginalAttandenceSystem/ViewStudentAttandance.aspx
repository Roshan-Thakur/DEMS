<%@ Page Language="C#" MasterPageFile="~/StudentDesboard/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewStudentAttandance.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.ViewStudentAttandance" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="header"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
       <fieldset><legend style="text-align:center;font-size:medium">Student Attandance Details</legend>
    <div class="row">
         <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FKSTFormNo"  ShowFooter="true" >
               <Columns>
                   
                   <asp:BoundField HeaderText="StudentID" DataField="FKSTFormNo" />
                   <asp:BoundField HeaderText="Date" DataField="attandancedate" />
                   <asp:BoundField HeaderText="Status." DataField="attandancestatus" />
                   <asp:BoundField HeaderText="Subject." DataField="subject" />
                   <asp:BoundField HeaderText="TeacherID." DataField="teacherId" />
                   <asp:BoundField HeaderText="Batch" DataField="batch" />
                   <asp:BoundField HeaderText="Shift" DataField="shift" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
    </div></fieldset>
    </div>
    <%--</form>--%>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>