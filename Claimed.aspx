<%@ Page language="c#" Inherits="insurancenew.Policy_claimDetails" CodeFile="Policy_claimDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Policy_claimDetails</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid2" style="Z-INDEX: 100; LEFT: 92px; POSITION: absolute; TOP: 76px" runat="server"
				HorizontalAlign="Center" GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px"
				BorderColor="Black" AllowPaging="True" PageSize="3" AutoGenerateColumns="False" BorderStyle="Groove"
				Width="384px" onselectedindexchanged="DataGrid2_SelectedIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="status_code" HeaderText="Claim Status Code"></asp:BoundColumn>
					<asp:BoundColumn DataField="status_description" HeaderText="Description"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
			<asp:Label id="Label12" style="Z-INDEX: 104; LEFT: 188px; POSITION: absolute; TOP: 36px" runat="server"
				Width="216px" Font-Size="Medium" Font-Bold="True" ForeColor="Blue">Policy Claim Status Details</asp:Label><asp:panel id="Panel2" style="Z-INDEX: 103; LEFT: 140px; POSITION: absolute; TOP: 72px" runat="server"
				Width="304px" BorderStyle="Groove" BorderColor="Silver" Visible="False" Height="101px">
				<TABLE id="Table2" style="WIDTH: 293px; HEIGHT: 74px" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label15" runat="server" Width="173px" ForeColor="White" Font-Bold="True" Font-Size="Small"
								Height="12px" Font-Names="Verdana">Policy Information</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 12px" align="right">
							<asp:Label id="Label13" runat="server" Width="92px" Font-Bold="True" Font-Size="X-Small" Height="8px"
								Font-Names="Verdana">Policy Name</asp:Label></TD>
						<TD style="HEIGHT: 12px">
							<asp:DropDownList id="dr_policy_name" runat="server" Width="152px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana"></asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 12px" align="right" colSpan="2">
							<asp:Button id="Button4" runat="server" Width="292px" Font-Bold="True" Font-Size="X-Small" Height="24px"
								Font-Names="Verdana" Text="Enter Policy Information" onclick="Button4_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 128px; POSITION: absolute; TOP: 72px" runat="server"
				Width="325px" BorderStyle="Ridge" Visible="False" Height="208px">
				<TABLE id="Table1" style="WIDTH: 316px; HEIGHT: 192px" cellSpacing="0" cellPadding="0"
					width="316" bgColor="#efefef" border="0">
					<TR align="center">
						<TD style="HEIGHT: 28px" bgColor="#4282b5" colSpan="2">
							<asp:Label id="Label1" runat="server" Width="170px" ForeColor="White" Font-Bold="True" Font-Size="Small"
								Font-Names="Verdana">Policy Claim Details</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px">
							<asp:Label id="Label2" runat="server" Width="63px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Claim ID</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_claim_id" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px">
							<asp:Label id="Label3" runat="server" Width="144px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Status Description</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_status_code" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px">
							<asp:Label id="Label4" runat="server" Width="166px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Customer Policy Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_cust_policy_name" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px">
							<asp:Label id="Label5" runat="server" Width="103px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Date of Claim</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_date_claim" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px">
							<asp:Label id="Label6" runat="server" Width="120px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Amount Claimed</asp:Label></TD>
						<TD>
							<asp:TextBox id="txt_amount_claimed" runat="server"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 166px; HEIGHT: 25px">
							<asp:Label id="Label7" runat="server" Width="72px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana">Status Bit</asp:Label></TD>
						<TD style="HEIGHT: 25px">
							<asp:TextBox id="txt_status_bit" runat="server" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 166px; HEIGHT: 29px">
							<asp:Button id="Button1" runat="server" Width="156px" Text="Save" onclick="Button1_Click"></asp:Button></TD>
						<TD style="HEIGHT: 29px">
							<asp:Button id="Button3" runat="server" Width="156px" Text="Back"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel></form>
	</body>
</HTML>
