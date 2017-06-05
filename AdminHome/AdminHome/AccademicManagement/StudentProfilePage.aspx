<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" CodeBehind="StudentProfilePage.aspx.cs" Inherits="AdminHome.AccademicManagement.StudentProfilePage" %>
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
    <div class="container">
          <div class="row" style="margin-top:20px;">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                
                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Personal Information</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table1" runat="server" Font-Bold="true" CssClass="table">
                                                <asp:TableRow>
                                                    <asp:TableCell>Email:</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblemail" ></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                <asp:TableRow>
                                                    <asp:TableCell>Name:</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblname" ></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gender</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblgender" ></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Religion</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lreligionlb" ></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>S/O</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblfname"></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                            <asp:TableRow>
                                            <asp:TableCell>Blood Group</asp:TableCell>
                                            <asp:TableCell><asp:Label runat="server" ID="lblbldgrp"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>DOB</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbldob"></asp:Label></asp:TableCell>
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
                                                <asp:TableCell><asp:Label runat="server" ID="lblfmobile"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Mother Name</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmname"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Mother Mobile</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmmobile"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Mother Email</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmemail" ></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Name</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblgname"></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Address</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblgaddress"></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                                 <asp:TableRow>
                                                    <asp:TableCell>Gurdian Mobile</asp:TableCell>
                                                    <asp:TableCell><asp:Label runat="server" ID="lblgmobile"></asp:Label></asp:TableCell>
                                                </asp:TableRow>
                                        </asp:Table>
                                     </div>
                                </div>


                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Accademic Information</h4></div>
                                    <div class="panel-body">
                                         <asp:Table ID="Table3" CssClass="table" runat="server" Font-Bold="true"> 
                                             <asp:TableRow>
                                                <asp:TableCell>Class</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblclass"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Batch</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblbatch"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Shift</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblshift"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                            
                                             <asp:TableRow>
                                                <asp:TableCell>Admission Year</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbladdyr"></asp:Label></asp:TableCell>
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
                                                <asp:TableCell><asp:Label runat="server" ID="lblparaddreds"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>District</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbldistric"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>State</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblstate"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                        </div>
                              </div>
            </div>
            <div class="col-lg-2"></div>
        </div>  
    </div>
    <%--</form>--%>
</body>
</html>
</asp:Content>