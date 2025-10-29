<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx"  %>
<%@ Page language="c#" Inherits="insurancenew.agent_login" CodeFile="agent login.aspx.cs" EnableEventValidation ="false"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>agent login</title>
		<meta name="vs_showGrid" content="False">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 104px; POSITION: absolute; TOP: 160px" runat="server"
				Height="164px" Width="317px" BorderColor="Silver" BorderStyle="Groove">
				<TABLE id="Table1" style="WIDTH: 308px; HEIGHT: 143px" cellSpacing="1" cellPadding="0"
					width="308" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="192px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Names="Verdana" Font-Size="Small">Security Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 150px">
							<asp:Label id="Label1" runat="server" Width="92px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Agent Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_agent_id" runat="server" BorderStyle="Groove" Width="150px" Height="20px"
								ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 150px">
							<asp:Label id="Label2" runat="server" Width="66px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Password</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_pwd_old" runat="server" BorderStyle="Groove" Width="150px" Height="20px" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 150px; HEIGHT: 10px">
							<asp:Label id="Label3" runat="server" Width="133px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" style="left: 0px; position: relative; top: 8px">Reenter Password</asp:Label>
                            <asp:CompareValidator id="CompareValidator2" runat="server" Width="6px" ControlToValidate="txt_pwd_new"
								ControlToCompare="txt_pwd_old" ErrorMessage="Re enter password" style="left: -134px; position: relative; top: -6px">*</asp:CompareValidator>
							</TD>
						<TD style="HEIGHT: 10px">
							<asp:TextBox id="txt_pwd_new" runat="server" BorderStyle="Groove" Width="152px" Height="20px" TextMode="Password"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 150px">
							<asp:Label id="Label4" runat="server" Width="140px" Height="12px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Pwd  Assigned Date</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_date" runat="server" BorderStyle="Groove" Width="150px" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 163px" colSpan="2">
							<asp:Button id="Button2" runat="server" Width="304px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label6" style="Z-INDEX: 102; LEFT: 176px; POSITION: absolute; TOP: 112px" runat="server"
				Font-Size="Medium" Font-Names="Arial" Font-Bold="True" ForeColor="Blue">Assigning Password</asp:Label>
            <uc1:bannercontrol ID="Bannercontrol1" runat="server" />
        </form>
	</body>
</HTML>
