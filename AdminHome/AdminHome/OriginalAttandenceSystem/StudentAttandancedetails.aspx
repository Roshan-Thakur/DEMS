<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="StudentAttandancedetails.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StudentAttandancedetails" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
     <asp:Label runat="server" ID="lblmsg"></asp:Label>
        <div class="container">
         <div class="col-lg-3" style="margin-bottom:5px;">
            <asp:Button runat="server" ID="searchmont" CssClass="searchmont" Text="Search by Month" Width="180px"  />
            <asp:Button ID="btnsrcdate" Width="180px" CssClass="btnbatchby" runat="server" Text="Search by Batch"   />
             <asp:Table runat="server" ID="tb3" CssClass="table tb3">
                 <asp:TableRow><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlmonth" CssClass="form-control"></asp:DropDownList></asp:TableCell></asp:TableRow>
                 <asp:TableRow><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlstatusByMonth" CssClass="form-control">
                     <asp:ListItem>Select Status</asp:ListItem>
                     <asp:ListItem>Present</asp:ListItem>
                     <asp:ListItem>Absent</asp:ListItem>
                 </asp:DropDownList></asp:TableCell></asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><asp:DropDownList runat="server" ID="ddlbatch" Width="180px" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><asp:Button runat="server" ID="btnmonth" CssClass="btn btn-primary" Text="Search" OnClick="btnmonth_Click"   /></asp:TableCell>
                 </asp:TableRow>
             </asp:Table>
          
             <asp:Table runat="server" ID="tb2" CssClass="table tb2">
                 <asp:TableRow><asp:TableCell><asp:TextBox ID="txt" CssClass="form-control txt" Width="180px"  placeholder="Date" runat="server"></asp:TextBox></asp:TableCell></asp:TableRow>
                  <asp:TableRow><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlsattusByDate" CssClass="form-control">
                     <asp:ListItem>Select Status</asp:ListItem>
                     <asp:ListItem>Present</asp:ListItem>
                     <asp:ListItem>Absent</asp:ListItem>
                 </asp:DropDownList></asp:TableCell></asp:TableRow>
                 <asp:TableRow>
                     <asp:TableCell><asp:DropDownList runat="server" ID="ddlbatch1" Width="180px" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow> <asp:TableCell><asp:Button runat="server" ID="btndateee" CssClass="btn btn-primary" Text="Search" OnClick="btndate_Click"  /></asp:TableCell></asp:TableRow>
             </asp:Table>
        </div>
        <div class="col-lg-9" style="margin-top:10px;">
             
             <asp:Label runat="server" ID="lblInfo" Text="13-04-2017" Font-Size="Medium" CssClass="label"></asp:Label>
             <asp:Label runat="server" ID="lblstudcount" CssClass="label" Font-Size="Medium"></asp:Label>
             <div style=" height: 480px; overflow:auto">
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FKSTFormNo"  ShowFooter="true"  OnRowDataBound="gvTerritories_RowDataBound" >
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
            </div>
        </div>
    </div>    
    <%--</form>--%>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
     <script type="text/javascript">
         $(function () {
             $(".txt").datepicker({ dateFormat: 'dd-mm-y' });
             $(".txtdob").datepicker();
             //var date = $('#datepicker').datepicker({ dateFormat: 'dd-mm-yy' }).val();
         });
     </script>
     <%-- Button and table hide script--%>
    <script>
        $(document).ready(function () {
            $(".tb3").hide();
            $(".tb2").hide();
            $(".btnbatchby").click(function () {
                $(".tb2").show();
                $(".tb3").hide();
                return false;
            });
            $(".searchmont").click(function () {
                $(".tb2").hide();
                $(".tb3").show();
                return false;
            });
        });
</script>
</body>
</html>
</asp:Content>