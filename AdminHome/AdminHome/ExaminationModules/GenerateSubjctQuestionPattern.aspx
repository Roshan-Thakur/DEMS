<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="GenerateSubjctQuestionPattern.aspx.cs" Inherits="AdminHome.ExaminationModules.GenerateSubjctQuestionPattern" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
        <div class="col-4" style="width:350px;">
        <asp:Table runat="server" CssClass="table">
            
                 <asp:TableRow>
                     <asp:TableCell><asp:DropDownList runat="server" ID="ddquestionpattern" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                     <asp:TableCell><asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                    </asp:TableRow>
             <asp:TableRow>
                 <asp:TableCell><asp:TextBox runat="server" placeholder="PassingMarks" ID="txtpassingmarks" CssClass="form-control"></asp:TextBox></asp:TableCell>
                 <asp:TableCell><asp:TextBox runat="server" placeholder="QuestionMarks" ID="txtqmarks" CssClass="form-control"></asp:TextBox></asp:TableCell>
             </asp:TableRow>
        </asp:Table>
        </div>
    <div class="col-5" style="width:400px;">
        
            <asp:Table ID="Table1" runat="server" CssClass="table">
                <asp:TableRow>
                               <asp:TableCell>
                                    <asp:DropDownList runat="server" ID="ddexaminfo" CssClass="form-control"></asp:DropDownList>
                              </asp:TableCell>
                </asp:TableRow>
            </asp:Table>

         <asp:Table runat="server" ID="tb1" CssClass="table">
                <asp:TableRow>
                    <asp:TableCell><asp:DropDownList runat="server" ID="ddlsub" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                    <asp:TableCell><asp:DropDownList runat="server" ID="ddexamtype" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
         </div><div class="col-3">
         <asp:RadioButtonList runat="server" ID="rdchoice" RepeatDirection="Horizontal">
                 <asp:ListItem Value="Optional" Selected="True">Optional</asp:ListItem>
                 <asp:ListItem Value="Mandatory">Mandatory</asp:ListItem>
             </asp:RadioButtonList>
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click" />
            <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Bold="true" Font-Size="Medium"></asp:Label>
            <asp:HiddenField runat="server" ID="hdn" /><br />
             <asp:RangeValidator ID="RangeValidator1" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtpassingmarks" ErrorMessage="MarkMin must be ineteger" />
             <asp:RangeValidator ID="RangeValidator2" runat="server" Type="Integer" MinimumValue="0" MaximumValue="400" ControlToValidate="txtqmarks" ErrorMessage="MarkMax must be ineteger" />
          </div></div>
        <div class="container">
        <div class="col-12">
             <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found"  runat="server" AutoGenerateColumns="false" CssClass="footable"  
              GridLines="None" DataKeyNames="Id"  ShowFooter="false" AllowPaging="true" PageSize="4" OnPageIndexChanging="gvTerritories_PageIndexChanging" >
               <Columns>
                   <asp:BoundField HeaderText="Subject" DataField="subject1" />
                   <asp:BoundField HeaderText="Batch" DataField="batch"/>
                   <asp:BoundField HeaderText="ExamType" DataField="examtype" />
                   <asp:BoundField HeaderText="Pattern" DataField="questionpettern" />
                   <asp:BoundField HeaderText="PatternMarks" DataField="patternmarks" />
                   <asp:BoundField HeaderText="PassMarks" DataField="passmarks" />
                   <asp:BoundField HeaderText="Optional/Mandatory" DataField="optionalmandatory" />
                   <asp:BoundField HeaderText="ExamID" DataField="examinfo" />
                   <asp:TemplateField HeaderText="Delete">
                       <ItemTemplate>
                           <asp:LinkButton runat="server" ID="lnkDelete" OnCommand="lnkDelete_Command" CommandName="ViewDetails" CommandArgument='<%# Eval("Id") %>' >
                               <span class="glyphicon glyphicon-trash">Delete</span></asp:LinkButton>
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
    
     <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
</body>
</html>
</asp:Content>