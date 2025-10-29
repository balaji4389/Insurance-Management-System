<%@ Page language="c#" Inherits="sample.customer_company_details" CodeFile="customer_company_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>customer_company_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 28px; POSITION: absolute; TOP: 28px" runat="server"
				Width="456px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_address" HeaderText=" Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText=" Phone No"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
