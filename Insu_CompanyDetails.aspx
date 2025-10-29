<%@ Page language="c#" Inherits="insurancenew.Insu_CompanyDetails" CodeFile="Insu_CompanyDetails.aspx.cs" %>
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
			<asp:DataGrid id="DataGrid2" style="Z-INDEX: 101; LEFT: -4px; POSITION: absolute; TOP: 20px" runat="server"
				Width="804px" GridLines="Horizontal" CellPadding="3" BackColor="White" BorderWidth="1px" BorderColor="Black"
				AllowPaging="True" PageSize="3" AutoGenerateColumns="False" BorderStyle="Groove">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle HorizontalAlign="Center" BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle HorizontalAlign="Center" ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" HorizontalAlign="Center"
					ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_id" HeaderText=" ID"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_address" HeaderText="Address"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_email" HeaderText="E-mail"></asp:BoundColumn>
					<asp:BoundColumn DataField="comapny_phone" HeaderText="Phone No"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_fax_no" HeaderText="Fax no"></asp:BoundColumn>
					<asp:BoundColumn DataField="comapny_website_link" HeaderText="WebSite Link"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" CommandName="Select"></asp:ButtonColumn>
					<asp:EditCommandColumn ButtonType="LinkButton" UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
					<asp:ButtonColumn Text="Delete" CommandName="Delete"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:DataGrid>&nbsp;
		</form>
	</body>
</HTML>
