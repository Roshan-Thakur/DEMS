<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="GenerateMarksheet.aspx.cs" Inherits="AdminHome.ExaminationModules.GenerateMarksheet" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script type="text/javascript" src="http://cdn.rawgit.com/niklasvh/html2canvas/master/dist/html2canvas.min.js"></script>
    <script type="text/javascript">
    function ConvertToImage(btnExport) {
        html2canvas($("#pd")[0]).then(function (canvas) {
            var base64 = canvas.toDataURL();
            $("[id*=hfImageData]").val(base64);
            __doPostBack(btnExport.name, "");
        });
        return false;
    }
</script>
   <script type="text/javascript">
       function delayer() {

           document.getElementById('<%=btnExport.ClientID%>').click();
           alert("Hello");
      }
   </script>
</asp:Content>
<asp:Content runat="server" ID="hello" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" >
<body>
    <%--<form id="form1" runat="server">--%>
    

    <div class="container">
        <div class="row" style="margin-bottom:10px;" id="mdiv" runat="server">
            <div class="row">
            <div class="col-2" style="width:180px;">
            <asp:Table ID="Tb" runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>RollNo:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlrollno" CssClass="form-control" Width="100px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            </div>
           <div class="col-3" style="width:280px;">
            <asp:Table ID="Table1" runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>ExamID:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlexamid" CssClass="form-control" Width="200px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
          </div>
           <div class="col-2" style="width:180px;">
               <asp:Table CssClass="table" runat="server">
                    <asp:TableRow>
                    <asp:TableCell>Exam:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlexamtype" CssClass="form-control" Width="130px"></asp:DropDownList>
                    </asp:TableCell>
                   </asp:TableRow>
               </asp:Table>
           </div>
            <div class="col-4" style="margin-top:5px;margin-left:30px;">
            <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
            <asp:Button runat="server" ID="btnsave" Text="Save Marksheet"  CssClass="btn btn-primary" OnClick="btnsave_Click" />
            <asp:Button ID="btnExport" Text="Save/Download" runat="server"  CssClass="btn btn-primary" UseSubmitBehavior="false" OnClick="btnExport_Click" OnClientClick="return ConvertToImage(this);" />  
            </div>
         </div>
            <div class="row">
                <div style="text-align:center">
                    <asp:HiddenField ID="hfImageData" runat="server" />
                    <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Size="Medium" Font-Bold="true" ></asp:Label>
                </div>
            </div>
        </div>
        <div id="pd" runat="server">
             
        <div class="row" >
            <div style="text-align:center;margin-bottom:10px;"><asp:Label ID="lbltype" Font-Bold="true" Font-Size="Small" runat="server" CssClass="label" Text="1St Term Examination"></asp:Label></div>
            <div>
                <asp:Table ID="Table2" runat="server" CssClass="table table-striped" >
                    <asp:TableRow>
                        <asp:TableCell>Student Name</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbl11name" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>DOB</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtdob" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>S/O</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbl1fname" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>Roll No.</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxt1rollno" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Mobile No.</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxt1mobile" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>Address</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxt1address" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
                <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" Font-Size="Small"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="studentrollno" ShowFooter="true" AllowPaging="false" OnRowDataBound="gvTerritories_RowDataBound">
               <Columns>
                    <asp:TemplateField HeaderText="Sr.No.">
                        <ItemTemplate>
                            <%# Container.DataItemIndex + 1 %>
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:BoundField HeaderText="Subject" DataField="subject" />
                 <asp:TemplateField HeaderText="QuestionMark">
                    <ItemTemplate>
                        <asp:Label ID="lblquestion" runat="server" Text='<%# Eval("questionmarks")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Pass Marks">
                    <ItemTemplate>
                        <asp:Label ID="lblpass" runat="server" Text='<%# Eval("passmarks")%>' />
                    </ItemTemplate>
                </asp:TemplateField>
                  <asp:TemplateField HeaderText="Obtained Marks">
                    <ItemTemplate>
                        <asp:Label ID="lblmarks" runat="server" Text='<%# Eval("obtainedmarks")%>' />
                    </ItemTemplate>
                    <FooterTemplate>
                        <asp:Label ID="TotalMarks" runat="server" />
                    </FooterTemplate>
                </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
             <div style="margin-top:30px;">
                <asp:Table ID="Table3" runat="server" CssClass="table table-striped">
                    <asp:TableRow>
                        <asp:TableCell>Marks</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtmarks" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>Batch</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtbatch" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Status</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtstatus" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>TotalMarks</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltotalmarks" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Date</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtdate" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell>ExamID</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxtexaminfoid" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Coordinator</asp:TableCell><asp:TableCell><asp:Label runat="server" ID="lbltxt1cordinator" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                        <asp:TableCell></asp:TableCell><asp:TableCell><asp:Label runat="server" ID="Label2" BorderStyle="None" ReadOnly="true"></asp:Label></asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
            </div>
        </div>
           
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