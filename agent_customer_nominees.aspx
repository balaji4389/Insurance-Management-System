<%@ Page language="c#" Inherits="sample.agent_customer_nomines" CodeFile="agent_customer_nominees.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent_customer_nomines</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 28px; POSITION: absolute; TOP: 36px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="544px" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="nominee_name" HeaderText="Nominee Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_email" HeaderText="E-mail"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_relationaship" HeaderText="Relation"></asp:BoundColumn>
					<asp:BoundColumn DataField="custo_policy_no" HeaderText="Cust_ policy No"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
