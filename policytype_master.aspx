<%@ Page language="c#" Inherits="sample.policytype_master" CodeFile="policytype_master.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>policytype_master</title>
		<meta name="vs_showGrid" content="False">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 101; LEFT: 168px; POSITION: absolute; TOP: 100px" runat="server"
				Visible="False" BorderStyle="Groove" BorderColor="Silver" Width="236px" Height="161px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="173px" ForeColor="White" Font-Bold="True"
								Font-Names="Verdana" Font-Size="Small">Policy Type Master</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="140px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Policy Type Field Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="150px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px">
							<asp:Label id="Label2" runat="server" Height="12px" Width="136px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Policy Type Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="150px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 153px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small">Policy Type Desc</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox3" runat="server" Height="20px" Width="150px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 153px">
							<asp:Button id="Button2" runat="server" Width="145px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button1" runat="server" Width="145px" Font-Bold="True" Font-Names="Verdana"
								Font-Size="X-Small" Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
			<asp:Label id="Label4" style="Z-INDEX: 104; LEFT: 244px; POSITION: absolute; TOP: 28px" runat="server"
				Width="152px" Font-Size="Medium" Font-Bold="True" ForeColor="Blue">Policy Type Details</asp:Label><asp:button id="Button3" style="Z-INDEX: 103; LEFT: 340px; POSITION: absolute; TOP: 76px" runat="server"
				Width="145px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Text="New Record" onclick="Button3_Click"></asp:button>
            <asp:datagrid id="DataGrid1" style="Z-INDEX: 102; LEFT: 132px; POSITION: absolute; TOP: 100px"
				runat="server" BorderStyle="Groove" BorderColor="Black" Width="416px" Height="84px" 
                ForeColor="Black" GridLines="Horizontal" CellPadding="2" BackColor="White" 
                BorderWidth="1px" AutoGenerateColumns="False"
				PageSize="5" AllowPaging="True" 
                onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<FooterStyle BackColor="Tan"></FooterStyle>
				<Columns>
					<asp:BoundColumn DataField="policy_type_field_id" HeaderText="PolicyType Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_type_field_name" HeaderText=" Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_type_field_desc" HeaderText="Description"></asp:BoundColumn>
					<asp:EditCommandColumn UpdateText="Update" CancelText="Cancel" EditText="Edit"></asp:EditCommandColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="ActiveBorder" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx" Style="left: 504px;
                position: relative; top: 64px">Back</asp:LinkButton></form>
	</body>
</HTML>
