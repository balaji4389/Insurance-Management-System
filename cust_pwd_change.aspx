<%@ Page language="c#" Inherits="insurancenew.cust_pwd_change" CodeFile="cust_pwd_change.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Agent_pwd_change</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 72px; POSITION: absolute; TOP: 32px" runat="server"
				Height="150px" Width="297px" BorderColor="Silver" BorderStyle="Groove">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="192px" Height="12px" Font-Size="Small" Font-Names="Verdana"
								Font-Bold="True" ForeColor="White">Security Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:Label id="Label1" runat="server" Width="92px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Customer Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_agent_id" runat="server" BorderStyle="Groove" Width="150px" Height="20px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="enter old password" ControlToValidate="txt_pwd_old">*</asp:RequiredFieldValidator>
							<asp:Label id="Label2" runat="server" Width="103px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Old Password</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd_old" runat="server" BorderStyle="Groove" Width="150px" Height="20px" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="enter new password" ControlToValidate="txt_pwd_new">*</asp:RequiredFieldValidator>
							<asp:Label id="Label3" runat="server" Width="108px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">New Password</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd_new" runat="server" BorderStyle="Groove" Width="150px" Height="20px" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:Label id="Label4" runat="server" Width="129px" Height="12px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Pwd  Change Date</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_date" runat="server" BorderStyle="Groove" Width="150px" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 163px" colSpan="2">
							<asp:Button id="Button2" runat="server" Width="288px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 102; LEFT: 88px; POSITION: absolute; TOP: 216px"
				runat="server" Height="40px"></asp:ValidationSummary>
		</form>
	</body>
</HTML>
