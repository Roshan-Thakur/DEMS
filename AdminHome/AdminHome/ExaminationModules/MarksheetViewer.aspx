<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="MarksheetViewer.aspx.cs" Inherits="AdminHome.ExaminationModules.MarksheetViewer" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
    <div class="row" style="margin-bottom:10px;margin-top:50px;">
         <div class="col-7" title="Search" style="min-width:290px; margin-bottom:5px;">
                    <div class="col-4" style="width:300px;margin-bottom:1px;"><asp:DropDownList runat="server" ID="ddlexamid" CssClass="form-control" Width="250px"></asp:DropDownList></div>
                    <div class="col-3" style="width:200px;margin-bottom:1px;">
                        <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
                        <asp:Button runat="server" ID="btnsend" OnClick="btnsend_Click" CssClass="btn btn-primary" Text="Export" />
                    </div>
                </div>
        <div class="col-3">
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label>
        </div>
    </div>
    <div class="row" style="margin-bottom:10px;margin-top:50px;">
        <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" Font-Size="Small"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id" ShowFooter="false" AllowPaging="true" PageSize="10" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                    <asp:TemplateField HeaderText="Sr.No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:BoundField HeaderText="StudentRollNo" DataField="formno" />
                   <asp:BoundField HeaderText="Batch" DataField="markbatch" />
                 <asp:TemplateField HeaderText="Marksheet Date">
                    <ItemTemplate>
                        <asp:Label ID="lblgenrate" runat="server" Text='<%# Eval("generateddate")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Marks">
                    <ItemTemplate>
                        <asp:Label ID="lblplblmarks" runat="server" Text='<%# Eval("totalmarks")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Exam Status">
                    <ItemTemplate>
                        <asp:Label ID="lblstaus" runat="server" Text='<%# Eval("status")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="View Marksheet/Export">
                    <ItemTemplate>
                        <asp:HyperLink ID="hyperlinkview" runat="server" ForeColor="Red" NavigateUrl='<%# Eval("marksheet")%>' ><span class="glyphicon glyphicon-eye-open">View  </span></asp:HyperLink>
                        <asp:CheckBox runat="server" ID="chkclk" />
                    </ItemTemplate>
                </asp:TemplateField>
                    <asp:TemplateField HeaderText="View Marksheet">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnldelete" runat="server" ForeColor="Red" CommandArgument='<%# Eval("Id")%>' OnCommand="lnldelete_Command" CommandName="ViewDetails"  ><span class="glyphicon glyphicon-floppy-remove">Delete</span></asp:LinkButton>
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