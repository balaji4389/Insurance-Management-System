<%@ Page language="c#" Inherits="insurancenew.NomineeDetails" CodeFile="NomineeDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>NomineeDetails</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid2" style="Z-INDEX: 101; LEFT: -8px; POSITION: absolute; TOP: 88px" runat="server"
				BorderStyle="Groove" Width="804px" AutoGenerateColumns="False" PageSize="3" AllowPaging="True"
				BorderColor="Black" BorderWidth="1px" BackColor="White" CellPadding="3" GridLines="Horizontal" onselectedindexchanged="DataGrid2_SelectedIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle HorizontalAlign="Center" BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="nominee_id" HeaderText="ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_name" HeaderText="Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_dob" HeaderText="Dob" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_email" HeaderText="E-mail ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_relationaship" HeaderText="Relationship"></asp:BoundColumn>
					<asp:BoundColumn DataField="custo_policy_no" HeaderText="Policy No"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label1" style="Z-INDEX: 102; LEFT: 236px; POSITION: absolute; TOP: 40px" runat="server"
				Width="168px" ForeColor="#0000C0" Font-Bold="True" Font-Size="Large">Nominee Details</asp:Label>
		</form>
	</body>
</HTML>
