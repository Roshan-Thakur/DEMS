<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AssignGuidTeacherfrm.aspx.cs" Inherits="AdminHome.GuidTeacherManagement.AssignGuidTeacherfrm" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
   
    <div class="container">
        
        <div class="col-4" style="width:280px;">
        <asp:Table runat="server" ID="tb3" CssClass="table">
                 <asp:TableRow>
                   <asp:TableCell>Shift:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlshift" CssClass="form-control">
                       <asp:ListItem>Select--</asp:ListItem>
                       <asp:ListItem>Morning</asp:ListItem>
                       <asp:ListItem>Evening</asp:ListItem>
                       <asp:ListItem>Day</asp:ListItem>
                    </asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                   <asp:TableCell>Batch:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlbatch" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
                 <asp:TableRow>
                 <asp:TableCell>Section:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" Width="180px" ID="ddlsection" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                 </asp:TableRow>
            <asp:TableRow> <asp:TableCell><asp:Button runat="server" ID="btnmonth" CssClass="btn btn-primary" Text="Search" OnClick="btnmonth_Click"   /></asp:TableCell></asp:TableRow>
        </asp:Table>
        <asp:Table runat="server" CssClass="table" ID="tb1">
            <asp:TableRow>
            <asp:TableCell><asp:DropDownList runat="server" ID="ddlID" CssClass="form-control" Width="180px"></asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow><asp:TableCell><asp:Button runat="server" ID="btnasign" Text="Asign" CssClass="btn btn-primary" OnClick="btnasign_Click"  /></asp:TableCell></asp:TableRow>
        </asp:Table>
            <asp:Label runat="server" ID="lblmsg" Font-Bold="true" ForeColor="Red"></asp:Label>
        </div>
        <div class="col-8">
            <asp:Label runat="server" ID="lblno" CssClass="label" Font-Size="Medium"></asp:Label>
            <div style="height:480px;min-width:260px; overflow:auto">
                 <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FormNo"  ShowFooter="true"  OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <%--FormNoSection shift batch assignteacherId--%>
                   <asp:BoundField HeaderText="StudentID" DataField="FormNo" />
                   <asp:BoundField HeaderText="Section." DataField="Section"/>
                   <asp:BoundField HeaderText="Shift." DataField="Shift" />
                   <asp:BoundField HeaderText="Batch" DataField="Batch" />
                   <asp:BoundField HeaderText="TeacherID" DataField="assignteacherId" />
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
</body>
</html>
</asp:Content>