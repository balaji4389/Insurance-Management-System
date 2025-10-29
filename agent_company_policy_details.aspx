<%@ Page language="c#" Inherits="sample.agent_company_policy_details" CodeFile="agent_company_policy_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent_company_policy_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 24px; POSITION: absolute; TOP: 40px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="389px" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged" Height="143px">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select " CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;&nbsp;
		</form>
	</body>
</HTML>
