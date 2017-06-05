<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="SalarysetDetails.aspx.cs" Inherits="AdminHome.HumanResorceView.SalarysetDetails" %>

<asp:Content runat="server" ID="head" ContentPlaceHolderID="head">
  
</asp:Content>

<asp:Content ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">
            <div class="container" style="margin-top:10px;">
            <asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
            <div class="col-4" style="width:250px; margin-right:20px;" aria-readonly="true">
            <fieldset><legend>Details:</legend>
            <asp:Table ID="Table1" runat="server" CssClass="table-responsive">
                <asp:TableRow ID="TableRow4" runat="server">
                    <asp:TableCell><span>Name:</span></asp:TableCell>
                    <asp:TableCell><asp:Label runat="server" ID="lblname" Font-Bold="true" ></asp:Label></asp:TableCell>
                </asp:TableRow>
                 <asp:TableRow ID="TableRow5" runat="server">
                    <asp:TableCell><span>Department:</span></asp:TableCell>
                    <asp:TableCell><asp:Label ID="lbldept" runat="server" Font-Bold="true" ></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow6" runat="server">
                    <asp:TableCell><span>Designation:</span></asp:TableCell>
                    <asp:TableCell><asp:Label ID="lbldesig" runat="server" Font-Bold="true" ></asp:Label></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow7" runat="server">
                    <asp:TableCell><span>Card No.:</span></asp:TableCell>
                    <asp:TableCell><asp:Label ID="lblcard" runat="server" Font-Bold="true" ></asp:Label></asp:TableCell>
                </asp:TableRow>
            </asp:Table>

            </fieldset>
        </div>
        <div class="col-4">
            <fieldset><legend>Salary:</legend>
            <asp:Table ID="Table2" runat="server" CssClass="table-responsive">
                 <asp:TableRow ID="TableRow1" runat="server">
                    <asp:TableCell><span>Basic Salary:</span></asp:TableCell>
                     <asp:TableCell><asp:TextBox runat="server" ID="txtbasic" CssClass="input-sm" Font-Bold="true" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow2" runat="server">
                    <asp:TableCell><span>Gross Salary:</span></asp:TableCell>
                    <asp:TableCell><asp:TextBox runat="server" ID="txtgross" CssClass="input-sm" Font-Bold="true" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
                <asp:TableRow ID="TableRow3" runat="server">
                    <asp:TableCell><span>Total:</span></asp:TableCell>
                    <asp:TableCell><asp:TextBox runat="server" ID="txttotal" ReadOnly="true" CssClass="input-sm" Font-Bold="true" ></asp:TextBox></asp:TableCell>
                </asp:TableRow>
            </asp:Table>
            <asp:Button ID="btnupdatesalary" Text="Update" CssClass="btn btn-primary" runat="server" OnClick="btnupdatesalary_Click" />
            </fieldset>
        </div>
         </div>
        <div class="row" style="margin-top:10px; margin-bottom:10px;height:410px;">
        <asp:GridView runat="server" ID="gvTerritories" AutoGenerateColumns="false" OnPageIndexChanging="gvTerritories_PageIndexChanging" DataKeyNames="EId" AllowPaging="True" EmptyDataText="Data Not Found" PageSize="3" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Sr.No." DataField="EId"/>
                   <asp:BoundField HeaderText="Name" DataField="name"/>
                   <asp:BoundField HeaderText="Department" DataField="department" />
                   <asp:BoundField HeaderText="Designation" DataField="designation" />
                   <asp:BoundField HeaderText="Basic" DataField="basic" />
                   <asp:BoundField HeaderText="Gross Payment" DataField="grosspay" />
                   <asp:BoundField HeaderText="Total" DataField="total" />
                <asp:TemplateField>
                    <ItemTemplate>
                           <asp:LinkButton ID="lnkbtnupdate" runat="server" ForeColor="Red" OnClick="lnkbtnupdate_Click" CommandArgument='<%# Eval("EId") +","+Eval("name")+","+Eval("department")+","+Eval("designation")+","+Eval("basic")+","+Eval("grosspay")+","+Eval("total") %>' >
                           <span class="glyphicon glyphicon-edit">Edit</span>
                           </asp:LinkButton>
                   </ItemTemplate>
                </asp:TemplateField>
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
        </div>
        </div>
</asp:Content>
