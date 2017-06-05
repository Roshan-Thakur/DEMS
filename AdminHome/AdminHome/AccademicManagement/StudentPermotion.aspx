<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudentPermotion.aspx.cs" Inherits="AdminHome.AccademicManagement.StudentPermotion" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <label runat="server" id="lblmsg" style="color:red;font-weight:bold;"></label>
        <div class="col-lg-2" style="margin-bottom:5px;"><asp:DropDownList runat="server" ID="ddlpass" CssClass="form-control" Width="80%">
             <asp:ListItem Value="Status">Status</asp:ListItem>
            <asp:ListItem Value="Failed">Failed</asp:ListItem>
            <asp:ListItem Value="Pass">Pass</asp:ListItem>
        </asp:DropDownList></div>
        <div class="col-lg-2" style="margin-bottom:5px;"><asp:DropDownList runat="server" ID="ddlexam" CssClass="form-control" Width="80%"></asp:DropDownList></div>
        <div class="col-lg-2" style="margin-bottom:5px;"><asp:DropDownList runat="server" ID="ddloldbatch" CssClass="form-control" Width="80%"></asp:DropDownList></div>
        <div class="col-lg-2" style="margin-bottom:5px;"><asp:DropDownList runat="server" ID="ddlnewbatch" CssClass="form-control" Width="80%"></asp:DropDownList></div>
        <div class="col-lg-2" style="margin-bottom:5px;"><asp:Button runat="server" CssClass="btn btn-primary" OnClick="Unnamed_Click" Text="Search" /></div>
         <asp:GridView runat="server" ShowFooter="true" ID="gvTerritories1" AutoGenerateColumns="false"  DataKeyNames="Id" EmptyDataText="Data Not Found" PageSize="3" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="RollNo" DataField="formno"/>
                   <asp:BoundField HeaderText="lastExam" DataField="Id"/>
                   <asp:BoundField HeaderText="TotalMarks" DataField="totalmarks" />
                   <asp:BoundField HeaderText="Status" DataField="status" />
                   <asp:BoundField HeaderText="OldBatch" DataField="markbatch" />
                <asp:TemplateField HeaderText="Assign New Batch">
                    <ItemTemplate>
                        <asp:TextBox runat="server" ID="txtbatch" Width="30%" ReadOnly="true"></asp:TextBox>
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Button runat="server" ID="btnpermotion" CssClass="btn btn-primary" Text="Permotion" OnClick="btnpermotion_Click" />
                    </FooterTemplate>
                </asp:TemplateField>
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
         <div class="row"><a href="PermotedStudentList.aspx"><span class="glyphicon glyphicon-arrow-left"> To List of Permoted  Students</span></a></div>
     </div>
    <%--</form>--%>
          <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories1]').footable();
        });
    </script>
</body>
</html>
    </asp:Content>