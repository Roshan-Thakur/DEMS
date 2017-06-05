 <%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="AdminTable.aspx.cs" Inherits="AdminHome.AdminTable" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server">

        <%-- Department Modue  start--%>
    <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Authenticator of Departments</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                        <asp:TextBox ID="search" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table CssClass="table" runat="server">
            <asp:TableHeaderRow cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div>          <%-- Department Modue End --%>


        <%-- Placement Department Moduel start --%>

        <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Placement Department</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <asp:TextBox ID="search1" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter1" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>                       
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table ID="Table1" CssClass="table" runat="server">
            <asp:TableHeaderRow ID="TableHeaderRow1" cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div><%-- Placement department Moduel end--%>


        <%--Student Moduel start --%>
        <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Student Department</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <asp:TextBox ID="search2" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>                       
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter2" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>                       
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table ID="Table2" CssClass="table" runat="server">
            <asp:TableHeaderRow ID="TableHeaderRow2" cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div><%--Student Department module end --%>

         <%-- Account Department Moduel start --%>

        <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Account Department</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <asp:TextBox ID="search3" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>                       
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter3" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>                       
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table ID="Table3" CssClass="table" runat="server">
            <asp:TableHeaderRow ID="TableHeaderRow3" cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div><%-- Account department Moduel end--%>

         <%-- Library Department Moduel start --%>

        <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Library Department</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <asp:TextBox ID="search4" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>                       
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter4" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>                       
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table ID="Table4" CssClass="table" runat="server">
            <asp:TableHeaderRow ID="TableHeaderRow4" cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div><%-- Library department Moduel end--%>

        <%-- Faculty Department Moduel start --%>

        <div class="container">
    <div class="mytablerow" style="margin-bottom:40px;"><span>Faculty Department</span></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <asp:TextBox ID="search5" type="text" cssclass="form-control" placeholder="Search" runat="server"></asp:TextBox>                       
                        <span class="input-group-addon">
                            <i class="glyphicon glyphicon-search"></i>
                        <%--<button class="btn btn-default" type="button">
                        Go!
                        </button>--%>
                        </span>        
          </div>
        </div><div class="col-lg-4"></div>
        <div class="col-lg-4">
            <div class="input-group">
                       <span class="input-group-addon"><i class="glyphicon glyphicon-filter"></i></span>
                       <asp:TextBox ID="filter5" type="text" cssclass="form-control" placeholder="Filter" runat="server"></asp:TextBox>                       
          </div>
        </div>
        <div class="panel panel-default">
            <asp:Table ID="Table5" CssClass="table" runat="server">
            <asp:TableHeaderRow ID="TableHeaderRow5" cssclass="tablehead" runat="server">
                    <asp:TableHeaderCell> Department</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Name</asp:TableHeaderCell>
                    <asp:TableHeaderCell> Contact No.</asp:TableHeaderCell>
            </asp:TableHeaderRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
                            <asp:TableRow>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                                <asp:TableCell>Hello</asp:TableCell>
                            </asp:TableRow>
            </asp:Table>
        </div>
        
    </div><%-- Faculty department Moduel end--%>
    </form>
</body>
</html></asp:Content>
