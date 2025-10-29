<%@ Page language="c#" Inherits="insurancenew.WebForm1" CodeFile="WebForm1.aspx.cs" %>
<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>WebForm1</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 180px; POSITION: absolute; TOP: 88px"
				runat="server" BorderColor="Black" BorderStyle="Groove" Width="260px" AutoGenerateColumns="False"
				HorizontalAlign="Center" GridLines="Horizontal" CellPadding="3" BorderWidth="1px" AllowPaging="True"
				PageSize="3" BackColor="White" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged">
				<SelectedItemStyle Font-Bold="True" ForeColor="White" BackColor="#669999"></SelectedItemStyle>
				<EditItemStyle BackColor="White"></EditItemStyle>
				<AlternatingItemStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="Black" BackColor="#EFEFEF"></AlternatingItemStyle>
				<ItemStyle ForeColor="#000066"></ItemStyle>
				<HeaderStyle Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" ForeColor="White" BackColor="#4282B5"></HeaderStyle>
				<FooterStyle ForeColor="#000066" BackColor="White"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:TemplateColumn HeaderText="website">
						<ItemTemplate>
							<asp:HyperLink id="HyperLink1" runat="server" Font-Bold="True" >
								<%#DataBinder.Eval(Container.DataItem, "comapny_website_link")%><a href ="<%#DataBinder.Eval(Container.DataItem,"comapny_website_link")%>"></a>
							</asp:HyperLink>
						</ItemTemplate>
					</asp:TemplateColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Left" ForeColor="#000066" BackColor="White" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
		</form>
	</body>
</HTML>
