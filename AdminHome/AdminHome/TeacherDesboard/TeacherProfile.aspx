<%@ Page Language="C#" MasterPageFile="~/TeacherDesboard/TeacherMasterpage.Master" AutoEventWireup="true" CodeBehind="TeacherProfile.aspx.cs" Inherits="AdminHome.TeacherDesboard.TeacherProfile" %>
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

                        tr:nth-child(even){background-color: #f2f2f2}

                        th {
                            background-color: #4CAF50;
                            color: white;
                        }
                </style>
</asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="conntent">
<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
        
    <div class="container">
        <div class="row">
            <div class="col-lg-2">
            </div>
            <div class="col-lg-8">
                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Personal Information</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table1" Font-Bold="true" runat="server" CssClass="table">
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
                                             <asp:TableRow>
                                                <asp:TableCell>Nationality</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblnationality"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Qualification</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbldegree"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                    </div>
                             </div>

                             <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Contact Details</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table2" Font-Bold="true" runat="server" CssClass="table">
                                            <asp:TableRow>
                                                <asp:TableCell>Mobile</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmobile"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Address</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbladdress"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Mother name</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmnane"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                            <asp:TableRow>
                                                <asp:TableCell>Profile Status</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmsg"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                     </div>
                                </div>


                            <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Designation Details</h4></div>
                                    <div class="panel-body">
                                         <asp:Table ID="Table3" CssClass="table" runat="server" Font-Bold="true">
                                              <asp:TableRow>
                                                <asp:TableCell>Type</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbltype"></asp:Label></asp:TableCell>
                                            </asp:TableRow> 
                                             <asp:TableRow>
                                                <asp:TableCell>Shift</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbllshift"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Joining Date</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbljdate"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Designation</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbldesignation"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                            
                                             <asp:TableRow>
                                                <asp:TableCell>Marital Status</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblmarrital"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                              <asp:TableRow>
                                                <asp:TableCell>Status</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblstatus"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                              <asp:TableRow>
                                                <asp:TableCell>Department</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbldept"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                        </asp:Table>
                                     </div>
                                </div> 
                               <div class="panel panel-default">
                                 <div class="panel-heading" style="text-align:center;background-color:#4CAF50;color: white;"><h4>Salary Details</h4></div>
                                    <div class="panel-body">
                                        <asp:Table ID="Table4" Font-Bold="true" runat="server" CssClass="table">
                                            <asp:TableRow>
                                                <asp:TableCell>Basic</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblbasic"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>GrossPay</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lblgrosspay"></asp:Label></asp:TableCell>
                                            </asp:TableRow>
                                             <asp:TableRow>
                                                <asp:TableCell>Total</asp:TableCell>
                                                <asp:TableCell><asp:Label runat="server" ID="lbltotal"></asp:Label></asp:TableCell>
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