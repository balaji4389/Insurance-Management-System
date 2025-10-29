<%@ Page language="c#" Inherits="sample.claim_status_code_master" CodeFile="claim_status_code_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>claim_status_code_master</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 144px; POSITION: absolute; TOP: 112px"
				runat="server" GridLines="Horizontal" CellPadding="2" BackColor="White" BorderWidth="1px"
				AutoGenerateColumns="False" ForeColor="Black" BorderStyle="Groove" BorderColor="Black" Width="297px"
				Height="149px" PageSize="5" AllowPaging="True">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="status_code" HeaderText="Status Code"></asp:BoundColumn>
					<asp:BoundColumn DataField="status_description" HeaderText="Status Description"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<asp:Label id="Label12" style="Z-INDEX: 104; LEFT: 184px; POSITION: absolute; TOP: 44px" runat="server"
				Width="212px" ForeColor="Blue" Font-Size="Medium" Font-Bold="True">Policy Claim Status Details</asp:Label>
			<asp:button id="Button3" style="Z-INDEX: 103; LEFT: 324px; POSITION: absolute; TOP: 88px" runat="server"
				Width="108px" Font-Bold="True" Text="New Record" Font-Size="X-Small" Font-Names="Verdana" onclick="Button3_Click"></asp:button>
			<asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 144px; POSITION: absolute; TOP: 112px" runat="server"
				BorderStyle="Groove" BorderColor="Silver" Width="309px" Height="21px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 293px; HEIGHT: 74px" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="173px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Claim Status Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="97px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Status Code</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="150px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 1px">
							<asp:Label id="Label2" runat="server" Height="8px" Width="136px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Status Description</asp:Label></TD>
						<TD style="HEIGHT: 1px">
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="152px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 12px">
							<asp:Button id="Button2" runat="server" Height="24px" Width="145px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD style="HEIGHT: 12px">
							<asp:Button id="Button1" runat="server" Height="24px" Width="152px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana" Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
		</form>
	</body>
</HTML>
