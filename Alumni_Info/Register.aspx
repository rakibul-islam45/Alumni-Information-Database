<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Alumni_Info.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:lightcyan;width : 100%; height: 100%;">
        <br/>
        <br/>
    <center>
        <table border="0" style="height: 512px">
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblstdID" runat="server" Text="Student ID"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtstdID" runat="server" Width="198px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Fill The Data" ControlToValidate="txtstdID"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblname" runat="server" Text="Name"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtname" runat="server" CssClass="col-md-offset-0" Width="197px"></asp:TextBox>
                </td>
                <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldname" runat="server" ErrorMessage="User Name is required" ForeColor="Red" ControlToValidate="txtname"></asp:RequiredFieldValidator>
                    </td>
                 
            </tr>
            
            <tr>
                <td style="height: 25px; width: 136px;">
                    <strong>
                    <asp:Label ID="lblusername" runat="server" Text="User Name"></asp:Label>
                    </strong>
                </td>
                <td style="height: 25px; width: 215px;">
                    <asp:TextBox ID="txtusername" runat="server" Width="197px"></asp:TextBox>
                </td>
                 <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="User Name is required" ControlToValidate="txtusername"></asp:RequiredFieldValidator>
                    </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                   
                  <asp:TextBox ID="txtpassword" runat="server"  type="password"></asp:TextBox>
                </td>
                <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password required" ControlToValidate="txtpassword"></asp:RequiredFieldValidator>    
                </td>


            </tr>
            <tr>
                <td style="height: 25px; width: 136px;">
                    <strong>
                    <asp:Label ID="lblconfirmpassword" runat="server" Text="Confirm Password"></asp:Label>
                    </strong>
                </td>
                <td style="height: 25px; width: 215px;">
                  <asp:TextBox ID="confirmpassword" runat="server" type="password"></asp:TextBox>
                </td>
                 <td>
                 <asp:CompareValidator ID="CompareValidator1" runat="server" 
     ControlToValidate="confirmpassword"
     CssClass="ValidationError"
     ControlToCompare="txtpassword"
     ErrorMessage="No Match" 
     ToolTip="Password must be the same" />
                    </td>
                
                </tr>
            <tr>
                <td style="height: 25px; width: 136px;">
                    <strong>
                    <asp:Label ID="lbldist" runat="server" Text="Home District"></asp:Label>
                    </strong>
                </td>
                <td style="height: 25px; width: 215px;">
                    <asp:TextBox ID="txtdist" runat="server" Width="198px"></asp:TextBox>
                </td>
                 <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Home district Name is required" ControlToValidate="txtdist"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblsession" runat="server" Text="Session"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtsession" runat="server" Width="195px"></asp:TextBox>
                </td>
                 <td>
                   <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Session is required" ControlToValidate="txtsession"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lbljoiningdate" runat="server" Text="Admission Date"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                   

<EditItemTemplate>

    <asp:TextBox ID="ad_date" runat="server" Text='<%# Bind("DateofBirth", "{yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>

</EditItemTemplate>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblbirthdate" runat="server" Text="Birth Date"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    

<EditItemTemplate>

    <asp:TextBox ID="birth_date" runat="server" Text='<%# Bind("DateofBirth", "{yyyy-MM-dd}") %>' TextMode="Date" OnTextChanged="birth_date_TextChanged"></asp:TextBox>

</EditItemTemplate>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:DropDownList ID="txtgender" runat="server">
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                        <asp:ListItem>Other</asp:ListItem>
                        
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblbgroup" runat="server" Text="Blood Group:"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:DropDownList ID="bgroup" runat="server">
                        <asp:ListItem>A+</asp:ListItem>
                        <asp:ListItem>A-</asp:ListItem>
                        <asp:ListItem>B+</asp:ListItem>
                        <asp:ListItem>B-</asp:ListItem>
                        <asp:ListItem>O+</asp:ListItem>
                        <asp:ListItem>O-</asp:ListItem>
                        <asp:ListItem>AB+</asp:ListItem>
                        <asp:ListItem>AB-</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblcontactno" runat="server" Text="Contact No"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtcontact" runat="server" Width="197px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblemail" runat="server" Text="Email Id"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtemail" runat="server" Width="195px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="remail" runat="server" ErrorMessage="User Name is required" ForeColor="Red" Text="*" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
                    </td>
            </tr>
            
            
            <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="lblstatus" runat="server" Text="Designation"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtdesignation" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="Rfdesignation" runat="server" ErrorMessage="Desination required" ForeColor="Red" Text="*" ControlToValidate="txtdesignation"></asp:RequiredFieldValidator>
                    </td>
            </tr>
                <tr>
                <td style="width: 136px">
                    <strong>
                    <asp:Label ID="Label1" runat="server" Text="Institution"></asp:Label>
                    </strong>
                </td>
                <td style="width: 215px">
                    <asp:TextBox ID="txtinstitution" runat="server" Width="181px"></asp:TextBox>
                </td>
                 <td>
                    <asp:RequiredFieldValidator ID="rfinstitution" runat="server" ErrorMessage="Institution name is required" ForeColor="Red" Text="*" ControlToValidate="txtinstitution"></asp:RequiredFieldValidator>
                    </td>
            </tr>
           
          
            <td colspan="2">
                <center><strong><asp:Button ID="txtregister" runat="server" Text="Register" OnClick="txtregister_Click" style="font-weight: bold"  /></strong></center>
            
            </td>
            </tr>
           
                      
            
        </table>
    </center>
         <br/>
        <asp:Label ID="xd" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
        <br/>
    </div>
</asp:Content>
