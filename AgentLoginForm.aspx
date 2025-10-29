<%@ Page language="c#" Inherits="insurancenew.AgentLoginForm" CodeFile="AgentLoginForm.aspx.cs" EnableEventValidation ="false"   %>
<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AgentLoginForm</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Label id="Label1" runat="server" style="Z-INDEX: 101; LEFT: 39px; POSITION: absolute; TOP: 84px"
				Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="Blue">New Agent Registration</asp:Label>
			<asp:Panel id="Panel1" style="Z-INDEX: 102; LEFT: 14px; POSITION: absolute; TOP: 129px" runat="server"
				BorderStyle="Ridge" Height="260px" Width="277px">
				<TABLE id="Table1" style="WIDTH: 85px; HEIGHT: 180px" cellSpacing="0" cellPadding="0" width="85"
					bgColor="#efefef" border="0">
					<TR align="center">
						<TD style="HEIGHT: 28px" bgColor="#4282b5" colSpan="2">
							<asp:Label id="Label10" runat="server" ForeColor="White" Font-Size="Small" Font-Names="Verdana"
								Font-Bold="True" Width="120px">Agent Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD>
							<asp:Label id="Label2" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="63px">Agent ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_agent_id" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD>
							<asp:Label id="Label3" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="92px">Agent Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_agent_name" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="height: 24px">
							<asp:Label id="Label4" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="60px">Address</asp:Label></TD>
						<TD style="height: 24px">
							<asp:TextBox id="txt_agent_addr" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="height: 24px">
                            &nbsp;<asp:Label id="Label5" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="72px">Phone No</asp:Label></TD>
						<TD style="height: 24px">
							<asp:TextBox id="txt_phone" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="height: 24px">
                            &nbsp;<asp:Label id="Label6" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="61px">Email ID</asp:Label></TD>
						<TD style="height: 24px">
							<asp:TextBox id="txt_email" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD>
							<asp:Label id="Label7" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="30px">DOB</asp:Label></TD>
						<TD><asp:DropDownList id="DropDownList2" runat="server" Width="48px" style="left: 40px; position: relative; top: 0px" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
                        </asp:DropDownList>
                            <asp:DropDownList id="DropDownList3" runat="server" Width="56px" style="left: 40px; position: relative; top: 0px">
                            </asp:DropDownList>
                            <asp:DropDownList id="DropDownList1" runat="server" Width="40px" style="left: -110px; position: relative; top: 0px">
                            </asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD>
							<asp:Label id="Label8" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="49px">Gender</asp:Label></TD>
						<TD>
							<asp:DropDownList id="dr_gender" runat="server" Width="156px">
                            </asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="height: 24px">
							<asp:Label id="Label9" runat="server" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True"
								Width="82px">Experience</asp:Label></TD>
						<TD style="height: 24px"><asp:DropDownList id="DropDownList4" runat="server" Width="144px" style="left: -6px; position: relative; top: 0px">
                        </asp:DropDownList></TD>
					</TR>
					<TR>
						<TD>
							<asp:Button id="Button1" runat="server" Width="108px" Text="Save" onclick="Button1_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button3" runat="server" Width="156px" Text="Back" onclick="Button3_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:Panel>
			<uc1:bannercontrol id="Bannercontrol1" runat="server"></uc1:bannercontrol>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 105; LEFT: 297px; POSITION: absolute; TOP: 293px"
				runat="server" Width="151px" Height="41px"></asp:ValidationSummary>
            <table style="left: 288px; position: relative; top: 133px">
                <tr>
                    <td style="width: 156px; height: 16px;">
                        <span style="font-size: 8pt; color: #ff66ff">No gaps ,this is your login name</span></td>
                </tr>
            </table>
							<asp:RegularExpressionValidator id="RegularExpressionValidator3" runat="server" ControlToValidate="txt_phone" ValidationExpression="\d{11}"
								ErrorMessage="enter 11 nos" style="left: 296px; position: absolute; top: 237px">Enter 11 nos</asp:RegularExpressionValidator>
							<asp:RegularExpressionValidator id="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
								ErrorMessage="enter valid email id" style="left: 295px; position: absolute; top: 261px">Enter correct E-mail Id</asp:RegularExpressionValidator>
        </form>
	</body>
</HTML>
