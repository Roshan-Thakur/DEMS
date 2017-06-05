<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="demoModel.aspx.cs" Inherits="AdminHome.demoModel" %>


    <!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
     <head id="Head1" runat="server">
    <title></title>
    
        <%-- Demo page --%>
     <script src="//code.jquery.com/jquery-1.9.1.js"></script>
     <!-- Latest compiled and minified CSS -->
       <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/css/bootstrap.min.css" rel="stylesheet" />
        <!-- Latest compiled and minified JavaScript -->
        <script type="text/javascript" src="//netdna.bootstrapcdn.com/bootstrap/3.0.0-rc1/js/bootstrap.min.js"></script>
          <script>
              function ConfirmDelete() {
                  $('#DeleteModal').modal()    // initialized with defaults
                  return false;
              }
          </script>
        <script>
            function EditModel() {
                $('#Edit').modal()    // initialized with defaults
                return false;
            }
        </script>
    <style>
        .ddl {
            border-style:none;
            -webkit-appearance:none;
        }
        .img-circle {
            border-radius: 50%;
            Width:80px;
            Height:90px;
            padding:4px;
            border-color:black;
        }
    </style> </head>
    <body>
        <script type="text/javascript">
            $(function () {
                $("#txt").datepicker();
                $("#txtdob").datepicker();
            });
</script>
<style type="text/css">
.ui-datepicker { font-size:8pt !important}
</style>
     <script type="text/javascript">
         function ShowPreview(input) {
             if (input.files && input.files[0]) {
                 var ImageDir = new FileReader();
                 ImageDir.onload = function (e) {
                     $('#impPrev').attr('src', e.target.result);
                 }
                 ImageDir.readAsDataURL(input.files[0]);
             }
         }
    </script> 
    <form id="form2" runat="server">
        <asp:Label runat="server" ID="lblmsg"></asp:Label>
         <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#DeleteModal">
  Launch demo modal
</button>
        <br />
                here is ImageButton:
<asp:ImageButton ID="BtnDelete" runat="server"  CommandName="Delete" OnClientClick="return ConfirmDelete()" ImageUrl="~/Images/Icons/Delete.png" ToolTip="Delete" Height="18" Width="18" /><br />
    <asp:LinkButton ID="LinkButton1" runat="server" OnClientClick="return ConfirmDelete()" Text="Delete"></asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" runat="server" OnClientClick="return EditModel()" Text="Delete"></asp:LinkButton>
        <div class="mypages">
        <div>
            <div id="Div1" runat="server" align="center" style="width:  23%; margin: auto; height: auto; background-color: gainsboro;">

                <div style="width: 23%; float: left;">

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BorderColor="#CC0000" BorderStyle="Solid" BorderWidth="1px" CellPadding="1" Width="215px" ShowHeaderWhenEmpty="True" Caption="Men's Mileage Mania Leaders" CaptionAlign="Top" HorizontalAlign="Center">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                       <EmptyDataTemplate>
                           <asp:Label ID="Label1" runat="server" Text="this is empty"></asp:Label>                        
                       </EmptyDataTemplate>
                        <Columns>                          
                            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="true" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="CountryId" HeaderText="CountryId" SortExpression="CountryId" />
                            <asp:BoundField DataField="CountryName" HeaderText="CountryName" SortExpression="CountryName" />
                            <asp:BoundField DataField="CountryCode" HeaderText="CountryCode" SortExpression="CountryCode" />   
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <asp:LinkButton runat="server" OnClientClick="return ConfirmDelete()" Text="Delete"></asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>                     
                        </Columns>
                        </asp:GridView>
                    
                </div>
                </div>
            </div>
  
        </div>
              <div>
   <div class="modal fade" id="DeleteModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
     <div class="modal-content" style="margin-top:180px;">
         <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="H3">Delete this record?</h4>
         </div>
         <div class="modal-body">
        Are you sure to delete this record?
        </div>
     <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
        <button type="button" class="btn btn-success">Edit</button>
      </div>
    </div>
  </div>
</div>
</div>
        <%-- Edit Popup --%>

        <div>
   <div class="modal fade" id="Edit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
     <div class="modal-content" style="margin-top:80px;">
         <div class="modal-header">
         <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="H1" style="text-align:center;">
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="ddl"><asp:ListItem>Parmanent</asp:ListItem><asp:ListItem>Temprary</asp:ListItem></asp:DropDownList>
                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="ddl"><asp:ListItem>Employee</asp:ListItem><asp:ListItem>Staff</asp:ListItem></asp:DropDownList>
         </h4></div>
         <div class="modal-body">
             <div class="col-3"><asp:Image CssClass="img-circle" runat="server" ID="profilimag" ImageUrl="Imgempstaff/g.jpg" /><h6 style="margin-left:20px;"><asp:Label runat="server" ID="lblcardno" Text="CardNo."></asp:Label></h6></div>
                 <div class="col-8-sm">
                     <asp:Panel runat="server" CssClass="panel">
                         <asp:TextBox ID="TextBox1" runat="server" Text="Roshan Thakur" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="TextBox2" runat="server" Text="S/O:Rajkumar Thakur" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="TextBox4" runat="server" Text="troshan23@gmail.com" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="TextBox5" runat="server" Text="18/08/1992" BorderStyle="None"></asp:TextBox>
                         <asp:DropDownList ID="DropDownList9" runat="server" CssClass="ddl"><asp:ListItem>Married</asp:ListItem><asp:ListItem>Unmerrid</asp:ListItem></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList1" runat="server" CssClass="ddl"><asp:ListItem>MALE</asp:ListItem><asp:ListItem>FEMALE</asp:ListItem></asp:DropDownList>
                         <asp:DropDownList ID="DropDownList4" runat="server" CssClass="ddl"><asp:ListItem>Indian</asp:ListItem><asp:ListItem>Foreigner</asp:ListItem></asp:DropDownList><br />
                         <asp:TextBox ID="T" runat="server" Text="Phone:9716526132" BorderStyle="None"></asp:TextBox>
                     </asp:Panel>
                     <div class="col-sm-3"><b>Department:</b><asp:DropDownList ID="DropDownList2" runat="server" CssClass="ddl"><asp:ListItem>Library Assistant</asp:ListItem><asp:ListItem>Student</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Designation:</b><asp:DropDownList ID="DropDownList7" runat="server" CssClass="ddl"><asp:ListItem>Library Assistant</asp:ListItem><asp:ListItem>Student</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Shift:</b><asp:DropDownList ID="DropDownList3" runat="server" CssClass="ddl"><asp:ListItem>Morning</asp:ListItem><asp:ListItem>Evening</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Blood:</b><asp:DropDownList ID="DropDownList8" runat="server" CssClass="ddl"><asp:ListItem>A+</asp:ListItem><asp:ListItem>B+</asp:ListItem></asp:DropDownList></div>
                 </div>
             </div><br />
     <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
        <asp:Button runat="server" id="btnedit" type="button" class="btn btn-success" Text="Update" OnClick="btnedit_Click" />
      </div>
       </div>
        </div>
    </div>
  </div>
        <%-- PopUp To Update Start --%>
    <%--<div class="modal fade" id="Div2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
   <div class="model-dialog"><div class="col-4"></div>
     <div class="modal-content col-sm-5" style="margin-top:80px;">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="H2" style="text-align:center;">
                <asp:DropDownList ID="ddldrstatus" runat="server" CssClass="ddl"><asp:ListItem>Parmanent</asp:ListItem><asp:ListItem>Temprary</asp:ListItem></asp:DropDownList>
                <asp:DropDownList ID="ddldrtype" runat="server" CssClass="ddl"><asp:ListItem>Employee</asp:ListItem><asp:ListItem>Staff</asp:ListItem></asp:DropDownList>
                
            </h4>
         </div>
         <div class="modal-body">
             <div class="col-3 img-circle" style="margin-bottom:20px;"><asp:Image CssClass="img-circle" runat="server" ID="Image1" ImageUrl="../Imgempstaff/g.jpg" /><h6 style="margin-left:20px;"><asp:Label runat="server" ID="Label2" Text="CardNo."></asp:Label></h6></div>    
             <div class="col-8-sm">
                     <asp:Panel ID="Panel1" runat="server" CssClass="panel">
                         <asp:Label runat="server" ID="lbl" Text=""></asp:Label>
                         <asp:TextBox ID="txtdrname" runat="server" Text="Roshan Thakur" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="txtdrfname" runat="server" Text="S/O:Rajkumar Thakur" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="txtdremail" runat="server" Text="troshan23@gmail.com" BorderStyle="None"></asp:TextBox>
                         <asp:TextBox ID="txt" runat="server" Text="18/08/1992" BorderStyle="None"></asp:TextBox>
                         <div>
                         <asp:DropDownList ID="ddldrmerit" runat="server" CssClass="ddl"><asp:ListItem>Married</asp:ListItem><asp:ListItem>Unmerrid</asp:ListItem></asp:DropDownList>
                         <asp:DropDownList ID="ddldrgender" runat="server" CssClass="ddl"><asp:ListItem>MALE</asp:ListItem><asp:ListItem>FEMALE</asp:ListItem></asp:DropDownList>
                         <asp:DropDownList ID="ddldrnation" runat="server" CssClass="ddl"><asp:ListItem>Indian</asp:ListItem><asp:ListItem>Foreigner</asp:ListItem></asp:DropDownList><br />
                         </div>
                         <asp:TextBox ID="txtdrphone" runat="server" Text="Phone:9716526132" BorderStyle="None"></asp:TextBox>
                     </asp:Panel>
                     <div class="col-sm-3"><b>Department:</b><asp:DropDownList ID="ddldrdept" runat="server" DataTextField="department" CssClass="ddl"><asp:ListItem>Library Assistant</asp:ListItem><asp:ListItem>Student</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Designation:</b><asp:DropDownList ID="ddldrdesig" runat="server" CssClass="ddl"><asp:ListItem>Library Assistant</asp:ListItem><asp:ListItem>Student</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Shift:</b><asp:DropDownList ID="ddldrshift" runat="server" CssClass="ddl"><asp:ListItem>Morning</asp:ListItem><asp:ListItem>Evening</asp:ListItem></asp:DropDownList></div>
                     <div class="col-sm-3"><b>Blood:</b><asp:DropDownList ID="ddldrblood" DataTextField="bloodgrp" runat="server" CssClass="ddl"><asp:ListItem>A+</asp:ListItem><asp:ListItem>B+</asp:ListItem></asp:DropDownList></div>
                 </div>
             </div><br />
        <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">Cancel</button>
        <asp:Button runat="server" id="Button1" type="button" class="btn btn-success" Text="Update" OnClick="btnedit_Click" />
      </div>
    </div><div class="col-3"></div>
  </div>
</div>--%>
    </form>
    <%-- css Style to popup --%>
     <style>
        .ddl {
            border-style:none;
            -webkit-appearance:none;
        }
        .img-circle {
            border-radius: 50%;
            width:80px;
            height:90px;
            padding:4px;
            border-color:black;
            margin-right:20px;
        }
    </style>
     <%-- Script & Styl to update opup --%>
    <script>
        function update() {
            $('#Div1').modal()    // initialized with defaults 
            return false;
        }
     </script>
       </body>

    </html>
   