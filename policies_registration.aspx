<%@ Page language="c#" Inherits="sample.policies_registration" CodeFile="policies_registration.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>policies_registration</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox10"
                ErrorMessage="RequiredFieldValidator" Style="left: 333px; position: absolute;
                top: 344px">description</asp:RequiredFieldValidator>
			<asp:Label id="Label12" style="Z-INDEX: 104; LEFT: 223px; POSITION: absolute; TOP: 24px" runat="server"
				ForeColor="Blue" Width="212px" Font-Bold="True" Font-Size="Medium">Policy Registration Details</asp:Label><asp:button id="Button3" style="Z-INDEX: 103; LEFT: 72px; POSITION: absolute; TOP: 80px" runat="server"
				Width="108px" Font-Names="Verdana" Font-Size="X-Small" Font-Bold="True" Text="New Record" onclick="Button3_Click"></asp:button><asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 22px; POSITION: absolute; TOP: 113px" runat="server"
				Width="236px" BorderColor="Silver" BorderStyle="Groove" Height="161px" Visible="False">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" ForeColor="White" Width="192px" Font-Size="Small"
								Font-Bold="True" Font-Names="Verdana">Policy Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px; height: 22px;">
							<asp:Label id="Label1" runat="server" Height="12px" Width="96px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Id</asp:Label></TD>
						<TD style="height: 22px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" BorderStyle="Groove" Width="136px" ReadOnly="True" ></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="96px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Name</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox2" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Launched</asp:Label></TD>
						<TD>
                            <asp:TextBox ID="TextBox3" runat="server" Width="135px"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 162px; HEIGHT: 21px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="124px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Type Field</asp:Label></TD>
						<TD style="HEIGHT: 21px">
							<asp:DropDownList id="dr_policy_type" runat="server" Width="134px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana"></asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px; height: 22px;" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="156px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Min Value</asp:Label></TD>
						<TD style="height: 22px">
							<asp:TextBox id="TextBox5" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="TextBox5_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="124px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Max Value</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox6" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px; height: 22px;" align="right">
							<asp:Label id="Label8" runat="server" Height="12px" Width="145px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Min Age Limit</asp:Label></TD>
						<TD style="height: 22px">
							<asp:TextBox id="TextBox7" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="TextBox7_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px" align="right">
							<asp:Label id="Label9" runat="server" Height="12px" Width="153px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Max Age Limit</asp:Label></TD>
						<TD>
							<asp:TextBox id="TextBox8" runat="server" Height="20px" BorderStyle="Groove" Width="136px" OnTextChanged="TextBox8_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px; HEIGHT: 1px" align="right">
							<asp:Label id="Label10" runat="server" Height="12px" Width="152px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Company Id</asp:Label></TD>
						<TD style="HEIGHT: 1px">
                            &nbsp;
                            <asp:DropDownList ID="dr_company_id" runat="server" Style="z-index: 102;
                                left: 160px; position: absolute; top: 200px" Width="136px">
                            </asp:DropDownList>
                        </TD>
					</TR>
					<TR>
						<TD style="WIDTH: 162px; height: 22px;" align="right">
							<asp:Label id="Label11" runat="server" Height="12px" Width="148px" Font-Size="X-Small" Font-Bold="True"
								Font-Names="Verdana">Policy Description</asp:Label></TD>
						<TD style="height: 22px">
							<asp:TextBox id="TextBox10" runat="server" Height="20px" BorderStyle="Groove" Width="136px"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 162px">
							<asp:Button id="Button1" runat="server" Width="149px" Font-Size="X-Small" Font-Bold="True" Text="Save Changes"
								Font-Names="Verdana" onclick="Button1_Click"></asp:Button></TD>
						<TD>
							<asp:Button id="Button2" runat="server" Width="134px" Font-Size="X-Small" Font-Bold="True" Text="Back"
								Font-Names="Verdana" onclick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
            &nbsp;<asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="RangeValidator" MaximumValue="1000000" MinimumValue="5000" Style="left: 329px;
                position: absolute; top: 228px" Type="Integer" Width="103px">5000-1000000</asp:RangeValidator>
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RangeValidator ID="RangeValidator5" runat="server" ControlToValidate="TextBox3"
                ErrorMessage="RangeValidator" MaximumValue="1/4/2007" MinimumValue="1/1/1990"
                Style="left: 331px; position: absolute; top: 186px" Type="Date">Invalid date</asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox6"
                ErrorMessage="RangeValidator" MaximumValue="20000000" MinimumValue="1000000" Style="left: 332px;
                position: absolute; top: 255px" Type="Double">1000000-20000000</asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox7"
                ErrorMessage="RangeValidator" MaximumValue="25" MinimumValue="1" Style="left: 333px;
                position: absolute; top: 278px" Type="Integer">1-25</asp:RangeValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="TextBox8"
                ErrorMessage="RangeValidator" MaximumValue="50" MinimumValue="15" Style="left: 330px;
                position: absolute; top: 302px" Type="Integer">15-50</asp:RangeValidator>
            &nbsp;&nbsp;
            <asp:Panel ID="Panel2" runat="server" ForeColor="Red" Height="50px" Style="left: 330px;
                position: absolute; top: 174px" Width="125px">
                Date format is
                <br />
                MM/DD/YYYY</asp:Panel>
            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                BackColor="White" BorderColor="Black" BorderStyle="Groove" BorderWidth="1px"
                CellPadding="2" ForeColor="Black" GridLines="Horizontal" Height="179px" PageSize="5"
                Style="z-index: 101; left: -4px; position: relative; top: 73px" Width="780px" OnSelectedIndexChanged="DataGrid1_SelectedIndexChanged">
                <FooterStyle BackColor="Tan" />
                <SelectedItemStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <PagerStyle BackColor="ActiveBorder" ForeColor="DarkSlateBlue" HorizontalAlign="Center"
                    Mode="NumericPages" />
                <AlternatingItemStyle BackColor="#EEEDEA" BorderColor="White" />
                <HeaderStyle BackColor="SteelBlue" Font-Bold="True" ForeColor="White" />
                <Columns>
                    <asp:BoundColumn DataField="policy_id" HeaderText="Pol Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Policy_name" HeaderText="Name"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Policy_launched_date" DataFormatString="{0:d}" HeaderText=" Launched Date">
                    </asp:BoundColumn>
                    <asp:BoundColumn DataField="Policy_type_field_id" HeaderText="P_Type Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_min_value" HeaderText=" Min Value"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_max_value" HeaderText=" Max Value"></asp:BoundColumn>
                    <asp:BoundColumn DataField="Policy_min_age_limit" HeaderText="MinAge"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_max_age_limit" HeaderText=" MaxAge"></asp:BoundColumn>
                    <asp:BoundColumn DataField="company_id" HeaderText="Comp Id"></asp:BoundColumn>
                    <asp:BoundColumn DataField="policy_desc" HeaderText="Description"></asp:BoundColumn>
                    <asp:EditCommandColumn CancelText="Cancel" EditText="Edit" UpdateText="Update"></asp:EditCommandColumn>
                </Columns>
            </asp:DataGrid>
        </form>
	</body>
</HTML>
