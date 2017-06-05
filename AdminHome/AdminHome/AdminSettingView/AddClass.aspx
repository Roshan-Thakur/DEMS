<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AddClass.aspx.cs" Inherits="AdminHome.AdminSettingView.AddClass" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
            <div class="container">
                <div class="row"><br /><br />
                
                    
                    <div class="col-lg-3">
                        <fieldset runat="server">
                            <legend>Add/Update Class</legend><br />
                            <span>Class Name</span><asp:TextBox ID="txtclass" runat="server" CssClass="form-control" placeholder="Ex- BBA,MBA,BCA,MCA etc.."></asp:TextBox>
                            <span>Order </span><asp:TextBox ID="txtorder" runat="server" ReadOnly="true" CssClass="form-control" placeholder="Ex- BBA is in 1st order."></asp:TextBox>
                            <br /><asp:Button ID="btnsave" runat="server" CssClass="btn btn-primary" Text="Save" OnClick="btnsave_Click" />
                            <asp:Button ID="btnupdate" runat="server" CssClass="btn btn-primary" Text="Update" OnClick="btnupdate_Click" />
                            <asp:Label runat ="server" ID="lblnotice" ForeColor="Red" Text=" "></asp:Label>
                        </fieldset>
                    </div><br />
                    <div class="col-lg-6"><h2></h2>
                        
             <asp:GridView ID="mygride" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None"
              AllowPaging="true" DataKeyNames="orderid"
              PageSize="9" OnPageIndexChanging="mygride_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Sr.No" DataField="orderid" />
                   <asp:BoundField HeaderText="Class/Degree" DataField="ClassType" />
                   <asp:TemplateField HeaderText="Delete">
                   <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" CommandArgument='<%# Eval("orderid") %>' CommandName="ViewDetails" OnCommand="lnkbtnupdate_Command" >
                           <span class="glyphicon glyphicon-trash">Delete |</span>
                           </asp:LinkButton>
                           <asp:LinkButton ID="lnlbtnedit" runat="server" ForeColor="Red" CommandArgument='<%# Eval("orderid")+","+Eval("ClassType") %>' CommandName="ViewDetails" OnCommand="lnlbtnedit_Command" >
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
</body>
     <script type="text/javascript">
         $(function () {
             $('[id*=mygride]').footable();
         });
    </script>
</html>
    </asp:Content>