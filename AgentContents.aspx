<%@ Page language="c#" Inherits="insurancenew.AgentContents" CodeFile="AgentContents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AgentContents</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<script>
	//function win()
	//{
	//window.close("Agent.htm");
	//window.open("Muinfo.htm");
	//}
		</script>
	</HEAD>
	<body bgColor="#4282b5">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 4px; POSITION: absolute; TOP: 56px" runat="server"
				Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White" NavigateUrl="Muinfo.htm"
				Target="_parent">My Info</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 108px"
				runat="server" Target="main" NavigateUrl="Agent_pwd_change.aspx" ForeColor="White" Font-Size="X-Small"
				Font-Names="Verdana" Font-Bold="True" Width="112px">Password  Info</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 80px" runat="server"
				Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White" Width="148px" NavigateUrl="agent_company_reg.aspx"
				Target="main">Company Selection</asp:HyperLink>&nbsp;</form>
	</body>
</HTML>
