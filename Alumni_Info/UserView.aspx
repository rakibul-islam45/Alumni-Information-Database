<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UserView.aspx.cs" Inherits="Alumni_Info.UserView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div style="background-color:lightcyan;">
         <br/>
        </br>
        <center>
            <br/>
            <h3><strong>All Alumni Informations</strong></h3>
        </br>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" DataKeyNames="id" Width="408px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
               
            </Columns>
        </asp:GridView>
        <br/>
        <br/>
        
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="369px" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" DataSourceID="SqlDataSource2" CellSpacing="2" ForeColor="Black">
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Home_District" HeaderText="Home_District" SortExpression="Home_District" />
                <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
                <asp:BoundField DataField="Admission_Date" HeaderText="Admission_Date" SortExpression="Admission_Date" />
                <asp:BoundField DataField="Birth_Date" HeaderText="Birth_Date" SortExpression="Birth_Date" />
                <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                <asp:BoundField DataField="Blood_Group" HeaderText="Blood_Group" SortExpression="Blood_Group" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                <asp:BoundField DataField="Institution" HeaderText="Institution" SortExpression="Institution" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle ForeColor="Black" HorizontalAlign="Left" BackColor="#CCCCCC" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
         <br/>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" SelectCommand="SELECT [Student ID] AS Student_ID, [Name], [Session], [id] FROM [register1]"></asp:SqlDataSource>
        <br/> 
         &nbsp;<br/>

         <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" SelectCommand="SELECT [Student ID] AS Student_ID, [Name], [Home District] AS Home_District, [Session], [Admission Date] AS Admission_Date, [Birth Date] AS Birth_Date, [Gender], [Blood Group] AS Blood_Group, [Contact], [Email], [Designation], [Institution] FROM [register1] WHERE ([id] = @id)" OnSelecting="SqlDataSource2_Selecting">
             <SelectParameters>
                 <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
             </SelectParameters>
         </asp:SqlDataSource>

          
          </center>          
         <br/>
    </div>
</asp:Content>
