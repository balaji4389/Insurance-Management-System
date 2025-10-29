<%@ Page language="c#" Inherits="sample.Customer_nominees_details" CodeFile="Customer_nominees_details.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Customer_nominees_details</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 88px; POSITION: absolute; TOP: 84px" runat="server"
				Width="504px" ForeColor="Black" GridLines="Horizontal" CellPadding="2" BorderWidth="1px" BorderStyle="Groove"
				BorderColor="Black" AutoGenerateColumns="False" PageSize="5" AllowPaging="True">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="nominee_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_address" HeaderText=" Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="Nominee_dob" HeaderText=" DoB" DataFormatString="{o:d}"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_email" HeaderText=" MailID"></asp:BoundColumn>
					<asp:BoundColumn DataField="nominee_relationaship" HeaderText=" Relationship"></asp:BoundColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:Label id="Label6" style="Z-INDEX: 102; LEFT: 232px; POSITION: absolute; TOP: 40px" runat="server"
				ForeColor="Blue" Width="152px" Font-Bold="True" Font-Size="Medium" Font-Names="Arial">Nominee Details</asp:Label>
		</form>
	</body>
</HTML>
