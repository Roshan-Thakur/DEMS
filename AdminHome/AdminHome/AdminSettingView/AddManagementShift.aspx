<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AddManagementShift.aspx.cs" Inherits="AdminHome.AdminSettingView.AddManagementShift" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
           
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
            
          <link href="../bootstrap.3.3.7/content/Content/bootstrap.min.css" rel="stylesheet" />
            <script src="../bootstrap.3.3.7/bootstrap-timepicker/bootstaptimer/js/bootstrap-timepicker.min.js"></script>
            <link href="../bootstrap.3.3.7/bootstrap-timepicker/bootstaptimer/css/bootstrap-timepicker.min.css" rel="stylesheet" />
            
           <div class="container" style="margin-top:30px;">
               <div class="col-lg-4">
                   <asp:Table ID="Table1" runat="server" CssClass="table">
                   <asp:TableRow>
                       <asp:TableCell>
                           <span>Shift Name:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control" Width="130px">
                               <asp:ListItem Text="--Select--"></asp:ListItem>
                               <asp:ListItem>Morning</asp:ListItem>
                               <asp:ListItem>Evening</asp:ListItem>
                               <asp:ListItem>Both</asp:ListItem>
                           </asp:DropDownList>
                       </asp:TableCell>
                   </asp:TableRow>
                       <asp:TableRow>
                       <asp:TableCell>
                           <span>Start Time:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <div class="input-group bootstrap-timepicker timepicker">
                           <asp:TextBox ID="timepicker3" runat="server" CssClass="form-control timepicker1"></asp:TextBox>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                           </div>
                       </asp:TableCell>
                   </asp:TableRow>
                       <asp:TableRow>
                       <asp:TableCell>
                           <span>Close Time:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <div class="input-group bootstrap-timepicker timepicker">
                           <asp:TextBox ID="timepicker1" runat="server" CssClass="form-control timepicker1"></asp:TextBox>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                           </div>
                       </asp:TableCell>
                   </asp:TableRow>
                       <asp:TableRow>
                       <asp:TableCell>
                           <span>Late Time:</span>
                       </asp:TableCell>
                       <asp:TableCell>
                           <div class="input-group bootstrap-timepicker timepicker">
                           <asp:TextBox ID="timepicker2" runat="server" CssClass="form-control timepicker1"></asp:TextBox>
                            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
                           </div>
                       </asp:TableCell>
                   </asp:TableRow>
                  </asp:Table>
                   <asp:Button runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Unnamed1_Click" />
                   <asp:Button ID="txtupdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="txtupdate_Click" />
                   <asp:Label runat="server" ID="lblmsg"></asp:Label>
                   <asp:HiddenField runat="server" ID="hdn" />
               </div>
               <div class="col-lg-6">
                   <asp:GridView ID="mygride" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="Id"
              PageSize="9" OnPageIndexChanging="mygride_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Shift" DataField="shift" />
                   <asp:BoundField HeaderText="StartTime" DataField="starttime" />
                   <asp:BoundField HeaderText="CloseTime" DataField="closetime" />
                   <asp:BoundField HeaderText="LateTime" DataField="latetime" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("starttime")+","+Eval("closetime")+","+Eval("latetime")+","+Eval("shift") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command" >
                           <span class="glyphicon glyphicon-edit"> Edit</span>
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
         <script type="text/javascript">
             $('.timepicker1').timepicker();
             $('.timepicker2').timepicker();
             $('.timepicker3').timepicker();
        </script>
    <%--</form>--%>
    <script type="text/javascript">
        $(function () {
            $('[id*=mygride]').footable();
        });
    </script>
</body>
</html>
</asp:Content>