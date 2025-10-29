<%@ Page language="c#" Inherits="insurancenew.Cust_myinfo_contents" CodeFile="Cust_myinfo_contents.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Cust_myinfo_contents</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body bgColor="#4282b5">
		<form id="Form1" method="post" runat="server">
			<asp:HyperLink id="HyperLink1" style="Z-INDEX: 100; LEFT: 8px; POSITION: absolute; TOP: 104px"
				runat="server" NavigateUrl="customer_regestration_details.aspx" Target="main" Width="208px"
				ForeColor="White" Font-Bold="True">Customer Registration Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink4" style="Z-INDEX: 101; LEFT: 8px; POSITION: absolute; TOP: 168px"
				runat="server" NavigateUrl="customer_pwd_details.aspx" Target="main" Width="176px" ForeColor="White" Font-Bold="True">Password Change Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink3" style="Z-INDEX: 102; LEFT: 8px; POSITION: absolute; TOP: 72px" runat="server"
				NavigateUrl="customer_prem_details.aspx" Target="main" ForeColor="White" Font-Bold="True">Premium Details</asp:HyperLink>
			<asp:HyperLink id="HyperLink2" style="Z-INDEX: 103; LEFT: 8px; POSITION: absolute; TOP: 40px" runat="server"
				NavigateUrl="customer_company_details.aspx" Target="main" Width="128px" ForeColor="White" Font-Bold="True">Company Details</asp:HyperLink>&nbsp;&nbsp;<asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" ForeColor="White"
                OnClick="LinkButton1_Click" Style="left: -8px; position: relative; top: 0px">Back</asp:LinkButton>
            <asp:HyperLink ID="HyperLink6" runat="server" ForeColor="White" NavigateUrl="Cust_Payments.aspx"
                Style="z-index: 106; left: 8px; position: absolute; top: 136px" Target="main"
                Width="160px" Font-Bold="True">Online Payments</asp:HyperLink>
            &nbsp;
		</form>
	</body>
</HTML>
