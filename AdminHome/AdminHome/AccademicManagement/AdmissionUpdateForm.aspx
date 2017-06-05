<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="AdmissionUpdateForm.aspx.cs" Inherits="AdminHome.AccademicManagement.AdmissionUpdateForm" %>
<asp:Content runat="server" ContentPlaceHolderID="head">
      <style>
                        table {
                            border-collapse: collapse;
                            width: 100%;
                        }

                        th, td {
                            text-align: left;
                            padding: 8px;
                        }

                        tr:nth-child(even){background-color: #f2f2f2;}

                        th {
                            background-color: #4CAF50;
                            color: white;
                        }
                </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
     <script type="text/javascript">
         $(function () {
             $(".txt").datepicker();
             $(".txtdob").datepicker();
         });
    </script>
    <div class="container">
           
            <div class="row" style="margin-top:20px;">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                <div style="font-weight:bold;margin-bottom:5px;width:100%">
                    <label runat="server" id="lblid"></label>
                    <a href="AdmissionDetails1.aspx" style="color:red;font-weight:bold;float:right"><span class="glyphicon glyphicon-arrow-right">Students_List</span></a>
                </div> 
                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Personal Information</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table1" runat="server" Font-Bold="true" CssClass="table">
                                                <asp:TableRow>
                                                    <asp:TableCell>Email:</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtemail" required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>Name:</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtname"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gender</asp:TableCell>
                                                    <asp:TableCell>
                                                        <asp:DropDownList runat="server" ID="ddlgender" CssClass="form-control">
                                                            <asp:ListItem>Male</asp:ListItem>
                                                            <asp:ListItem>Female</asp:ListItem>
                                                        </asp:DropDownList></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Religion</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtreligion"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>S/O</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" id="txtfname" type="text"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                            <asp:TableRow>
                                            <asp:TableCell>Blood Group</asp:TableCell>
                                            <asp:TableCell><asp:DropDownList runat="server" ID="ddlbld" CssClass="form-control"></asp:DropDownList></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>DOB</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control txt" id="txtdob" type="text"  required="required" /></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell><asp:Image ID="impPrev" CssClass="img-responsive impPrev" Width="70%" runat="server" BorderStyle="Solid" /></asp:TableCell>
                                                <asp:TableCell><input runat="server" type="file" name="ImageUpload" class="ImageUpload" id="ImageUpload" onchange="ShowPreview(this)" /></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                    </div>
                             </div>

                             <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Gurdian Information</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table2" runat="server" Font-Bold="true" CssClass="table">
                                            <asp:TableRow>
                                                <asp:TableCell>Father Mobile</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" type="text" id="txtfmobile"  required="required" /></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Mother Name</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" type="text" id="txtmname"  required="required" /></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Mother Mobile</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" type="text" id="txtmmobile"  required="required" /></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Mother Email</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" type="text" id="txtmemail"  required="required" /></asp:TableCell>
                                            </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Name</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtgname"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Address</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtgaddress"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Mobile</asp:TableCell>
                                                    <asp:TableCell><input runat="server" class="form-control" type="text" id="txtmobile"  required="required" /></asp:TableCell>
                                                </asp:TableRow>
                                        </asp:Table>
                                     </div>
                                </div>


                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Accademic Information</h4></div>
                                    <div class="panel-body">
                                         <asp:Table ID="Table3" CssClass="table" runat="server" Font-Bold="true"> 
                                             <asp:TableRow>
                                                <asp:TableCell>Shift</asp:TableCell>
                                                <asp:TableCell>
                                                    <asp:DropDownList runat="server" ID="ddlshift" CssClass="form-control">
                                                          <asp:ListItem>Morning</asp:ListItem>
                                                          <asp:ListItem>Evening</asp:ListItem>
                                                          <asp:ListItem>Day</asp:ListItem>
                                                    </asp:DropDownList></asp:TableCell>
                                            </asp:TableRow>
                            
                                             <asp:TableRow>
                                                <asp:TableCell>Admission Year</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" type="text" id="txtaddyr" /></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                     </div>
                                </div> 
                               <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Address Details</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table4" runat="server" Font-Bold="true" CssClass="table">
                                            <asp:TableRow>
                                                <asp:TableCell>Address</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" id="txtaddress" type="text" /></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>District</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" id="txtdistrict" type="text" /></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>State</asp:TableCell>
                                                <asp:TableCell><input runat="server" class="form-control" id="txtstate" type="text" /></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                        <div>
                                            <asp:Button ID="btnsubmit" runat="server" class="btn btn-primary" Text="Submit" OnClick="btnsubmit_Click" />
                                            <label runat="server" id="lblmsg" style="color:red;font-weight:bold;text-align:center;"></label>
                                        </div>
                                        </div>
                              </div>
            </div>
            <div class="col-lg-2"></div>
        </div>  
    </div>
    <%--</form>--%>
    <script type="text/javascript">
        function ShowPreview(input) {
            if (input.files && input.files[0]) {
                var ImageDir = new FileReader();
                ImageDir.onload = function (e) {
                    var ext = $('.ImageUpload').val().split('.').pop().toLowerCase();
                    //Initiate the JavaScript Image object.
                    var image = new Image();
                    //Set the Base64 string return from FileReader as source.
                    image.src = e.target.result;
                    image.onload = function () {
                        //Determine the Height and Width.
                        var height = this.height;
                        var width = this.width;
                        if (height > 500 || width > 500) {
                            alert("Height and Width must not exceed 100px.");
                            return false;
                        } else if ($.inArray(ext, ['gif', 'png', 'jpg', 'jpeg']) == -1) {
                            alert('invalid extension!');
                            // alert("Uploaded image has valid Height and Width.");
                            return true;
                        } else {
                            $('.impPrev').attr('src', e.target.result);
                        }
                    };

                }
                ImageDir.readAsDataURL(input.files[0]);
            }
        }
    </script>
</body>
</html>
</asp:Content>