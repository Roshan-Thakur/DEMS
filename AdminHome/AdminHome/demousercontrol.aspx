<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="demousercontrol.aspx.cs" Inherits="AdminHome.demousercontrol" %>
<%@ Register Src="~/usercontrolpage/empstaffcontrol.ascx" TagName="EmpStaffControl" TagPrefix="Emp" %>
<asp:Content ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
          <script>
              function ConfirmDelete() {
                  $('#DeleteModal').modal()    // initialized with defaults
                  return false;
              }
          </script>
     <script type="text/javascript">
         $(function () {
             $(".txt").datepicker();
             $(".txtdob").datepicker();
         });
    </script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
</style>
     <script type="text/javascript">
        
         function ShowPreview(input) {
             if (input.files && input.files[0]) {
                 var ImageDir = new FileReader();
                 ImageDir.onload = function (e) {
                     $('.impPrev').attr('src', e.target.result);
                 }
                 ImageDir.readAsDataURL(input.files[0]);
             }
         }
    </script>
    <form id="form1" runat="server">
        <asp:Button runat="server" Text="check" OnClientClick="return ConfirmDelete()" CssClass="btn btn-primary" />
    <Emp:EmpStaffControl ID="emp" runat="server" />

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
    </form>
</body>
</html></asp:Content>
