<%@ Page language="c#" Inherits="sample.coustomer_policy_details" CodeFile="coustomer_policy_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>coustomer_policy_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 20px; POSITION: absolute; TOP: 60px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="476px" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_id" HeaderText="Policy Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_name" HeaderText="Policy Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_value" HeaderText=" Min Val"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_value" HeaderText=" Max Val"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_age_limit" HeaderText="Min Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_age_limit" HeaderText=" Max Age"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
		</form>
	</body>
</HTML>
