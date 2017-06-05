<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentHome.aspx.cs" Inherits="AdminHome.StudentHome" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="bootstrap.3.3.7/content/Content/mybootstrap.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
            <br /><br />
        <fieldset> <legend>Control Panel</legend>
                <div class="row">
                    <div class="col-lg-3"><div class="divcontrol"><a id="A3" href="~/OldStudentHome.aspx" runat="server">Old Student Entry</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A4" href="~/AdmissionForm.aspx" runat="server">Studence Admission Form</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A5" href="#" runat="server">Admission Details</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A6" href="~/StudentNewBatch.aspx" runat="server">New Student Batch Assign</a></div></div>
                </div>
                <div class="row">
                    <div class="col-lg-3"><div class="divcontrol"><a id="A1" href="~/CurrentStudentInfo.aspx" runat="server">Current Student Info</a></div></div>
                    <div class="col-lg-3"><div class="divcontrol"><a id="A2" href="~/studentPermotion.aspx" runat="server">Student Permotion</a></div></div>
                </div>
                
            </fieldset>
    </div>
    </form>
</body>
</html>
