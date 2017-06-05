<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="StaffEmpdetails.aspx.cs" Inherits="AdminHome.HumanResorceView.StaffEmpdetails" %>
<%@ Register Src="~/usercontrolpage/empstaffcontrol.ascx" TagName="EmpStafUpdate" TagPrefix="Emp" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <%--<form id="form1" runat="server">--%>
    
        <div class="container">
            <div class="col-sm-3">
                <asp:RadioButtonList  runat="server" ID="rddept" RepeatDirection="Horizontal" AutoPostBack="true" CssClass="spaced" OnSelectedIndexChanged="rddept_SelectedIndexChanged">
                <asp:ListItem Text="Staff" Value="Staff" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Employee" Value="Employee"></asp:ListItem>
                <asp:ListItem Text="Both" Value="both" ></asp:ListItem>
                </asp:RadioButtonList>
                <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
            </div>
            
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="EId"
              PageSize="9" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="EId" />
                   <asp:BoundField HeaderText="CardNo" DataField="cardno" />
                   <asp:BoundField HeaderText="Name" DataField="name" />
                   <asp:BoundField HeaderText="S/O" DataField="fname" />
                   <asp:BoundField HeaderText="Phone" DataField="phone" />
                   <asp:BoundField HeaderText="Shift" DataField="shift" />
                   <asp:BoundField HeaderText="DOB" DataField="dob" />
                   <asp:BoundField HeaderText="Email" DataField="email" />
                   <asp:BoundField HeaderText="Department" DataField="department" />
                   <asp:TemplateField HeaderText="Edit">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("EId") %>' CommandName="ViewDetails" OnCommand="LinkButton1_Command" >
                           <span class="glyphicon glyphicon-edit">Edit</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                   </asp:TemplateField>
                   <asp:TemplateField HeaderText="Delete">
                       <ItemTemplate>
                           <asp:LinkButton ID="lnkDelete" runat="server" OnClick="lnkDelete_Click" ForeColor="Red" CommandArgument='<%# Eval("EId") %>'>
                            <span class="glyphicon glyphicon-trash">Delete</span>
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
       
<%--</form>--%>  
    <%-- Delete Popup Div Start --%>
<div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:9999;">
   <div class="model-sm">
     <div class="col-sm-4"></div>
     <div class="modal-content col-sm-3" style="margin-top:10px;">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="H3">Delete this record?</h4>
         </div>
         <div class="modal-body">
         Are you sure to delete this record?
        </div>
        <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-success">Delete</button>
      </div>
    </div>
    <div class="col-sm-4"></div>
  </div>
</div>

    <%-- Script to Delete popup box --%>
     <script>
         function ConfirmDelete() {
             $('#DeleteModal').modal()    // initialized with defaults   
             return false;
         }
     </script>
    <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
     <script>
         function ConfirmDelete() {
             $('#DeleteModal').modal()    // initialized with defaults
             return false;
         }
          </script>
</body>
</html></asp:Content>

