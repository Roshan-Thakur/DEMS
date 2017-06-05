<%@ Page Language="C#" MasterPageFile ="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="AdmissionDetails1.aspx.cs" Inherits="AdminHome.AccademicManagement.AdmissionDetails1" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div style="text-align:center"><h2>StudentsProfile Details</h2></div>
        <div class="container">
            <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="FormNo"
              PageSize="4" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="FormNo." DataField="FormNo" />
                   <asp:BoundField HeaderText="Student Name" DataField="StName" />
                   <asp:BoundField HeaderText="S/O" DataField="FatName" />
                   <asp:BoundField HeaderText="Batch" DataField="Batch" />
                   <asp:BoundField HeaderText="RollNo." DataField="Rollno" />
                   <asp:BoundField HeaderText="DOB" DataField="Dob" />
                   <asp:BoundField HeaderText="Phone No." DataField="Hmobile" />
                   <asp:BoundField HeaderText="Blood Group" DataField="BloodGrp" />
                   <asp:BoundField HeaderText="Email" DataField="Femail" />
                   <asp:BoundField HeaderText="Gender" DataField="Gender" />
                   <asp:BoundField HeaderText="Date." DataField="Date1" />
                   <asp:ImageField HeaderText="Profile Image" DataImageUrlField="img"></asp:ImageField>
                   <asp:BoundField HeaderText="Class" DataField="Class" />
                   <asp:BoundField HeaderText="Shift" DataField="Shift" />
                   <asp:BoundField HeaderText="Group" DataField="Group1" />
                   <asp:BoundField HeaderText="Section." DataField="Section" />
                   <asp:BoundField HeaderText="Religion" DataField="Religion" />
                   <asp:BoundField HeaderText="Admission Yr." DataField="AdmisionYear" />
                   <asp:BoundField HeaderText="Father Occupation" DataField="Foccupation" />
                   <asp:BoundField HeaderText="Father Income" DataField="Fincome" />
                   <asp:BoundField HeaderText="Mother Name" DataField="MothName" />
                   <asp:BoundField HeaderText="Mother Occupation" DataField="Moccupation" />
                   <asp:BoundField HeaderText="Mother Income" DataField="Minome" />
                   <asp:BoundField HeaderText="Mother Email" DataField="Memail" />
                   <asp:BoundField HeaderText="Father Mobile" DataField="Fmobile" />
                   <asp:BoundField HeaderText="Mother Mobile" DataField="Mmobile" />
                   <asp:BoundField HeaderText="Gurdian Relation" DataField="GRelation" />
                   <asp:BoundField HeaderText="Gurdian Name" DataField="Gname" />
                   <asp:BoundField HeaderText="Gurdian Mobile" DataField="Gmobile" />
                   <asp:BoundField HeaderText="Gurdian Adderess" DataField="Gaddress" />
                   <asp:BoundField HeaderText="Present Adderess" DataField="PresentAddress" />
                   <asp:BoundField HeaderText="Present District" DataField="PrDistrict" />
                   <asp:BoundField HeaderText="Present Stste" DataField="PrState" />
                   <asp:BoundField HeaderText="Parmanent Adderess" DataField="ParmanantAddress" />
                   <asp:BoundField HeaderText="Parmanent District" DataField="ParDistrict" />
                   <asp:BoundField HeaderText="Parmanent Stste" DataField="ParState" />
                   <asp:BoundField HeaderText="Previous School" DataField="PreviousSchoolName" />
                   <asp:BoundField HeaderText="PreVious RollNo." DataField="RollNoPre" />
                   <asp:BoundField HeaderText="Previous Passing Yr." DataField="PassingYear" />
                   <asp:BoundField HeaderText="Previous Board" DataField="BoardPre" />
                   <asp:BoundField HeaderText="Previous Ragistration" DataField="RagistrationPre" />
                   <asp:BoundField HeaderText="Transfer Certificate" DataField="TranferCertificate" />
                   <asp:BoundField HeaderText="Take Admission" DataField="TakeAdmision" />
                   <asp:BoundField HeaderText="Password" DataField="password" />
                   <asp:BoundField HeaderText="Active Status" DataField="activestatus" />
                   <asp:BoundField HeaderText="User Name" DataField="username" />
                   <asp:BoundField HeaderText="Profile Created On" DataField="createddate" />
                   <asp:TemplateField HeaderText="View">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("FormNo") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-eye-open">View  || </span>
                           </asp:LinkButton>
                            <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Red" CommandArgument='<%# Eval("FormNo") %>' CommandName="ViewDetails" OnCommand="LinkButton1_Command" >
                               <span class="glyphicon glyphicon-edit">Edit</span>
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