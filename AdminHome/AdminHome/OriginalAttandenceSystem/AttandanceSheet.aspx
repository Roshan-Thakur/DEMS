<%@ Page Language="C#" MasterPageFile="~/TeacherDesboard/TeacherMasterpage.Master" AutoEventWireup="true" CodeBehind="AttandanceSheet.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.AttandanceSheet" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="conntent">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body style="background-color:whitesmoke">
    <%--<form id="form1" runat="server" >--%>
<div class="container" >
    <div class="row">
           <fieldset><legend style="font-size:medium;text-align:center;">Select Class or Batch</legend>
                     <div class="col-2" style="width:198px;"><table class="table"><tr><td>Shift:</td>
                        <td><asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Morning</asp:ListItem>
                                <asp:ListItem>Evening</asp:ListItem>
                                <asp:ListItem>Day</asp:ListItem>
                            </asp:DropDownList>
                        </td></tr></table></div>
                    <div class="col-2" style="width:220px;"><table class="table"><tr><td>Batch:</td><td><asp:DropDownList runat="server" ID="ddlbatch" CssClass="form-control"></asp:DropDownList></td></tr></table></div>
                    <div class="col-2" style="width:210px;"><table class="table"><tr><td>Class:</td><td><asp:DropDownList runat="server" ID="ddlclass" CssClass="form-control"></asp:DropDownList></td></tr></table></div>
                    <div class="col-2" style="width:210px;"><table class="table"><tr><td>Subject</td><td><asp:DropDownList runat="server" ID="ddlsub" CssClass="form-control"></asp:DropDownList></td></tr></table></div>
                    <div class="col-2" style="width:220px;"><table class="table"><tr><td>Teacher ID</td><td><asp:DropDownList runat="server" ID="ddlteacherid" CssClass="form-control"></asp:DropDownList></td></tr></table></div>
                    <div class="col-1" style="width:110px;"><table class="table"><tr><td><asp:Button ID="Button1" runat="server" Text="Search" CssClass="btn btn-primary" OnClick="Unnamed_Click2"  /></td></tr></table></div>
          </fieldset>
    </div>
        <div class="row">
            <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
            <asp:Label runat="server" ID="lblbatchshift" Font-Size="Medium" Text="Morning,MCA_2014,MCA" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FormNo"  ShowFooter="true" OnRowDataBound="gvTerritories_RowDataBound" >
               <Columns>
                   <asp:BoundField HeaderText="FormNo." DataField="FormNo" />
                   <asp:BoundField HeaderText="Student Name" DataField="StName" />
                   <asp:BoundField HeaderText="S/O" DataField="FatName" />
                   <asp:BoundField HeaderText="RollNo." DataField="Rollno" />
                   <asp:TemplateField HeaderText="Present">
                           <ItemTemplate>
                               <asp:CheckBox ID="chkAttendence" runat="server" Checked="true"  />
                           </ItemTemplate>
                  <FooterTemplate>
                    <asp:Label ID="lblstud" runat="server" Text="Total Student"></asp:Label>
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
            <asp:Button runat="server" ID="btnsubmit" Text="Submit" CssClass="btn btn-primary" OnClick="btnsubmit_Click1" OnClientClick="return GetMarriedEmployees() " />
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
    <%-- Scipt Text Change --%>
    <script>
        $(".pushme").click(function () {
            $(this).text(function (i, v) {
                return v === 'A' ? 'P' : 'A'
            })
        });
    </script>
    <script type="text/javascript">
        $(function () {
            $(".txt").datepicker();
            $(".txtdob").datepicker();
        });
</script>
</body>
</html></asp:Content>
