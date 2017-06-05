<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="PermotedStudentList.aspx.cs" Inherits="AdminHome.AccademicManagement.PermotedStudentList" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <div class="container">
     <label runat="server" id="lblmsg" style="text-align:center"></label>

         <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="FormNo"
              PageSize="6" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="NewRollNo" DataField="FormNo" />
                   <asp:BoundField HeaderText="Student Name" DataField="StName" />
                   <asp:BoundField HeaderText="S/O" DataField="FatName" />
                   <asp:BoundField HeaderText="NewBatch" DataField="Batch" />
                   <asp:BoundField HeaderText="RollNo." DataField="Rollno" />
                   <asp:BoundField HeaderText="DOB" DataField="Dob" />
                   <asp:BoundField HeaderText="Phone No." DataField="Gmobile" />
                   <asp:BoundField HeaderText="Blood Group" DataField="BloodGrp" />
                   <asp:BoundField HeaderText="Email" DataField="Femail" />
                   <asp:BoundField HeaderText="Gender" DataField="Gender" />
                   <asp:BoundField HeaderText="Date." DataField="Date1" />
                   <asp:BoundField HeaderText="Class" DataField="Class" />
                   <asp:BoundField HeaderText="Previous Passing Yr." DataField="PassingYear" />
                   <asp:BoundField HeaderText="Take Admission" DataField="TakeAdmision" />
                   <asp:BoundField HeaderText="Profile Created On" DataField="createddate" />
                   <asp:TemplateField HeaderText="View">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("FormNo") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-edit">Update</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
                  
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>


    </div>
      <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>      
</body>
</html>
</asp:Content>