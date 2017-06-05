<%@ Page Language="C#" MasterPageFile="~/usercontrolpage/ControlMasterPage.Master" AutoEventWireup="true" CodeBehind="StaffAndFacultyAttandance.aspx.cs" Inherits="AdminHome.OriginalAttandenceSystem.StaffAndFacultyAttandance" %>
<asp:Content runat="server" ContentPlaceHolderID="head"></asp:Content>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<body>
    <%--<form id="form1" runat="server">--%>
    <%--<div class="row"  style="margin-bottom:50px;height:50px;background-color:skyblue; text-align:center"><h3>Attandance Sheet</h3> </div>--%>
    <div class="row">
    <div class="col-lg-3" style="margin-bottom:50px;" >
    <fieldset><legend>Attandance Data Import</legend>
        <asp:Table ID="Table1" CssClass="table" runat="server">
             <asp:TableRow>
               <asp:TableCell>Time:</asp:TableCell>
               <asp:TableCell><asp:TextBox runat="server" ID="txttime" CssClass="form-control" ReadOnly="true"></asp:TextBox></asp:TableCell>
           </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>Emp/Staff ID:</asp:TableCell>
                <asp:TableCell><asp:TextBox runat="server" ID="txteid" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="rqd" ControlToValidate="txteid" Text="Required Field!" ></asp:RequiredFieldValidator>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        <asp:Button ID="btnattandanceimpot" runat="server" Text="Import Attandance" CssClass="btn btn-primary" OnClick="btnattandanceimpot_Click" /><br />
        <asp:RegularExpressionValidator ID="reglr" ControlToValidate="txteid" runat="server" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+"></asp:RegularExpressionValidator>
        <br /><asp:Label runat="server" ID="lblmsg" ForeColor="Red"></asp:Label>
        <div aria-readonly="true" style="margin-top:10px;">
        <asp:Label runat="server" CssClass="label" ID="Label1" Font-Size="Medium" Text="Longitude:"></asp:Label>
        <asp:TextBox runat="server" ID="txtlog" Font-Size="Medium" CssClass=" lbllog"></asp:TextBox><br /><br />
        <asp:Label runat="server" CssClass="label" ID="Label2" Font-Size="Medium" Text="Latitude:"></asp:Label>
        <asp:TextBox runat="server" CssClass=" lbllat" Font-Size="Medium" ID="txtlat"></asp:TextBox></div>
    </fieldset></div><div class="col-lg-9">
            <asp:Label runat="server" ID="lbldate" Font-Size="Medium" Text="13/04/2014" CssClass="label"></asp:Label>
            <asp:Label runat="server" ID="lblbatchshift" Font-Size="Medium" Text="R D Engineering College Duhai" CssClass="label"></asp:Label>
              <asp:GridView ID="gvTerritories" AllowPaging="true" PageSize="5" OnPageIndexChanging="gvTerritories_PageIndexChanging" EmptyDataText="No Data Found" runat="server" AutoGenerateColumns="false" CssClass="footable" 
              GridLines="None" DataKeyNames="FKEID"  ShowFooter="false"  >
               <Columns>
                   <asp:BoundField HeaderText="EID" DataField="FKEID" />
                   <asp:BoundField HeaderText="Time" DataField="attandancetime" />
                   <asp:BoundField HeaderText="Attandance." DataField="attandancestatus" />
                   <asp:BoundField HeaderText="Date." DataField="attandancedate" />
                   <asp:BoundField HeaderText="Latitude." DataField="latitute" />
                   <asp:BoundField HeaderText="Longitude" DataField="longitute" />
               </Columns>
               <EmptyDataRowStyle Font-Bold="true" Font-Size="14pt" ForeColor="Red" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <%--<HeaderStyle CssClass="gridViewHeader" />--%>
                <RowStyle CssClass="gridViewRow" />
                <AlternatingRowStyle CssClass="gridViewAltRow" />
                <PagerStyle CssClass="gridViewPager" />
            </asp:GridView>
           <div id="dvMap" style="width: 100%; height:250px"></div>
         </div>
        
    </div>
    <%--</form>--%>
    <%-- Script to responsiv grid --%>
    <script type="text/javascript">
        $(function () {
            $('[id*=gvTerritories]').footable();
        });
    </script>
<script type="text/javascript">
           $(function () {
               $(".txt").datepicker();
               $(".txtdob").datepicker();
           });
</script>
    <%-- Map Latitute and logitute --%>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC8uLt5ZN25IBoUZNp6ZIeCf0bmhsgkVao&signed_in=true&callback=initMap"></script>
<script type="text/javascript">
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(function (p) {
            var LatLng = new google.maps.LatLng(p.coords.latitude, p.coords.longitude);
            $(".lbllat").val(p.coords.latitude);
            $(".lbllog").val(p.coords.longitude);
            var mapOptions = {
                center: LatLng,
                zoom: 13,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
            var map = new google.maps.Map(document.getElementById("dvMap"), mapOptions);
            var marker = new google.maps.Marker({
                position: LatLng,
                map: map,
                title: "<div style = 'height:60px;width:200px'><b>Your location:</b><br />Latitude: " + p.coords.latitude + "<br />Longitude: " + p.coords.longitude

            });
            google.maps.event.addListener(marker, "click", function (e) {
                var infoWindow = new google.maps.InfoWindow();
                infoWindow.setContent(marker.title);
                infoWindow.open(map, marker);
            });
        });
    } else {
        alert('Geo Location feature is not supported in this browser.');
    }
</script>
    
</body>
</html>
</asp:Content>