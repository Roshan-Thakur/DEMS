<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdminHome._Default" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">
        <br />
        <div class="container" style="text-align:center"><h4 style="color:whitesmoke;"> Admin Profile</h4>
            <asp:Label runat="server" Text=" " ID="ControlName"></asp:Label>
        </div>
        <br />
            <div class="container-fluid">
                
                <div class="row" >
                    <% for (int i = 1; i <= 1; i++) { %>
                        <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span><i class="glyphicon glyphicon-bullhorn"></i>&nbsp;Notification</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table1" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-remove-circle"></i>
                                            <asp:LinkButton ID="absent" runat="server">Today's Absent <a><asp:Label runat="server" ID="RT" Text=" "></asp:Label></a> Students </asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-envelope"></i>
                                            <asp:LinkButton ID="notice" runat="server">Notice</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton5" runat="server">Greeting</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton6" runat="server">Template</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton7" runat="server">Fail Student</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                     <% } %>
                    <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span><i class="glyphicon glyphicon-bullhorn"></i>&nbsp;Report</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table7" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-remove-circle"></i>
                                            <asp:LinkButton ID="LinkButton39" PostBackUrl="View/studentInfo/StudentInfoHomefrm.aspx" runat="server">Student Info</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ok-circle"></i>
                                            <asp:LinkButton ID="LinkButton40" PostBackUrl="View/s-and-f/StaffFacultyHomefrm.aspx" runat="server">Faculty or Staff</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ban-circle"></i>
                                            <asp:LinkButton ID="LinkButton41" PostBackUrl="View/attendance/AttendanceHome.aspx" runat="server">&nbsp;Attandence</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton43" PostBackUrl="View/Examination/ExaminationHome.aspx" runat="server">Examination</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton44" PostBackUrl="View/routine/ClassRoutinHomefrm.aspx" runat="server">Routin</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                    <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span><i class="glyphicon glyphicon-student"></i>&nbsp;Academic</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table5" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-remove-circle"></i>
                                            <asp:LinkButton ID="LinkButton25" PostBackUrl="~/StudentHome.aspx" runat="server">Students</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ok-circle"></i>
                                            <asp:LinkButton ID="LinkButton26" runat="server">Student's attandence</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ban-circle"></i>
                                            <asp:LinkButton ID="LinkButton27" runat="server">&nbsp;Examination</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-envelope"></i>
                                            <asp:LinkButton ID="LinkButton28" runat="server">Routin</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton29" runat="server">Advisor</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                    <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span><i class="glyphicon glyphicon-bullhorn"></i>&nbsp;Administration</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table6" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-remove-circle"></i>
                                            <asp:LinkButton ID="LinkButton32" runat="server">Finance </asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ok-circle"></i>
                                            <asp:LinkButton ID="LinkButton33" PostBackUrl="HumanResorceView/HumanResorcehome.aspx" runat="server">Humen Resource</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-ban-circle"></i>
                                            <asp:LinkButton ID="LinkButton34" PostBackUrl="AdminSettingView/SettingHome.aspx" runat="server">&nbsp;Setting</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow> <asp:TableCell><span><i class="glyphicon glyphicon-envelope"></i>
                                            <asp:LinkButton ID="LinkButton35" PostBackUrl="~/AdminProfile.aspx" runat="server">Admin Profile</asp:LinkButton></span></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton36" PostBackUrl="~/ControlPanelDiv/HomeControl.aspx" runat="server">Control Panel</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                    <asp:Button runat="server" ID="counter" Text="Counter"/>
                 </div>

                <%-- Seconed Row of col --%>

                <div class="row" >
                    <% for (int i = 1; i <= 3; i++) { %>
                        <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span>Hello, Sir</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table2" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell>
                                            <asp:LinkButton ID="LinkButton8" runat="server">LinkButton</asp:LinkButton></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton9" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton10" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton11" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton12" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton13" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton14" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                     <% } %>
                    <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span>Hello, Sir</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table4" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell>
                                            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton2" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton3" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton4" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton22" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton23" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton24" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                 </div>
                <%-- Thired row of col --%>
                <div class="row" >
                    <% for (int i = 1; i <= 4; i++) { %>
                        <div class="col-md-3">
                            <div class="mytablerow" style="box-shadow: 0 0 30px white;"> <span>Hello, Sir</span></div>
                                <div class="mydiv"><br />
                                        <div class="col-lg-12">
                                            <asp:Table ID="Table3" runat="server" CssClass="table">
                                            <asp:TableRow> <asp:TableCell>
                                            <asp:LinkButton ID="LinkButton15" runat="server">LinkButton</asp:LinkButton></asp:TableCell></asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton16" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton17" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton18" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton19" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton20" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            <asp:TableRow><asp:TableCell><asp:LinkButton ID="LinkButton21" runat="server">LinkButton</asp:LinkButton></asp:TableCell> </asp:TableRow>
                                            </asp:Table>
                                        </div>
                                </div>
                             </div> 
                     <% } %>
                 </div>
            </div>
    </form>
</body>
</html></asp:Content>