<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudenceIndividualAttandanceImport.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StudenceIndividualAttandanceImport" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <fieldset><legend style="text-align:center;margin-bottom:10px;font-weight:bold;">Student Individule Import Attandance</legend></fieldset>
       <div class="col-lg-3"></div>
        <table class="table" style="border:dotted;font-weight:bold;width:50%">
          <tr><td>Select Batch</td><td><asp:DropDownList runat="server" CssClass="form-control" ID="ddlbatch" Width="130px"></asp:DropDownList></td></tr>
          <tr><td>Roll No</td><td><input runat="server" type="text" id="txtroll" class="form-control" title="Student Roll No" style="width:130px;" required="required" /></td></tr>
          <tr><td>Shift</td><td><asp:DropDownList runat="server" CssClass="form-control" ID="ddlshift" Width="130px">
              <asp:ListItem>-Select-</asp:ListItem>
              <asp:ListItem>Morning</asp:ListItem>
              <asp:ListItem>Evening</asp:ListItem>
          </asp:DropDownList></td></tr>
          <tr><td>Subject</td><td><asp:DropDownList runat="server" CssClass="form-control" ID="ddlsubject" Width="130px"></asp:DropDownList></td></tr>
          <tr><td><asp:Button runat="server" CssClass="form-control" Text="Import" BackColor="Green" ForeColor="White" OnClick="Unnamed_Click" /></td><td><label runat="server" id="lblmsg" style="color:red;font-weight:bold"></label></td></tr>
       </table>
         <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKSTFormNo" AllowPaging="true" PageSize="4" OnPageIndexChanging="gvTerritories_PageIndexChanging"  ShowFooter="false" >
               <Columns>
                   <asp:BoundField HeaderText="TeacherId" DataField="teacherId" />
                   <asp:BoundField HeaderText="Subject" DataField="subject" />
                   <asp:BoundField HeaderText="Date" DataField="attandancedate" />
                   <asp:BoundField HeaderText="Attandance Stutus" DataField="attandancestatus" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
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