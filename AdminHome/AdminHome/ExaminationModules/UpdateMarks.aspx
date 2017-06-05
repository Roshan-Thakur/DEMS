<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="UpdateMarks.aspx.cs" Inherits="AdminHome.ExaminationModules.UpdateMarks" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
        <div class="container" style="margin-top:20px;">
            <div class="row" style="margin-bottom:10px;">
                <div class="col-7" title="Search" style="min-width:290px; margin-bottom:5px;">
                    <div class="col-2" style="width:150px;margin-bottom:1px;"><asp:DropDownList runat="server" ID="ddlexamtype" CssClass="form-control" Width="130px"></asp:DropDownList></div>
                    <div class="col-2" style="width:150px;margin-bottom:1px;"><asp:DropDownList runat="server" ID="ddlrollno" CssClass="form-control" Width="130px"></asp:DropDownList></div>
                    <div class="col-2" style="width:225px;margin-bottom:1px;"><asp:DropDownList runat="server" ID="ddlexamid" CssClass="form-control" Width="200px"></asp:DropDownList></div>
                    <div class="col-1" style="width:100px;margin-bottom:1px;">
                        <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
                    </div>
                </div>
                <div class="col-5" title="Update">
                    <div class="col-2" style="width:150px;margin-bottom:1px;"><asp:TextBox runat="server" ReadOnly="true" ID="txtId" placeholder="Id" CssClass="form-control"></asp:TextBox></div>
                    <div class="col-2" style="width:225px;margin-bottom:1px;"><asp:TextBox runat="server" ID="txtobtainedMarks" placeholder="Obtained Marks" CssClass="form-control"></asp:TextBox></div>
                    
                    <div class="col-1" style="margin-bottom:1px;">
                        <asp:Button ID="btnupdate" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="btnupdate_Click" />
                        <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label>
                    </div>
                </div>
            </div>
    <div class="row">
                 <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" Font-Size="Small"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id" ShowFooter="false"  AllowPaging="true" PageSize="10" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                    <asp:TemplateField HeaderText="Sr.No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:BoundField HeaderText="StudentRollNo" DataField="studentrollno" />
                   <asp:BoundField HeaderText="Batch" DataField="batch" />
                    <asp:BoundField HeaderText="ExamType" DataField="examtype" />
                    <asp:BoundField HeaderText="ExamID" DataField="examinfoid" />
                    <asp:BoundField HeaderText="ObtainedMarks" DataField="obtainedmarks" />
                    <asp:BoundField HeaderText="QuestionMarks" DataField="questionmarks" />
                    <asp:TemplateField HeaderText="Update">
                        <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnkupdatemarks" ForeColor="Red" CommandArgument='<%# Eval("Id")+","+Eval("obtainedmarks") %>' CommandName="ViewDetails" OnCommand="lnkupdatemarks_Command"  >
                               <span class="glyphicon glyphicon-edit">Edit</span>
                           </asp:LinkButton>
                           <asp:LinkButton runat="server" ID="lnkdelete" ForeColor="Red" CommandArgument='<%# Eval("Id") %>' CommandName="ViewDetails" OnCommand="lnkdelete_Command"  >
                               <span class="glyphicon glyphicon-trash">Delete</span>
                           </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
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
    <%--</form>--%>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>