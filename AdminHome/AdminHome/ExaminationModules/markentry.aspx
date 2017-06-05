<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="markentry.aspx.cs" Inherits="AdminHome.ExaminationModules.markentry" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
      
    <div class="container">
          <div class="col-3" style="width:300px;margin-bottom:20px;">
               <asp:Table ID="Table1" runat="server" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell>Subject:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlsubject" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                    <asp:TableRow>
                    <asp:TableCell>ExamType:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlexamtype" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>Batch:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>ExamID:</asp:TableCell>
                     <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddexamid" CssClass="form-control" Width="180px"></asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow>
                    <asp:TableCell>Shift:</asp:TableCell>
                    <asp:TableCell>
                        <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control" Width="180px">
                            <asp:ListItem>--Select--</asp:ListItem>
                            <asp:ListItem>Morning</asp:ListItem>
                            <asp:ListItem>Evening</asp:ListItem>
                            <asp:ListItem>Day</asp:ListItem>
                        </asp:DropDownList>
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button runat="server" ID="btnsearch" Text="Search" CssClass="btn btn-primary" OnClick="btnsearch_Click" />
            <asp:Button runat="server" ID="btnprint" OnClientClick="PrintDiv();" Text="Print" CssClass="btn btn-primary" OnClick="btnprint_Click" /><br />
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red" Font-Size="Medium" Font-Bold="true"></asp:Label>
          </div>
          <div class="divprint">
          <div class="col-8">
              <div aria-readonly="true">
                  <asp:Table runat="server" CssClass="table">
                      <asp:TableRow><asp:TableCell>Total Students:</asp:TableCell>
                          <asp:TableCell><asp:Label runat="server" ID="lblTotal" Font-Size="Medium" ></asp:Label></asp:TableCell>
                      </asp:TableRow>
                      <asp:TableRow>
                          <asp:TableCell>Question Pattern Marks:</asp:TableCell>
                          <asp:TableCell><asp:TextBox ReadOnly="true" runat="server" ID="txtpatternmarks" BorderStyle="None" Font-Size="Medium"></asp:TextBox></asp:TableCell>
                      </asp:TableRow>
                       <asp:TableRow>
                          <asp:TableCell>Pass Marks:</asp:TableCell>
                          <asp:TableCell><asp:TextBox ReadOnly="true" runat="server" ID="txtpassmarks" BorderStyle="None" Font-Size="Medium" ></asp:TextBox></asp:TableCell>
                      </asp:TableRow>
                       <asp:TableRow>
                          <asp:TableCell>Exam Type & Pattern :</asp:TableCell>
                          <asp:TableCell><asp:TextBox ReadOnly="true" runat="server" ID="txttype" BorderStyle="None" Font-Size="Medium" ></asp:TextBox></asp:TableCell>
                      </asp:TableRow>
                  </asp:Table>
              </div>
              <div style="margin-left: auto; margin-right: auto; text-align: center;">
                    <asp:Label ID="lblexamtype" runat="server" Text="Examination" Font-Bold="true" Font-Size="X-Large" CssClass="StrongText"></asp:Label>
                    <br /><asp:Label runat="server" ID="lblsub" CssClass="label" Font-Size="Medium" Width="200px"></asp:Label>
                    <asp:Label runat="server" ID="lblexamid" CssClass="label" Font-Size="Medium"  Width="200px"></asp:Label>
                    <asp:Label runat="server" ID="lblexamid1" CssClass="label" Font-Size="Medium"  Width="200px"></asp:Label>
              </div>
                <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="FormNo"  ShowFooter="true" AllowPaging="false" OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <asp:BoundField HeaderText="StudentRollNo" DataField="FormNo" />
                   <asp:BoundField HeaderText="StudentName" DataField="StName" />
                   <asp:BoundField HeaderText="S/O" DataField="FatName" />
                   <asp:BoundField HeaderText="Mobile No." DataField="Fmobile" />
                   <asp:TemplateField HeaderText="Obtained Marks">
                       <ItemTemplate>
                           <asp:TextBox runat="server" ID="txtobtmarks" Width="30%" ></asp:TextBox>
                           <asp:RegularExpressionValidator ID="NumericOnlyValidator" runat="server" ControlToValidate="txtobtmarks" ErrorMessage="Invalid Number!" ValidationExpression="((\d+)((\.\d{1,2})?))$"></asp:RegularExpressionValidator>
                       </ItemTemplate>
                       <FooterTemplate>
                           <asp:Button runat="server" ID="btninsert" Text="Submit" OnClick="btninsert_Click" CssClass="btn btn-primary" />
                       </FooterTemplate>
                   </asp:TemplateField>
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView></div>      
    </div></div>
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