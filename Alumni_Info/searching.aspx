<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="searching.aspx.cs" Inherits="Alumni_Info.searching" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div style="background-color:lightcyan;width : 100%; height: 100%;">
        <br/>
        <br/>
    <center>
   
    <br />
    <p>
        <asp:TextBox ID="TextBox1" runat="server" Width="210px" BorderColor="#CCFFFF"></asp:TextBox>
&nbsp;&nbsp; &nbsp; <asp:Button ID="Button1" runat="server" Text="Search" BackColor="#CCFFFF" BorderColor="#3399FF" Font-Bold="True" OnClick="Button1_Click" />
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" ShowHeaderWhenEmpty="True" EmptyDataText="No Records found!" DataKeyNames="id" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="442px">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="Student_ID" HeaderText="Student_ID" SortExpression="Student_ID" />
               
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Home_District" HeaderText="Home_District" SortExpression="Home_District" />
                <asp:BoundField DataField="Session" HeaderText="Session" SortExpression="Session" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" SelectCommand="SELECT [Student ID] AS Student_ID, [id], [Name], [Home District] AS Home_District, [Session] FROM [register1] WHERE ([Name] LIKE '%' + @Name + '%')">
            <SelectParameters>
                <asp:ControlParameter ControlID="TextBox1" Name="Name" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource2" Height="50px" Width="377px" ForeColor="Black">
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
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
            <RowStyle BackColor="White" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" SelectCommand="SELECT [id], [Student ID] AS Student_ID, [Name], [Home District] AS Home_District, [Session], [Admission Date] AS Admission_Date, [Birth Date] AS Birth_Date, [Gender], [Blood Group] AS Blood_Group, [Contact], [Email], [Designation], [Institution] FROM [register1] WHERE ([id] = @id)">
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        &nbsp;</p>
    <p>
    </p>
         
         </center>
         <br/>
       
        <br/>
    </div>
</asp:Content>
