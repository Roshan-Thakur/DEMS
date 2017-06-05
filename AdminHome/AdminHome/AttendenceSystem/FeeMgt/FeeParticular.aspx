<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="FeeParticular.aspx.cs" Inherits="AdminHome.AttendenceSystem.FeeMgt.FeeParticular" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <form id="form1" runat="server">
     <div class="container" style="background-color:whitesmoke; margin-top:50px;">
                <div class="row" style="margin-top:15px;">

                       <div class="col-lg-4">
                       <div class="panel-heading" style="background-color:skyblue">Assign Particulars</div>
                                <div class="a1" style="margin-top:10px">  Batch Name
                                <asp:DropDownList ID="ddlbatch" runat="server" CssClass="form-control"></asp:DropDownList></div>
                                 <div style="margin-top:10px"></div> Fees Category
                                 <asp:DropDownList ID="ddlfg1" runat="server" CssClass="form-control"></asp:DropDownList>
                                 <div style="margin-top:10px">Particular<asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control"></asp:DropDownList></div>
                                 <div style="margin-top:10px"> Amount<asp:TextBox runat="server" ID="txtAmount" CssClass="form-control"></asp:TextBox></div>
                                 <div style="margin-left:130px;margin-top:10px;margin-bottom:30px;"><asp:Button runat="server" ID="btnadd" Text="Add" CssClass="btn btn-primary" /></div>
                         </div>
                        <div class="col-lg-8"><div class="panel-heading" style="background-color:skyblue; margin-left:2px;">Assigned Particulars Ammount</div>
                            <asp:GridView runat="server" ID="GridView1" AllowPaging="true" DataKeyNames="FId"  PageSize="3" AutoGenerateColumns="false"  EmptyDataText="Data Not Found"  CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Batch Name" DataField="batch"/>
                   <asp:BoundField HeaderText="FeeCatName" DataField="feecategory"/>
                   <asp:BoundField HeaderText="Start Date" DataField="fgstartdate" />
                   <asp:BoundField HeaderText="End Date" DataField="fgenddate"/>
                   <asp:BoundField HeaderText="Fee Fine" DataField="feefine"/>
                   <asp:BoundField HeaderText="Created On" DataField="fgcreateddate"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtn" runat="server" CssClass="btn btn-info btn-xm" CommandArgument='<%# Eval("batch")+","+ Eval("feecategory")+","+Eval("fgstartdate")+","+Eval("fgenddate")+","+Eval("FId")+","+Eval("feefine") %>' >
                            <span class="glyphicon glyphicon-pencil"></span>
                           </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
                        </div></div>
                     <div class="row" style="margin-top:30px;">
                          <div class="col-lg-4">
                       <div class="panel-heading" style="background-color:skyblue">Filter By Category</div>
                                <div class="a1" style="margin-top:10px">  Batch Name
                                <asp:DropDownList ID="ddlfilerbatch" runat="server" CssClass="form-control"></asp:DropDownList></div>
                                 <div style="margin-top:10px"> Fees Category
                                 <asp:DropDownList ID="ddlfcat" runat="server" CssClass="form-control"></asp:DropDownList></div><div style="margin-left:130px;margin-top:10px;margin-bottom:30px;"><asp:Button runat="server" ID="Button1" Text="Add" CssClass="btn btn-primary" /></div>
                         </div>
                        <div class="col-lg-8"><div class="panel-heading" style="background-color:skyblue; margin-left:2px;">Assigned Particulars Ammount</div>
                            <asp:GridView runat="server" ID="gvTerritories" AllowPaging="true" DataKeyNames="FId" PageSize="3" AutoGenerateColumns="false"  EmptyDataText="Data Not Found"  CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                   <asp:BoundField HeaderText="Batch Name" DataField="batch"/>
                   <asp:BoundField HeaderText="FeeCatName" DataField="feecategory"/>
                   <asp:BoundField HeaderText="Start Date" DataField="fgstartdate" />
                   <asp:BoundField HeaderText="End Date" DataField="fgenddate"/>
                   <asp:BoundField HeaderText="Fee Fine" DataField="feefine"/>
                   <asp:BoundField HeaderText="Created On" DataField="fgcreateddate"/>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:LinkButton ID="lnkbtn" runat="server" CssClass="btn btn-info btn-xm" CommandArgument='<%# Eval("batch")+","+ Eval("feecategory")+","+Eval("fgstartdate")+","+Eval("fgenddate")+","+Eval("FId")+","+Eval("feefine") %>' CommandName="viewname" >
                            <span class="glyphicon glyphicon-pencil"></span>
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
                        </div>
    </form>
     <style>
        .form-control {
            display: block;
            width: 38%;
            margin-left: 128px;
            margin-top: -21px;
            height: 34px;
        }
   
    </style>
</body>
</html>
</asp:Content>