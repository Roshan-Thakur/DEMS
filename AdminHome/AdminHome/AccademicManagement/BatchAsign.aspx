<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="BatchAsign.aspx.cs" Inherits="AdminHome.AccademicManagement.BatchAsign" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>

    <div class="container">
        <div class="container" style="height:50px; margin-top:50px; margin-bottom:50px;text-align:center;background-color:skyblue;">New Student Asign Batch</div>
        
        <div class="col-lg-6"><fieldset><legend>Search Class Wise Student</legend>
                 <asp:Table ID="Table1" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Shift Name:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Day</asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Class:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                            <asp:DropDownList runat="server" ID="ddlclass" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Both</asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
              </asp:Table></fieldset> 
            <asp:Button runat="server" Text="Search" CssClass="btn btn-primary" OnClick="Unnamed_Click1" />
         </div>
        <div class="col-lg-6"><fieldset><legend>Assign Batch </legend>
            <asp:Table ID="Table2" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Batch Name:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Both</asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                    <asp:TableRow>
                       <asp:TableCell>
                           <span>Section:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                            <asp:DropDownList runat="server" ID="ddlsection" CssClass="form-control">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Both</asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
              </asp:Table></fieldset>
            <asp:Button ID="btnassign" runat="server" Text="Assign" CssClass="btn btn-primary" OnClick="btnassign_Click" />
        </div>
        
    </div>
        <div style="text-align:center"><asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label></div>
         <div  style="height:30px; background-color:skyblue;margin-top:50px;text-align:center"><h4>Search or Assign Student List</h4></div>   
         <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="FormNo"
              PageSize="4" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                  <asp:BoundField HeaderText="FormNo." DataField="FormNo" />
                   <asp:BoundField HeaderText="RollNo." DataField="Rollno" />
                   <asp:BoundField HeaderText="S/O" DataField="FatName" />
                   <asp:BoundField HeaderText="Student Name" DataField="StName" />
                   <asp:BoundField HeaderText="Shift Name" DataField="Shift" />
                   <asp:BoundField HeaderText="Class" DataField="Class" />
                   <asp:BoundField HeaderText="Group" DataField="Group1" />
                   <asp:BoundField HeaderText="Section" DataField="Section" />
                   <asp:BoundField HeaderText="Batch" DataField="Batch" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
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