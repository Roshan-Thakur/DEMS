<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="Searchsalary.aspx.cs" Inherits="AdminHome.HumanResorceView.Searchsalary" %>
<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container" ><asp:Label runat="server" ID="lblmsg"></asp:Label>
    <div class="container" style="background-color:whitesmoke;">
    <div class="col-lg-4" >
     <div class="panel-heading" style="background-color:skyblue;margin-top:55px">Department Ways Salary Details Information</div>
     <div class="allowance" style=" margin-top:20px">Department 
         <asp:DropDownList runat="server" ID="ddldept" DataTextField="department" CssClass="form-control"></asp:DropDownList></div> 
         <div class="allowance" style=" margin-top:10px">Name
         <asp:DropDownList runat="server" ID="ddlname" CssClass="form-control"></asp:DropDownList><br />
         <asp:Button runat="server" ID="Button1" Text="Search" CssClass="btn btn-primary" OnClick="btnprint_Click" />
         </div>
   </div><div class="col-lg-2"></div>
         <div class="col-lg-4">
         <div class="panel-heading" style="background-color:skyblue;margin-top:55px">Searching by Salary</div>
         <div class="allow1" style=" margin-top:40px">
        <asp:DropDownList runat="server" ID="ddlsalry" CssClass="form-control">
              <asp:ListItem>...Select...</asp:ListItem>
              <asp:ListItem>Baisc Salary</asp:ListItem>
              <asp:ListItem>Gross Salary</asp:ListItem>
              <asp:ListItem>Total Salary</asp:ListItem>               
        </asp:DropDownList></div> 
        <div class="allow">             
        <asp:TextBox runat="server" ID="txtfrom" CssClass="form-control" placeholder="From salary"></asp:TextBox></div> 
        <div >             
        <asp:TextBox runat="server" ID="txtto" CssClass="form-control" placeholder="To salary"></asp:TextBox><br />
        <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
        </div> 

        </div> 
        <div style="float:right; margin-top:8px;margin-right:30px;">
            <asp:Button runat="server" ID="btnprint" Text="Print and Preview" CssClass="btn btn-primary" OnClientClick="return gridPrint();" /></div>
      </div>
        <div class="container" style="margin-top:10px; margin-bottom:2px;">
        <asp:GridView runat="server" ID="gvTerritories" AutoGenerateColumns="false" OnPageIndexChanging="gvTerritories_PageIndexChanging" DataKeyNames="EId" AllowPaging="True" EmptyDataText="Data Not Found" PageSize="3" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Sr.No." DataField="EId"/>
                   <asp:BoundField HeaderText="Name" DataField="name"/>
                   <asp:BoundField HeaderText="Department" DataField="department" />
                   <asp:BoundField HeaderText="Designation" DataField="designation" />
                   <asp:BoundField HeaderText="Basic" DataField="basic" />
                   <asp:BoundField HeaderText="Gross Payment" DataField="grosspay" />
                   <asp:BoundField HeaderText="Total" DataField="total" />
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
        </div>
        </div>
        
    <%--</form>--%>
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
    <%-- Print Script --%>
    <script type = "text/javascript">
        function gridPrint() {
            var grid = document.getElementById("<%=gvTerritories.ClientID %>");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(grid.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
</body>
</html>
</asp:Content>
