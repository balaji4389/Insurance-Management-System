<%@ Page language="c#" Inherits="sample.agent_customer_details" CodeFile="agent_customer_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent_customer_details</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 12px; POSITION: absolute; TOP: 24px" runat="server"
				Width="696px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_policy_no" HeaderText="Customer policy No"></asp:BoundColumn>
					<asp:BoundColumn DataField="cust_name" HeaderText="Customer Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_name" HeaderText="Policy Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_date" HeaderText="Policy Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_amount" HeaderText="Policy Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_amount" HeaderText=" Premium Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_prem_pay_mode" HeaderText=" Pay Mode"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_prem_months" HeaderText="Premium Months"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_status" HeaderText="Nominee Status"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:datagrid>&nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="left: 371px;
                position: relative; top: -14px" Text="dependent details" /></form>
	</body>
</HTML>
