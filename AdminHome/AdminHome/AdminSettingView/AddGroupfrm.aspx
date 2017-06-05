<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AddGroupfrm.aspx.cs" Inherits="AdminHome.AdminSettingView.AddGroupfrm" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
            <div class="container">
                <div class="row"><br />  
                    <div class="col-lg-3">
                        <fieldset id="Fieldset1" runat="server">
                            <legend>Add/Update Group</legend><br />
                            <span>Group Name</span><asp:TextBox ID="txtgroup" runat="server" CssClass="form-control" placeholder="Ex- Student, Accountant  etc.."></asp:TextBox>
                            <asp:HiddenField runat="server" ID="hdn" />
                            <br /><asp:Button ID="btnsave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnsave1_Click" />
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnupdate_Click" />
                            <asp:Label runat ="server" ID="lblnotice" ForeColor="Red" Text=" "></asp:Label>
                        </fieldset>
                    </div>
                    <div class="col-lg-6">
            <asp:GridView ID="mygride" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="Id"
              PageSize="9" OnPageIndexChanging="mygride_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="Id" />
                   <asp:BoundField HeaderText="Group" DataField="group1" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("group1") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command" >
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
            </div>
    <%--</form>--%>
     <script type="text/javascript">
         $(function () {
             $('[id*=mygride]').footable();
         });
    </script>
</body>
</html></asp:Content>
