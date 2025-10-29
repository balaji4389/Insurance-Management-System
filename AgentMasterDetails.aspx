<%@ Page language="c#" Inherits="insurancenew.AgentMasterDetails" CodeFile="AgentMasterDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AgentMasterDetails</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label12" style="Z-INDEX: 104; LEFT: 272px; POSITION: absolute; TOP: 20px" runat="server"
				Width="108px" ForeColor="Blue" Font-Size="Medium" Font-Bold="True">Agent Details</asp:Label>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 4px; POSITION: absolute; TOP: 52px" runat="server"
				Width="724px" BorderStyle="Groove" HorizontalAlign="Center" GridLines="Horizontal" CellPadding="3"
				BackColor="White" BorderWidth="1px" BorderColor="Black" AllowPaging="True" PageSize="3" AutoGenerateColumns="False"
				Height="120px">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_phone_no" HeaderText="Phone"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_email_id" HeaderText="Email"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_dob" HeaderText="DOB" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_gender" HeaderText="Gender"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_experience" HeaderText="Exp"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
