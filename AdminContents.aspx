<%@ Page language="c#" Inherits="insurancenew.AdminContents" CodeFile="AdminContents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>AdminContents</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#4282b5">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 112px"
				runat="server" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small" ForeColor="White"
				NavigateUrl="insurance_company_agent.aspx" Target="main" Width="172px">Accepted Agent Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 101; LEFT: 0px; POSITION: absolute; TOP: 208px"
				runat="server" Target="main" NavigateUrl="claim_status_code_master.aspx" ForeColor="White"
				Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="152px">Claim Status Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink8" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 176px"
				runat="server" Target="main" NavigateUrl="AgentMasterDetails.aspx" ForeColor="White" Font-Size="X-Small"
				Font-Names="Verdana" Font-Bold="True">Agent Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink7" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 80px" runat="server"
				Target="main" NavigateUrl="policies_registration.aspx" ForeColor="White" Font-Size="X-Small"
				Font-Names="Verdana" Font-Bold="True" Width="140px">Policy Registration</asp:HyperLink>
			<asp:HyperLink id="HyperLink5" style="Z-INDEX: 104; LEFT: 0px; POSITION: absolute; TOP: 48px" runat="server"
				Target="main" NavigateUrl="policytype_master.aspx" ForeColor="White" Font-Size="X-Small" Font-Names="Verdana"
				Font-Bold="True" Width="132px">PolicyType Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 105; LEFT: 0px; POSITION: absolute; TOP: 16px" runat="server"
				Target="main" NavigateUrl="CompanyRegistration.aspx" ForeColor="White" Font-Size="X-Small"
				Font-Names="Verdana" Font-Bold="True" Width="164px">Company Registration</asp:HyperLink>&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink4" runat="server" Font-Bold="True" Font-Names="Verdana"
                Font-Size="X-Small" ForeColor="White" NavigateUrl="Insu_Company_CustDetails.aspx" Style="z-index: 107;
                left: 0px; position: absolute; top: 144px" Target="main">Customer Details</asp:HyperLink>
            &nbsp;&nbsp;
		</form>
	</body>
</HTML>
