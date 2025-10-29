<%@ Page language="c#" Inherits="insurancenew.MyinfoContents" CodeFile="MyinfoContents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>MyinfoContents</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#4282b5">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 44px" runat="server"
				ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Width="140px" NavigateUrl="agent_regrstration_details.aspx"
				Target="main">Agent Registration</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 104; LEFT: 0px; POSITION: absolute; TOP: 104px"
				runat="server" ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small"
				Width="172px" NavigateUrl="agent_customer_details.aspx" Target="main">Agent Customer Details</asp:HyperLink>
            &nbsp;
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 76px" runat="server"
				ForeColor="White" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" Width="128px" NavigateUrl="agent_company_policy_details.aspx"
				Target="main">Company Policies</asp:HyperLink>&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White"
                OnClick="LinkButton1_Click" Style="left: -28px; position: relative; top: 1px">Back</asp:LinkButton>
            
		</form>
	</body>
</HTML>
