<%@ Page language="c#" Inherits="sample.policy_ref_type_field" CodeFile="policy_ref_type_field.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>policy_ref_type_field</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            &nbsp;<asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px"
                CellPadding="2" ForeColor="Black" GridLines="Horizontal" Height="84px" PageSize="5"
                Style="z-index: 101; left: 80px; position: relative; top: 48px" Width="492px">
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <AlternatingItemStyle BackColor="#EEEDEA" BorderColor="White" />
                <HeaderStyle BackColor="SteelBlue" Font-Bold="True" ForeColor="White" />
                <FooterStyle BackColor="Tan" />
                <Columns>
                    <asp:BoundColumn DataField="policy_ref_type_id" HeaderText="P_ref Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_type_field_id" HeaderText="P_ Field Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_ref_type_name" HeaderText="P_ Ref Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Policy_ref_type_desc" HeaderText="Description"></asp:BoundColumn>
                    <asp:EditCommandColumn CancelText="Cancel" EditText="Edit"
                        UpdateText="Update"></asp:EditCommandColumn>
                </Columns>
                <PagerStyle BackColor="ActiveBorder" ForeColor="DarkSlateBlue" HorizontalAlign="Center"
                    Mode="NumericPages" />
            </asp:DataGrid>
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/WebForm1.aspx" Style="left: 536px;
                position: relative; top: -142px">Back</asp:LinkButton>
			<asp:Label id="Label6" style="Z-INDEX: 104; LEFT: 208px; POSITION: absolute; TOP: 28px" runat="server"
				Width="244px" ForeColor="Blue" Font-Size="Medium" Font-Bold="True">Policy Reference Type Details</asp:Label>
			<asp:Button id="Button3" style="Z-INDEX: 103; LEFT: 380px; POSITION: absolute; TOP: 60px" runat="server"
				Width="145px" Font-Bold="True" Text="New Record" Font-Names="Verdana" Font-Size="X-Small" onclick="Button3_Click"></asp:Button>
			<asp:Panel id="Panel1" style="Z-INDEX: 102; LEFT: 164px; POSITION: absolute; TOP: 84px" runat="server"
				Height="161px" Width="236px" BorderColor="Silver" BorderStyle="Groove" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD style="HEIGHT: 24px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Width="275px" Height="12px" ForeColor="White" Font-Bold="True"
								Font-Size="Small" Font-Names="Verdana">Policy Reference Type Master</asp:Label></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 161px; HEIGHT: 17px" align="right">
							<asp:Label id="Label1" runat="server" Width="156px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Policy Ref Type  Id</asp:Label></TD>
						<TD style="HEIGHT: 17px">
							<asp:TextBox id="TextBox1" runat="server" BorderStyle="Groove" Width="152px" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 161px">
							<asp:Label id="Label4" runat="server" Width="156px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Policy Type Field Id</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" BorderStyle="Groove" Width="150px" Height="20px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 161px; HEIGHT: 21px">
							<asp:Label id="Label2" runat="server" Width="160px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Policy Ref Type Name</asp:Label></TD>
						<TD style="HEIGHT: 21px">
							<asp:TextBox id="TextBox3" runat="server" BorderStyle="Groove" Width="150px" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 161px">
							<asp:Label id="Label3" runat="server" Width="152px" Height="12px" Font-Bold="True" Font-Size="X-Small"
								Font-Names="Verdana">Policy Ref Type Desc</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox4" runat="server" BorderStyle="Groove" Width="150px" Height="20px"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 161px">
							<asp:Button id="Button2" runat="server" Width="164px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana"
								Text="Save Changes" onclick="Button2_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button1" runat="server" Width="152px" Font-Bold="True" Font-Size="X-Small" Font-Names="Verdana"
								Text="Back" onclick="Button1_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:Panel>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="RequiredFieldValidator" Style="left: 488px; position: relative;
                top: -70px">type Id</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                ErrorMessage="RequiredFieldValidator" Style="left: 440px; position: relative;
                top: -46px">type Name</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4"
                ErrorMessage="RequiredFieldValidator" Style="left: 368px; position: relative;
                top: -22px">description</asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
