<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="User.aspx.cs" Inherits="Alumni_Info.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
	<div style="background-color:lightcyan;">
		
		<br/>
		<br/>
	<center>
	<table style="width: 100%; width: 100%; height: 100%;">
		<tr>
			
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="50px" Width="537px">
					<EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
					<Fields>
						<asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
						<asp:TemplateField HeaderText="Student_ID" SortExpression="Student_ID">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Student_ID") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Student_ID") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label1" runat="server" Text='<%# Bind("Student_ID") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Name" SortExpression="Name">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="UserName" SortExpression="UserName">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvuesrname" runat="server" ErrorMessage="User Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label3" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						
						<asp:TemplateField HeaderText="Home_District" SortExpression="Home_District">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Home_District") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Home_District") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label5" runat="server" Text='<%# Bind("Home_District") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Session" SortExpression="Session">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Session") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Session") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label6" runat="server" Text='<%# Bind("Session") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Admission_Date" SortExpression="Admission_Date">
							<EditItemTemplate>
								 <asp:TextBox ID="Edit_ad_date" runat="server" Text='<%# Bind("Admission_Date", "{0:yyyy-MM-dd}") %>'  TextMode="Date"></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Admission_Date") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label7" runat="server" Text='<%# Bind("Admission_Date") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Birth_Date" SortExpression="Birth_Date">
							<EditItemTemplate>
								 <asp:TextBox ID="Edit_birth_date" runat="server" Text='<%# Bind("Birth_Date", "{0:yyyy-MM-dd}") %>' TextMode="Date" ></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Birth_Date") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label8" runat="server" Text='<%# Bind("Birth_Date") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Gender" SortExpression="Gender">
							<EditItemTemplate>
								<asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Gender") %>'>
							<asp:ListItem>Male</asp:ListItem>
						<asp:ListItem>Female</asp:ListItem>
						<asp:ListItem>Other</asp:ListItem>
						</asp:DropDownList>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox9" runat="server" Text='<%# Bind("Gender") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label9" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Blood_Group" SortExpression="Blood_Group">
							<EditItemTemplate>
								<asp:DropDownList ID="DropDownList2" runat="server" SelectedValue='<%# Bind("Blood_Group") %>'>
							<asp:ListItem>A+</asp:ListItem>
						<asp:ListItem>A-</asp:ListItem>
						<asp:ListItem>B+</asp:ListItem>
						<asp:ListItem>B-</asp:ListItem>
						<asp:ListItem>O+</asp:ListItem>
						<asp:ListItem>O-</asp:ListItem>
						<asp:ListItem>AB+</asp:ListItem>
						<asp:ListItem>AB-</asp:ListItem>
						</asp:DropDownList>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Blood_Group") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label10" runat="server" Text='<%# Bind("Blood_Group") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Contact" SortExpression="Contact">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label11" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Email" SortExpression="Email">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label12" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Designation" SortExpression="Designation">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label13" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
						<asp:TemplateField HeaderText="Institution" SortExpression="Institution">
							<EditItemTemplate>
								<asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Institution") %>'></asp:TextBox>
							</EditItemTemplate>
							<InsertItemTemplate>
								<asp:TextBox ID="TextBox14" runat="server" Text='<%# Bind("Institution") %>'></asp:TextBox>
							</InsertItemTemplate>
							<ItemTemplate>
								<asp:Label ID="Label14" runat="server" Text='<%# Bind("Institution") %>'></asp:Label>
							</ItemTemplate>
						</asp:TemplateField>
					   
						<asp:CommandField ShowEditButton="True" />
					   
					</Fields>
					<FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
					
					<HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
					<PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
					<RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
				</asp:DetailsView>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
		<tr>
			<td>
				<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>" 
					DeleteCommand="DELETE FROM [register1] WHERE [id] = @id" InsertCommand="INSERT INTO [register1] ([Student ID], [Name], [UserName], [Home District], [Session], [Admission Date], [Birth Date], [Gender], [Blood Group], [Contact], [Email], [Designation], [Institution]) VALUES (@Student_ID, @Name, @UserName, @Home_District, @Session, @Admission_Date, @Birth_Date, @Gender, @Blood_Group, @Contact, @Email, @Designation, @Institution)" 
					SelectCommand="SELECT [id], [Student ID] AS Student_ID, [Name], [UserName], [Home District] AS Home_District, [Session], [Admission Date] AS Admission_Date, [Birth Date] AS Birth_Date, [Gender], [Blood Group] AS Blood_Group, [Contact], [Email], [Designation], [Institution] FROM [register1] WHERE ([UserName] = @UserName)"
					 UpdateCommand="UPDATE [register1] SET [Student ID] = @Student_ID, [Name] = @Name, [UserName] = @UserName,  [Home District] = @Home_District, [Session] = @Session, [Admission Date] = @Admission_Date, [Birth Date] = @Birth_Date, [Gender] = @Gender, [Blood Group] = @Blood_Group, [Contact] = @Contact, [Email] = @Email, [Designation] = @Designation, [Institution] = @Institution WHERE [id] = @id" OnSelecting="SqlDataSource1_Selecting">
					<DeleteParameters>
						<asp:Parameter Name="id" Type="Int32" />
					</DeleteParameters>
					<InsertParameters>
						<asp:Parameter Name="Student_ID" Type="String" />
						<asp:Parameter Name="Name" Type="String" />
						<asp:Parameter Name="UserName" Type="String" />
						
						<asp:Parameter Name="Home_District" Type="String" />
						<asp:Parameter Name="Session" Type="String" />
						<asp:Parameter DbType="Date" Name="Admission_Date" />
						<asp:Parameter DbType="Date" Name="Birth_Date" />
						<asp:Parameter Name="Gender" Type="String" />
						<asp:Parameter Name="Blood_Group" Type="String" />
						<asp:Parameter Name="Contact" Type="String" />
						<asp:Parameter Name="Email" Type="String" />
						<asp:Parameter Name="Designation" Type="String" />
						<asp:Parameter Name="Institution" Type="String" />
				  
					</InsertParameters>
					<SelectParameters>
						<asp:QueryStringParameter Name="UserName" QueryStringField="UserName" Type="String" />
					</SelectParameters>
					<UpdateParameters>
						<asp:Parameter Name="Student_ID" Type="String" />
						<asp:Parameter Name="Name" Type="String" />
						<asp:Parameter Name="UserName" Type="String" />
						
						<asp:Parameter Name="Home_District" Type="String" />
						<asp:Parameter Name="Session" Type="String" />
						<asp:Parameter DbType="Date" Name="Admission_Date" />
						<asp:Parameter DbType="Date" Name="Birth_Date" />
						<asp:Parameter Name="Gender" Type="String" />
						<asp:Parameter Name="Blood_Group" Type="String" />
						<asp:Parameter Name="Contact" Type="String" />
						<asp:Parameter Name="Email" Type="String" />
						<asp:Parameter Name="Designation" Type="String" />
						<asp:Parameter Name="Institution" Type="String" />
						
						<asp:Parameter Name="id" Type="Int32" />
					</UpdateParameters>
				</asp:SqlDataSource>
			</td>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</table>
	 </center>
		 <br/>
		
	   <br/>
		<br/>
	</div>
</asp:Content>
