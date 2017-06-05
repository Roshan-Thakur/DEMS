<%@ Page Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="studentdetails.aspx.cs" Inherits="AdminHome.studentdetails" %>
<asp:Content runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<body>
    <form id="form1" runat="server" style="background-color:white;">
        <br />
    <div class="container">
        <div class="col-lg-8">
        <asp:Panel runat="server" CssClass="panel-default">
            <br /><br /> 
            <asp:FileUpload ID="FileUpload1" runat="server" />
            <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="UploadFile" />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" />
<br />
            <asp:Label Text="Student Recorde File!" runat="server"></asp:Label>
<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" EmptyDataText = "No files uploaded" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
    <Columns>
        <asp:BoundField DataField="Text" HeaderText="File Name" />
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" OnClick = "DownloadFile"></asp:LinkButton>
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID = "lnkDelete" Text = "Delete" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "DeleteFile" />
            </ItemTemplate>
        </asp:TemplateField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:LinkButton ID = "lnSave" Text = "Priview" CommandArgument = '<%# Eval("Value") %>' runat = "server" OnClick = "Savefile" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
</asp:GridView>
            
        </asp:Panel>
        </div>
    </div>
        <div class="col-lg-6" style="float:right; background-color:whitesmoke;">
            <fieldset runat="server"><legend>Directory Path</legend>
            <asp:Button CssClass="btn-default" runat="server" Text="Recorde Insert On Database" OnClick="btninsert" /><br />
            <asp:Label ID="Lblmsg" runat="server" ForeColor="Red" Text=" "></asp:Label><br />
            <asp:Label ID="lblsave" runat="server" ForeColor="Red"></asp:Label> 
            </fieldset><br />
            <asp:GridView ID="GridView3" runat="server" Height="25px" EmptyDataText=" No Recorde Found! ">
                <RowStyle Width="175px" />
                <EmptyDataRowStyle BorderColor="Yellow" BorderStyle="Solid" BackColor="DeepPink" BorderWidth="2px" ForeColor="Black" />
                <HeaderStyle BorderColor="Yellow" BorderStyle="Solid" ForeColor="DarkBlue" BackColor="White" BorderWidth="4px" VerticalAlign="Top" Wrap="true"/>
            </asp:GridView>
        </div>
    </form>
</body>
</html>
</asp:Content>