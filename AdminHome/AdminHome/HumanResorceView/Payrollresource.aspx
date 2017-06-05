<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payrollresource.aspx.cs" Inherits="AdminHome.HumanResorceView.Payrollresource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="../bootstrap.3.3.7/content/Content/mybootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container" style="margin-bottom:50px">
         <fieldset> <legend>Payroll Management</legend>
                <div class="row">
                    <div class="col-lg-3"><div class="divcontrol"><a id="A3" href="SalarysetDetails.aspx" runat="server">Salary Set Details</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A4" href="SalaryAllowance.aspx" runat="server">Salary Allowance Type</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A1" href="Searchsalary.aspx" runat="server">View Salary Details Info</a></div></div>
                </div>
                
            </fieldset>
    </div>
    </form>
</body>
</html>
