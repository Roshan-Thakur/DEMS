<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="DetailsSubjextPattern.aspx.cs" Inherits="AdminHome.ExaminationModules.DetailsSubjextPattern" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script type="text/javascript">
        function PrintDiv() {
            var divContents = document.getElementById("dvprint").innerHTML;
            var printWindow = window.open('', '', 'height=500,width=400');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(divContents);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            printWindow.print();
        }
    </script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
       
    <div class="container" style="margin-bottom:50px;margin-top:50px;">
        <div class="col-4" style="width:250px;margin-bottom:30px;">
            <asp:Table runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                     <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlexamid" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlexamtype" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
            <asp:Button runat="server" ID="btnprint" OnClientClick="PrintDiv();" Text="Print" CssClass="btn btn-primary" OnClick="btnprint_Click" />
        </div>
            <div class="col-8" id="dvprint">
             <asp:Label runat="server" ID="lblexamid" CssClass="label" Font-Size="Medium" Width="200px"></asp:Label>
             <asp:Label runat="server" ID="lblinfo1" CssClass="label" Font-Size="Medium"  Width="200px"></asp:Label>
             <asp:Label runat="server" ID="lblinfo" CssClass="label" Font-Size="Medium"  Width="200px"></asp:Label>
             <div style=" height: 480px; min-width:200px; overflow:auto">
                <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="8" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Subject" DataField="subject1" />
                   <asp:BoundField HeaderText="ExamType" DataField="examtype" />
                   <asp:BoundField HeaderText="Pattern" DataField="questionpettern" />
                   <asp:BoundField HeaderText="PatternMarks" DataField="patternmarks" />
                   <asp:BoundField HeaderText="PassMarks" DataField="passmarks" />
                   <asp:BoundField HeaderText="Optional/Mandatory" DataField="optionalmandatory" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView></div>
        </div>
       
    </div>
    <%--</form>--%>
    
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
</body>
</html>
</asp:Content>