<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="Notificationform.aspx.cs" Inherits="AdminHome.Notifications.Notificationform" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
    <script>
        function countChar(val) {
            var len = val.value.length;
            if (len >= 500) {
                val.value = val.value.substring(0, 500);
            } else {
                $('#charNum').text(500 - len);
            }
        };
    </script>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <div class="container">
                
        <div class="col-lg-7">
            <div class="row" style="margin-bottom:10px;">
           <asp:Button runat="server" Text="Absent Students" ID="btnabsent" BackColor="Green" CssClass="btn btn-primary" OnClick="btnabsent_Click" />
           <asp:Button ID="btnfails" runat="server" Text="Fail Student" BackColor="Green" CssClass="btn btn-primary" OnClick="btnfails_Click" />
           <asp:Button ID="btnnotic" runat="server" Text="Notice" BackColor="Green" CssClass="btn btn-primary" OnClick="btnnotic_Click" />
           <asp:Button ID="btngreeting" runat="server" Text="Greeting" BackColor="Green" CssClass="btn btn-primary" OnClick="btngreeting_Click" />
        </div>
       <div class="row">
          <div id="home" runat="server" >
                         <h5 style="text-align:center">Absent Students</h5>
                         <div class="row" style="margin-bottom:5px;">
                         <div class="col-6">
                             <asp:Table runat="server" CssClass="table">
                                 <asp:TableRow>
                                     <asp:TableCell>Batch:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlbatch" Width="180px" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                                      <asp:TableRow>
                                          <asp:TableCell>Date:</asp:TableCell><asp:TableCell><asp:TextBox ID="txt" CssClass="form-control txt" Width="180px"  placeholder="Date" runat="server"></asp:TextBox></asp:TableCell>
                                      </asp:TableRow>
                             </asp:Table>                                 
                         </div>
                             <div class="col-6" style="width:280px;">
                                  <asp:Table ID="Table1" runat="server" CssClass="table">
                                 <asp:TableRow>
                                      <asp:TableCell>Shift:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlshift" Width="180px" CssClass="form-control">
                                         <asp:ListItem>--Select--</asp:ListItem>
                                         <asp:ListItem>Morning</asp:ListItem>
                                         <asp:ListItem>Evening</asp:ListItem>
                                         <asp:ListItem>Day</asp:ListItem>
                                     </asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                                      <asp:TableRow>
                                          <asp:TableCell></asp:TableCell><asp:TableCell><asp:Button ID="btnabsentstu" Width="180px" runat="server" CssClass="btn btn-primary" Text="Search" OnClick="Unnamed_Click" /></asp:TableCell>
                                      </asp:TableRow>
                             </asp:Table>
                             </div>
                         </div>

   <p style="text-align:center;">You can send here Mobile SMS and Email to Absents Students at Specfic date.</p>
   </div>
            <div id="menu1" runat="server">
                <h5 style="text-align:center">Failed Students</h5>
                        <div class="row" style="margin-bottom:5px;">
                             <asp:Table ID="Table2" runat="server" CssClass="table">
                                 <asp:TableRow>
                                     <asp:TableCell>ExamID:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlexamid" Width="80%" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                                 <asp:TableRow>
                                     <asp:TableCell>
                                        <asp:Button runat="server" Text="Search" ID="btnsearchfailed" CssClass="btn btn-primary" OnClick="btnsearchfailed_Click" />
                                     </asp:TableCell>
                                 </asp:TableRow>
                             </asp:Table>
                        </div>
                <p>You can send here Mobile SMS and Email to Failed Students at Specfic date.</p>
             </div>

            <div id="menu2" runat="server">
                        <div class="row" style="margin-bottom:5px;">
                         <div class="col-6">
                             <h5>Notice to Students and Gurdians</h5>
                             <asp:Table ID="tbnoticstud" runat="server" CssClass="table">
                                 <asp:TableRow>
                                     <asp:TableCell>Batch:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlnotbatch" Width="180px" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                                 <asp:TableRow>
                                     <asp:TableCell>Shift:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlnoticshift" Width="180px" CssClass="form-control">
                                          <asp:ListItem>--Select--</asp:ListItem>
                                         <asp:ListItem>Morning</asp:ListItem>
                                         <asp:ListItem>Evening</asp:ListItem>
                                         <asp:ListItem>Day</asp:ListItem>
                                    </asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                             </asp:Table>                                   
                         </div>
                         <div class="col-6" style="width:280px;">
                             <h5>Notice to Teachers</h5>
                             <asp:Table ID="tbnoticteacher" runat="server" CssClass="table">
                                 <asp:TableRow>
                                     <asp:TableCell>TeacherID:</asp:TableCell><asp:TableCell><asp:DropDownList runat="server" ID="ddlteacherid" Width="180px" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                                 </asp:TableRow>
                                 <asp:TableRow>
                                     <asp:TableCell>
                                         <asp:Button runat="server" ID="btnSearchnotice" CssClass="btn btn-primary" Text="Search" OnClick="btnSearchnotice_Click" />
                                     </asp:TableCell>
                                 </asp:TableRow>
                             </asp:Table>
                         </div></div>

                        <p>You can send here Mobile SMS and Email to Notice Students at Specfic date.</p>
                        </div>
                    <div id="menu3" runat="server"><br />
                        <h3 style="text-align:center">Greeting</h3>
                        <asp:Button runat="server" ID="btnfindgreeting" Text="ALL Students" CssClass="btn btn-primary" OnClick="btnfindgreeting_Click" />
                        <p>You can send here Mobile SMS and Email to Greeting at Specfic date.</p>
                        
     </div>              
 </div>
<div class="row">
   <div style="height: 230px; overflow-y:auto;" >
       <asp:GridView runat="server" ID="gvTerritories" AutoGenerateColumns="false"  DataKeyNames="FKSTFormNo" EmptyDataText="Data Not Found" PageSize="3" CssClass="footable" CellPadding="4" EnableModelValidation="True" ForeColor="#333333" GridLines="None">
            <Columns>
                     <asp:TemplateField HeaderText="StudentID">
                        <ItemTemplate>
                            <asp:Label ID="lblid" runat="server" Text='<%# Eval("FKSTFormNo")%>' />
                        </ItemTemplate>
                    </asp:TemplateField>
                   <asp:BoundField HeaderText="Status." DataField="attandancestatus" />
                   <asp:BoundField HeaderText="Subject." DataField="subject" />
                   <asp:BoundField HeaderText="TeacherID." DataField="teacherId" />
                   <asp:BoundField HeaderText="Batch" DataField="batch" />
                   <asp:BoundField HeaderText="Shift" DataField="shift" />
            </Columns> 
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
        </asp:GridView>
     </div>  
 </div>
               </div>
            <%--</div>--%>
        <div class="col-lg-4">
           <textarea  id="content_txt" onkeyup="countChar(this)" placeholder="Typing Here..."  name="TextArea1" style="height:350px; width:100%;resize:none" runat="server" ></textarea>
           <p id="charNum"></p>
            <div style="margin-top:10px;">
            <asp:Button ID="btnsend" runat="server" CssClass="btn btn-primary" Text="Send Mail" OnClick="btnsend_Click" />
            <asp:Button ID="btnclear" runat="server" CssClass="btn btn-primary" Text="Send SMS" OnClick="btnclear_Click" />
            <asp:Button ID="btnsetapi" runat="server" CssClass="btn btn-primary" Text="Set User API" OnClick="btnsetapi_Click" />
            <asp:Label runat="server" ID="lblinfo" ForeColor="Red" Font-Bold="true"></asp:Label>
            </div>
        </div>
    </div>
    <%--</form>--%>
        
     <script type="text/javascript">
         $(function () {
             $(".txt").datepicker({ dateFormat: 'dd-mm-y' });
             $(".txtdob").datepicker();
         });
     </script>
     <script type="text/javascript">
         $(function () {
             $('[id*=gvTerritories]').footable();
         });
    </script>
</body>
</html>
</asp:Content>