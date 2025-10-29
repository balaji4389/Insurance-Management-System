<%@ Page language="c#" Inherits="sample.agent_regrstration_details" CodeFile="agent_regrstration_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent_regrstration_details</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 100; LEFT: 12px; POSITION: absolute; TOP: 36px" runat="server"
				Width="541px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_address" HeaderText=" address"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_phone_no" HeaderText="Phone No" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_email_id" HeaderText=" EmailId"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_dob" HeaderText=" DoB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_gender" HeaderText=" Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_experience" HeaderText=" Exper"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
		</form>
	</body>
</HTML>
