<%@ Page Language="C#" MasterPageFile="~/StudentDesboard/StudentMasterPage.Master" AutoEventWireup="true" CodeBehind="ViewStudentMarksheets.aspx.cs" Inherits="AdminHome.ExaminationModules.ViewStudentMarksheets" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="header"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
    <fieldset><legend style="text-align:center;font-size:medium">Student Attandance Details</legend>
    <div class="row">
                <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" Font-Size="Small"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id" ShowFooter="false" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
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
                <asp:TemplateField HeaderText="View Marksheet">
                    <ItemTemplate>
                        <asp:HyperLink ID="hyperlinkview" runat="server" ForeColor="Red" NavigateUrl='<%# Eval("marksheet")%>' ><span class="glyphicon glyphicon-eye-open">View</span></asp:HyperLink>
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
    </div></fieldset>
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