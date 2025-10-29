<%@ Page language="c#" Inherits="insurancenew.customer_policies_registration" CodeFile="customer_policies_registration.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>customer_policies_registration</title>
		<meta name="vs_showGrid" content="False">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel2" style="Z-INDEX: 103; LEFT: 152px; POSITION: absolute; TOP: 64px" runat="server"
				Width="305px" Visible="False" Height="104px" BorderStyle="Groove" BorderColor="Silver">
				<TABLE id="Table2" style="WIDTH: 293px; HEIGHT: 74px; position: relative; left: 0px; top: 0px;" cellSpacing="1" cellPadding="0" width="293"
					border="0">
					<TR align="center">
						<TD style="HEIGHT: 25px" bgColor="steelblue" colSpan="2">
							<asp:Label id="Label15" runat="server" Height="12px" Width="173px" ForeColor="White" Font-Names="Verdana"
								Font-Size="Small" Font-Bold="True">Agent Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 145px; HEIGHT: 11px">
							<asp:Label id="Label14" runat="server" Height="12px" Width="129px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Company Name</asp:Label></TD>
						<TD style="HEIGHT: 11px">
							<asp:TextBox id="Comp_tex" runat="server" BorderStyle="Groove" Height="20px" Width="150px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 12px" align="right">
							<asp:Label id="Label13" runat="server" Height="8px" Width="101px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Agent Name</asp:Label></TD>
						<TD style="HEIGHT: 12px">
							<asp:DropDownList id="dr_agent_name" runat="server" Width="152px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" AutoPostBack="True"></asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 145px; HEIGHT: 12px" align="right" colSpan="2">
							<asp:Button id="Button4" runat="server" Height="24px" Width="292px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Enter Policy Information" onclick="Button4_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:panel id="Panel1" style="Z-INDEX: 102; LEFT: 141px; POSITION: absolute; TOP: 71px" runat="server"
				Width="328px" Visible="False" Height="338px" BorderStyle="Groove" BorderColor="Silver">
				<TABLE id="Table1" style="WIDTH: 320px; HEIGHT: 311px" cellSpacing="1" cellPadding="0" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="192px" ForeColor="White" Font-Names="Verdana"
								Font-Size="Small" Font-Bold="True">Policy Registration</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 375px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="146px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Customer Policy No</asp:Label></TD>
						<TD style="width: 174px">
							<asp:TextBox id="TextBox1" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 375px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="125px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Customer Name</asp:Label></TD>
						<TD style="width: 174px">
							<asp:TextBox id="TextBox2" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 375px; HEIGHT: 17px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Id</asp:Label></TD>
						<TD style="HEIGHT: 17px; width: 174px;">
							<asp:TextBox id="TextBox3" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 375px; HEIGHT: 7px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="124px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Date</asp:Label></TD>
						<TD style="HEIGHT: 7px; width: 174px;">
							<asp:TextBox id="TextBox4" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="156px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Term Years</asp:Label></TD>
						<TD style="width: 174px">
                            <asp:DropDownList ID="DropDownList1" runat="server" Style="position: relative" Width="136px">
                                <asp:ListItem>15</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>21</asp:ListItem>
                                <asp:ListItem>22</asp:ListItem>
                                <asp:ListItem>23</asp:ListItem>
                                <asp:ListItem>25</asp:ListItem>
                                <asp:ListItem>28</asp:ListItem>
                                <asp:ListItem>30</asp:ListItem>
                            </asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px; height: 22px;" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="124px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Amount</asp:Label></TD>
						<TD style="width: 174px; height: 22px">
							<asp:TextBox id="TextBox6" runat="server" BorderStyle="Groove" Height="20px" Width="136px" OnTextChanged="TextBox6_TextChanged"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px; HEIGHT: 1px" align="right">
							<asp:Label id="Label8" runat="server" Height="12px" Width="152px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" style="position: relative">Policy Premium Amt</asp:Label>&nbsp;
							</TD>
						<TD style="HEIGHT: 1px; width: 174px;">
							<asp:TextBox id="TextBox7" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True" OnTextChanged="TextBox7_TextChanged" ></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px; HEIGHT: 3px" align="right">
							<asp:Label id="Label9" runat="server" Height="16px" Width="168px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">PolicyPrem Pay mode</asp:Label></TD>
						<TD style="HEIGHT: 3px; width: 174px;">
							<asp:DropDownList id="dr_pay_mode" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" OnSelectedIndexChanged="dr_pay_mode_SelectedIndexChanged" AutoPostBack="True">
                                <asp:ListItem>Select</asp:ListItem>
                                <asp:ListItem>Monthly</asp:ListItem>
                                <asp:ListItem>Quarterly</asp:ListItem>
                                <asp:ListItem>Halfyearly</asp:ListItem>
                                <asp:ListItem>yearly</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px" align="right">
							<asp:Label id="Label10" runat="server" Height="12px" Width="182px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Policy Prem Instalments</asp:Label></TD>
						<TD style="width: 174px">
							<asp:TextBox id="TextBox9" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px; HEIGHT: 4px" align="right">
							<asp:Label id="Label11" runat="server" Height="12px" Width="148px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Nominee Status</asp:Label></TD>
						<TD style="HEIGHT: 4px; width: 174px;">
							<asp:DropDownList id="dr_nominee_status" runat="server" Width="136px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" OnSelectedIndexChanged="dr_nominee_status_SelectedIndexChanged">
								<asp:ListItem>yes</asp:ListItem>
							</asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 375px" align="right">
							<asp:Label id="Label12" runat="server" Height="12px" Width="148px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True">Agent Id</asp:Label></TD>
						<TD style="width: 174px">
							<asp:TextBox id="TextBox11" runat="server" BorderStyle="Groove" Height="20px" Width="136px" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 375px">
							<asp:Button id="Button1" runat="server" Width="149px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Save Changes" onclick="Button1_Click"></asp:Button></TD>
						<TD style="width: 174px">
							<asp:Button id="Button2" runat="server" Width="134px" Font-Names="Verdana" Font-Size="X-Small"
								Font-Bold="True" Text="Back" OnClick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel><asp:datagrid id="DataGrid1" style="Z-INDEX: 101; LEFT: 3px; POSITION: absolute; TOP: 86px" runat="server"
				Width="640px" Height="179px" BorderStyle="Groove" BorderColor="Black" AutoGenerateColumns="False" BorderWidth="1px"
				BackColor="White" CellPadding="2" GridLines="Horizontal" PageSize="5" onselectedindexchanged="DataGrid1_SelectedIndexChanged">
				<SelectedItemStyle ForeColor="GhostWhite" BackColor="DarkSlateBlue"></SelectedItemStyle>
				<AlternatingItemStyle BorderColor="White" BackColor="#EEEDEA"></AlternatingItemStyle>
				<HeaderStyle Font-Bold="True" ForeColor="White" BackColor="SteelBlue"></HeaderStyle>
				<Columns>
					<asp:BoundColumn DataField="Policy_id" HeaderText="Policy  Id"></asp:BoundColumn>
					<asp:BoundColumn DataField="Policy_name" HeaderText="Policy  Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_type_field_name" HeaderText="policy Type Name"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_value" HeaderText="Policy Min Ltm"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_value" HeaderText="Policy Max Ltm"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_min_age_limit" HeaderText="Min Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="policy_max_age_limit" HeaderText="Max Age"></asp:BoundColumn>
					<asp:BoundColumn DataField="company_name" HeaderText="Company Name"></asp:BoundColumn>
					<asp:ButtonColumn Text="Select" HeaderText="New Policy" CommandName="Select"></asp:ButtonColumn>
				</Columns>
				<PagerStyle HorizontalAlign="Center" ForeColor="DarkSlateBlue" BackColor="Transparent" Mode="NumericPages"></PagerStyle>
			</asp:datagrid>
            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox6"
                ErrorMessage="RangeValidator" MaximumValue="20000000" MinimumValue="10000" Style="left: 432px;
                position: relative; top: 205px" Type="Double">value in between 10000 -20000000</asp:RangeValidator>
        </form>
	</body>
</HTML>
