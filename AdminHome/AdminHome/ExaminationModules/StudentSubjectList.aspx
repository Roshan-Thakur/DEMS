<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudentSubjectList.aspx.cs" Inherits="AdminHome.ExaminationModules.StudentSubjectList" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="col-lg-3">
            <asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control" Width="130px"></asp:DropDownList><br />
            <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
        </div>
       <div class="col-lg-8">
           <div style="text-align:center;margin-bottom:20px;"><asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Bold="true"></asp:Label></div>
           
            <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="true" >
               <Columns>
                   <asp:BoundField HeaderText="Subject" DataField="sub" />
                   <asp:BoundField HeaderText="Code" DataField="code" />
                   <asp:BoundField HeaderText="Optional" DataField="optional" />
                   <asp:BoundField HeaderText="Mandatory" DataField="mandatoryoptional" />
                   <asp:BoundField HeaderText="TotalMarks" DataField="marks" />
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