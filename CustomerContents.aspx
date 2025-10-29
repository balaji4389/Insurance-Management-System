<%@ Page language="c#" Inherits="insurancenew.CustomerContents" CodeFile="CustomerContents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CustomerContents</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#4282b5">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 4px; POSITION: absolute; TOP: 76px" runat="server"
				NavigateUrl="customer_policies_registration.aspx" Font-Bold="True" ForeColor="White" Target="main">policy Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 104; LEFT: 0px; POSITION: absolute; TOP: 132px"
				runat="server" Target="main" ForeColor="White" Font-Bold="True" NavigateUrl="~/cust_pwd_change.aspx" 
				Width="100px">Password Info</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 8px; POSITION: absolute; TOP: 44px" runat="server"
				Target="_parent" ForeColor="White" Font-Bold="True" NavigateUrl="Cust_myinfo.htm">My Info</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 104px"
				runat="server" Target="main" ForeColor="White" Font-Bold="True" NavigateUrl="Policy_claimDetails.aspx"
				Width="140px">Policy Claim Details</asp:HyperLink>&nbsp;
		</form>
	</body>
</HTML>
