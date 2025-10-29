<%@ Page language="c#" Inherits="sample.customer_prem_details" CodeFile="customer_prem_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<script runat="server">

   
</script>

<HTML>
	<HEAD>
		<title>customer_prem_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 72px; POSITION: absolute; TOP: 96px" runat="server"
				AutoGenerateColumns="False" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Width="520px" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_policy_no" HeaderText="Customer Policy No"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_amount" HeaderText="Policy Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_amount" HeaderText=" Premium Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_pay_mode" HeaderText=" Pay Mode"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_months" HeaderText=" Premium  Months"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_status" HeaderText="Nomines Status"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
		</form>
	</body>
</HTML>
