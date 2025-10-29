<%@ Page language="c#" Inherits="sample.customer_pwd_details" CodeFile="customer_pwd_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>customer_pwd_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 88px; POSITION: absolute; TOP: 80px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="376px" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_id" HeaderText="Customer Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_old" HeaderText="Old Pwd"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_new" HeaderText="New Pwd"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_pwd_change_date" HeaderText=" Pwd Change Date" DataFormatString="{0:d}"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
