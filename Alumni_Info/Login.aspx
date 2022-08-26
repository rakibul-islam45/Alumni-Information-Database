<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Alumni_Info.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:lightcyan;width : 100%; height: 100%;">
        <br/>
        <br/>
    <center>
    <table style="width:100%;">
        <tr>
            <td style="height: 22px; width: 285px">&nbsp;</td>
            <td style="height: 22px; width: 227px;"></td>
            <td style="height: 22px"></td>
        </tr>
        <tr>
            <td style="width: 285px" >&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label1" runat="server" Text="UserName" Font-Bold="True"></asp:Label>
            </td>
            <td style="width: 227px">
                <asp:TextBox ID="luser" runat="server" Width="169px" Height="20px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="usrpass" runat="server" Text="Login as Admin or User!"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">&nbsp;&nbsp;&nbsp;&nbsp; <asp:Label ID="Label2" runat="server" Text="Password" Font-Bold="True"></asp:Label></td>
            <td style="width: 227px">
                <asp:TextBox ID="lpassword" runat="server" Type="Password" Height="24px" OnTextChanged="TextBox2_TextChanged" Width="168px"></asp:TextBox>
            </td>
            <td>
                <asp:Label ID="errorx" runat="server" Text=""></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 285px">
                
                &nbsp;</td>
            <td style="width: 227px">

                <strong>
                
                <asp:Button ID="Login" runat="server" Text="Login" OnClick="Login_Click" Font-Bold="True" />
                
                </strong>

            </td>
            </tr>
    </table>
         </center>
         <br/>
       
        <br/>
    </div>
</asp:Content>
