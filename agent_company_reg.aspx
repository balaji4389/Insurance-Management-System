<%@ Page language="c#" Inherits="sample.agent_company_reg" CodeFile="agent_company_reg.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent_company_reg</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 103; LEFT: 92px; POSITION: absolute; TOP: 44px" runat="server"
				BorderStyle="Groove" BorderColor="Silver" Width="300px" Height="125px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 293px; HEIGHT: 74px" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="253px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="Small" ForeColor="White">Agent Company Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Company Id</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="150px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 1px" align="right">
							<asp:Label id="Label2" runat="server" Height="8px" Width="84px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Agent Id</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="152px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 12px">
							<asp:Button id="Button2" runat="server" Width="132px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD style="HEIGHT: 12px">
							<asp:Button id="Button1" runat="server" Height="23px" Width="152px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
                <asp:Label ID="Label3" runat="server" Text="Label" style="color: #ff00ff"></asp:Label></asp:panel>
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 104; LEFT: 48px; POSITION: absolute; TOP: 46px" runat="server"
				Width="396px" BorderColor="Black" BorderStyle="Groove" ForeColor="Black" AutoGenerateColumns="False"
				BorderWidth="1px" CellPadding="2" GridLines="Horizontal" Height="160px" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Size="Small" Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle ForeColor="Black"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Company_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_phone" HeaderText=" Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText=" Email"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select " CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
		</form>
	</body>
</HTML>
