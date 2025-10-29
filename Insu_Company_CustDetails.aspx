<%@ Page language="c#" Inherits="insurancenew.Insu_Company_CustDetails" CodeFile="Insu_Company_CustDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<meta name="vs_showGrid" content="False">
		<title>Insu_CompanyDetails</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:DataGrid id="DataGrid2" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 208px" runat="server"
				Width="312px" GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px" BorderColor="Black"
				AllowPaging="True" PageSize="3" AutoGenerateColumns="False" BorderStyle="Groove">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle HorizontalAlign="Center" BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="cust_id" HeaderText=" Customer Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_amount" HeaderText="Policy Amount"></asp:BoundColumn>
					<asp:BoundColumn DataField="agent_id" HeaderText="Agent id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_date" HeaderText="Policy date"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_prem_amount" HeaderText="Premium Amount"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_prem_pay_mode" HeaderText="Pay Mode"></asp:BoundColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
            <asp:Panel ID="Panel1" runat="server" Height="112px" Style="z-index: 102; left: 0px;
                position: absolute; top: 72px; background-color: whitesmoke;" Width="264px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Names="Verdana" Style="z-index: 100;
                    left: 0px; position: absolute; top: 8px" Text="Select company Id" Font-Size="X-Small"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                    Style="z-index: 101; left: 152px; position: absolute; top: 8px" Width="88px">
                </asp:DropDownList>
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Verdana" Style="z-index: 102;
                    left: 0px; position: absolute; top: 56px" Text="Policy Id" Font-Size="X-Small"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Style="z-index: 103; left: 152px; position: absolute; top: 56px" AutoPostBack="True" Width="88px">
                    <asp:ListItem>SELECT</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Style="z-index: 105;
                    left: 104px; position: absolute; top: 88px" Text="Enter" />
            </asp:Panel>
		</form>
	</body>
</HTML>
