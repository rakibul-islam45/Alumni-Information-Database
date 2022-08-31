<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdminView.aspx.cs" Inherits="Alumni_Info.AdminView" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
	
		
	   
		<asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="152px" ShowFooter="True" Width="1114px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
			<Columns>
				<asp:CommandField ShowDeleteButton="True" />
				<asp:TemplateField HeaderText="id" InsertVisible="False" SortExpression="id">
					<EditItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label1" runat="server" Text='<%# Bind("id") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:LinkButton ID="lbtnInsert" OnClick="lbtnInsert_Click" ValidationGroup="Insert" runat="server" Font-Bold="True">Insert</asp:LinkButton>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Student_ID" SortExpression="Student_ID">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Student_ID") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvid" runat="server" ErrorMessage="Student ID is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox1"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label2" runat="server" Text='<%# Bind("Student_ID") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Estd_id" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEstd_id" runat="server" ErrorMessage="Student ID is required" ForeColor="Red" Text="*"
							 ControlToValidate="Estd_id"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Name" SortExpression="Name">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvname" runat="server" ErrorMessage="Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label3" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Ename" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEname" runat="server" ErrorMessage="Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="Ename"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="UserName" SortExpression="UserName">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("UserName") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvuesrname" runat="server" ErrorMessage="User Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label4" runat="server" Text='<%# Bind("UserName") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Eusername" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEusername" runat="server" ErrorMessage="User Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="Eusername"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				 <asp:TemplateField HeaderText="Password" SortExpression="Password">
					<EditItemTemplate>
						<asp:TextBox ID="Editpassword" runat="server" TextMode="password" Text='<%# Bind("Password") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvpassword" runat="server" ErrorMessage="Password required" ForeColor="Red" Text="*"
							 ControlToValidate="Editpassword"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Labelp" runat="server" Text='<%# Bind("Password") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Epassword" runat="server" TextMode="password"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEpassword" runat="server" ErrorMessage="Password required" ForeColor="Red" Text="*"
							 ControlToValidate="Epassword"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Home_District" SortExpression="Home_District">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Home_District") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvdist" runat="server" ErrorMessage="District Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label5" runat="server" Text='<%# Bind("Home_District") %>'></asp:Label>

					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Edistrict" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEdist" runat="server" ErrorMessage="District Name is required" ForeColor="Red" Text="*"
							 ControlToValidate="Edistrict"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Session" SortExpression="Session">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Session") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvsession" runat="server" ErrorMessage="Session is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label6" runat="server" Text='<%# Bind("Session") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Esession" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEsession" runat="server" ErrorMessage="Session is required" ForeColor="Red" Text="*"
							 ControlToValidate="Esession"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Admission_Date" SortExpression="Admission_Date">
					<EditItemTemplate>
						 <asp:TextBox ID="Edit_ad_date" runat="server" Text='<%# Bind("Admission_Date", "{0:yyyy-MM-dd}") %>'  TextMode="Date"></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label7" runat="server" Text='<%# Bind("Admission_Date") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Ead_date" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Birth_Date" SortExpression="Birth_Date">
					<EditItemTemplate>
					   <asp:TextBox ID="Edit_birth_date" runat="server" Text='<%# Bind("Birth_Date", "{0:yyyy-MM-dd}") %>' TextMode="Date" ></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label8" runat="server" Text='<%# Bind("Birth_Date") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Ebirth_date" runat="server" Text='<%# Bind("DateofBirth", "{0:yyyy-MM-dd}") %>' TextMode="Date"></asp:TextBox>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Gender" SortExpression="Gender">
					<EditItemTemplate>
						<asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("Gender") %>'>
							<asp:ListItem>Male</asp:ListItem>
						<asp:ListItem>Female</asp:ListItem>
						<asp:ListItem>Other</asp:ListItem>
						</asp:DropDownList>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label9" runat="server" Text='<%# Bind("Gender") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						 <asp:DropDownList ID="Egender" runat="server" >
							  <asp:ListItem>Male</asp:ListItem>
						<asp:ListItem>Female</asp:ListItem>
						<asp:ListItem>Other</asp:ListItem>
						</asp:DropDownList>
					</FooterTemplate>
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
					<ItemTemplate>
						<asp:Label ID="Label10" runat="server" Text='<%# Bind("Blood_Group") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:DropDownList ID="E_bgroup" runat="server">
							 <asp:ListItem>A+</asp:ListItem>
						<asp:ListItem>A-</asp:ListItem>
						<asp:ListItem>B+</asp:ListItem>
						<asp:ListItem>B-</asp:ListItem>
						<asp:ListItem>O+</asp:ListItem>
						<asp:ListItem>O-</asp:ListItem>
						<asp:ListItem>AB+</asp:ListItem>
						<asp:ListItem>AB-</asp:ListItem>
						</asp:DropDownList>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Contact" SortExpression="Contact">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox10" runat="server" Text='<%# Bind("Contact") %>'></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label11" runat="server" Text='<%# Bind("Contact") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Econtact" runat="server"></asp:TextBox>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Email" SortExpression="Email">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox11" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
						<asp:RequiredFieldValidator ID="rfvemail" runat="server" ErrorMessage="Email is required" ForeColor="Red" Text="*"
							 ControlToValidate="TextBox11"></asp:RequiredFieldValidator>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label12" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="E_email" runat="server"></asp:TextBox>
						<asp:RequiredFieldValidator ValidationGroup="Insert" ID="rfvEemail" runat="server" ErrorMessage="Email is required" ForeColor="Red" Text="*"
							 ControlToValidate="E_email"></asp:RequiredFieldValidator>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Designation" SortExpression="Designation">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox12" runat="server" Text='<%# Bind("Designation") %>'></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label13" runat="server" Text='<%# Bind("Designation") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Edesignation" runat="server"></asp:TextBox>
					</FooterTemplate>
				</asp:TemplateField>
				<asp:TemplateField HeaderText="Institution" SortExpression="Institution">
					<EditItemTemplate>
						<asp:TextBox ID="TextBox13" runat="server" Text='<%# Bind("Institution") %>'></asp:TextBox>
					</EditItemTemplate>
					<ItemTemplate>
						<asp:Label ID="Label14" runat="server" Text='<%# Bind("Institution") %>'></asp:Label>
					</ItemTemplate>
					<FooterTemplate>
						<asp:TextBox ID="Einstitution" runat="server"></asp:TextBox>
					</FooterTemplate>
				</asp:TemplateField>
				

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
		<asp:ValidationSummary ValidationGroup="Insert" ID="ValidationSummary1" ForeColor="Red" runat="server" />
		<asp:ValidationSummary  ID="ValidationSummary2" ForeColor="Red" runat="server" />
		<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:AlumniConnectionString %>"
			 DeleteCommand="DELETE FROM [register1] WHERE [id] = @id" 
			InsertCommand="INSERT INTO [register1] ([Student ID], [Name], [UserName],[Password], [Home District], [Session], [Admission Date], [Birth Date], [Gender], [Blood Group], [Contact], [Email], [Designation], [Institution]) VALUES (@Student_ID, @Name, @UserName,@Password, @Home_District, @Session, @Admission_Date, @Birth_Date, @Gender, @Blood_Group, @Contact, @Email, @Designation, @Institution)" 
			SelectCommand="SELECT [id], [Student ID] AS Student_ID, [Name], [UserName], [Password], [Home District] AS Home_District, [Session], [Admission Date] AS Admission_Date, [Birth Date] AS Birth_Date, [Gender], [Blood Group] AS Blood_Group, [Contact], [Email], [Designation], [Institution] FROM [register1]" 
			UpdateCommand="UPDATE [register1] SET [Student ID] = @Student_ID, [Name] = @Name, [UserName] = @UserName, [Password] = @Password, [Home District] = @Home_District, [Session] = @Session, [Admission Date] = @Admission_Date, [Birth Date] = @Birth_Date, [Gender] = @Gender, [Blood Group] = @Blood_Group, [Contact] = @Contact, [Email] = @Email, [Designation] = @Designation, [Institution] = @Institution WHERE [id] = @id">
			<DeleteParameters>
				<asp:Parameter Name="id" Type="Int32" />
			</DeleteParameters>
			<InsertParameters>
				<asp:Parameter Name="Student_ID" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="UserName" Type="String" />
				  <asp:Parameter Name="Password" Type="String" />
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
			<UpdateParameters>
				<asp:Parameter Name="Student_ID" Type="String" />
				<asp:Parameter Name="Name" Type="String" />
				<asp:Parameter Name="UserName" Type="String" />
				<asp:Parameter Name="Password" Type="String" />
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
		<br />
	
</asp:Content>
