<%@ Page language="c#" Inherits="insurancenew.CustomerDetails" CodeFile="CustomerDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CustomerDetails</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid2" style="Z-INDEX: 101; LEFT: 4px; POSITION: absolute; TOP: 68px" runat="server"
				BorderStyle="Groove" AutoGenerateColumns="False" PageSize="3" AllowPaging="True" BorderColor="Black"
				BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" Width="804px">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle HorizontalAlign="Center" BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_id" HeaderText="ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_dob" HeaderText="Dob" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_email_id" HeaderText="E-mail"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_marital_status" HeaderText="MaritalStatus"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_gender" HeaderText="Gender"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 252px; POSITION: absolute; TOP: 24px" runat="server"
				Width="154px" ForeColor="Blue" Font-Bold="True" Font-Names="Verdana" Font-Size="Small"
				Font-Underline="True">Customer Details</asp:Label>
		</form>
	</body>
</HTML>
