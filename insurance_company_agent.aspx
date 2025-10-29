<%@ Page language="c#" Inherits="sample.insurance_company_agent" CodeFile="insurance_company_agent.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>insurance_company_agent</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 168px; POSITION: absolute; TOP: 48px"
				runat="server" AutoGenerateColumns="False" BorderWidth="1px" BackColor="White" CellPadding="2"
				GridLines="Horizontal" ForeColor="Black" Height="173px" Width="336px" BorderColor="Black"
				BorderStyle="Groove" PageSize="5" AllowPaging="True" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText="Company Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_accepted_date" HeaderText="Accepted Date" DataFormatString="{0:d}"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="Select Agent" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>
			<asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 188px; POSITION: absolute; TOP: 48px" runat="server"
				Height="161px" Width="292px" BorderColor="Silver" BorderStyle="Groove" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="213px" Height="12px" ForeColor="White" Font-Size="Small"
								Font-Names="Verdana" Font-Bold="True">Accepted Agent Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px">
							<asp:Label id="Label1" runat="server" Width="92px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Company Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox1" runat="server" BorderStyle="Groove" Width="150px" Height="20px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px; HEIGHT: 1px">
							<asp:Label id="Label2" runat="server" Width="72px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Agent Id</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox2" runat="server" BorderStyle="Groove" Width="150px" Height="20px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px">
							<asp:Label id="Label3" runat="server" Width="132px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Accepted Date</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox3" runat="server" BorderStyle="Groove" Width="150px" Height="20px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 153px">
							<asp:Button id="Button2" runat="server" Width="145px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button1" runat="server" Width="148px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
