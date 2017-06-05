<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="DetailsAbsentEmp.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.DetailsAbsentEmp" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server" style="background-color:whitesmoke">--%>
    <div class="container" style="margin-top:50px;">
           <div class="container" style="width:95%"> 
             <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
             <asp:Label runat="server" ID="lbltime" Font-Size="Medium" Text="Morning,MCA_2014,MCA" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="EId"  ShowFooter="true" OnRowDataBound="gvTerritories_RowDataBound1" >
               <Columns>
                   <asp:BoundField HeaderText="UserId." DataField="EId" />
                   <asp:BoundField HeaderText="EMP Name" DataField="name" />
                   <asp:BoundField HeaderText="S/O" DataField="fname" />
                   <asp:TemplateField HeaderText="Absent">
                           <ItemTemplate>
                               <asp:CheckBox ID="chkAttendence" runat="server" ForeColor="Red" Checked="true" />
                           </ItemTemplate>
                  <FooterTemplate>
                    <asp:Label ID="lblstud" runat="server" Text="Absent Emp: "></asp:Label>
                    <asp:Label ID="lblTotal" runat="server"></asp:Label>
                    </FooterTemplate>
                  </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView><div style="float:right;">
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
             </div></div> 
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