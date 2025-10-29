<%@ Page language="c#" Inherits="insurancenew.LoginForm" CodeFile="LoginForm.aspx.cs" EnableEventValidation ="false"  %>
<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>LoginForm</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 124px; POSITION: absolute; TOP: 97px" runat="server"
				BorderStyle="Groove" BorderColor="Silver" Width="309px" Height="172px">
				<TABLE id="Table1" style="WIDTH: 300px; HEIGHT: 156px" cellSpacing="1" cellPadding="0"
					width="300" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="192px" Font-Size="Small" Font-Names="Verdana"
								Font-Bold="True" ForeColor="White">Security Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="92px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Customer ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cust_id" runat="server" Height="20px" Width="150px" BorderStyle="Groove"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ControlToValidate="txt_pwd_old" ErrorMessage="enter password">*</asp:RequiredFieldValidator>
							<asp:Label id="Label2" runat="server" Height="12px" Width="66px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Password</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd_old" runat="server" Height="20px" Width="150px" BorderStyle="Groove" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
                            &nbsp;
							<asp:CompareValidator id="CompareValidator1" runat="server" ControlToValidate="txt_pwd_new" ErrorMessage="re enter correctly"
								ControlToCompare="txt_pwd_old" style="z-index: 100; left: 0px; position: absolute; top: 80px">*</asp:CompareValidator>
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Reenter Password</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd_new" runat="server" Height="20px" Width="150px" BorderStyle="Groove" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 163px">
							<asp:Label id="Label4" runat="server" Height="12px" Width="143px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Pwd  Assigned Date</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_date" runat="server" Height="20px" Width="150px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 163px" colSpan="2">
							<asp:Button id="Button2" runat="server" Width="296px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>&nbsp;
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 102; LEFT: 206px; POSITION: absolute; TOP: 289px"
				runat="server"></asp:ValidationSummary>
            <uc1:bannercontrol ID="Bannercontrol1" runat="server" />
		</form>
	</body>
</HTML>
