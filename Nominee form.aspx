<%@ Page language="c#" Inherits="insurancenew.Nominee_form" CodeFile="Nominee form.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Nominee_form</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 103; LEFT: 228px; POSITION: absolute; TOP: 76px" runat="server"
				BorderStyle="Groove" BorderColor="Silver" Width="310px" Height="208px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="0" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="207px" Font-Size="Small" Font-Names="Verdana"
								Font-Bold="True" ForeColor="White">Nominees Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 173px">
							<asp:Label id="Label1" runat="server" Height="12px" Width="146px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nominee Id</asp:Label></TD>
						<TD style="width: 147px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="136px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 173px" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="125px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nominee Name</asp:Label></TD>
						<TD style="width: 147px">
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 173px; HEIGHT: 17px">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nominee Address</asp:Label></TD>
						<TD style="HEIGHT: 17px; width: 147px;">
							<asp:TextBox id="TextBox3" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 173px; HEIGHT: 7px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="161px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nomiee Data Of Birth</asp:Label></TD>
						<TD style="HEIGHT: 7px; width: 147px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                Style="left: 40px; position: relative; top: 0px" Width="48px">
                            </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server" Style="left: 40px;
                                position: relative; top: 0px" Width="56px">
                            </asp:DropDownList><asp:DropDownList ID="DropDownList1" runat="server" Style="left: -102px;
                                position: relative; top: 0px" Width="40px">
                            </asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 173px; height: 22px;" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="156px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nominee Email Id</asp:Label></TD>
						<TD style="height: 22px; width: 147px;">
							<asp:TextBox id="TextBox5" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 173px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="157px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Nominee Relationship</asp:Label></TD>
						<TD style="width: 147px">
                            <asp:DropDownList ID="DropDownList4" runat="server" Style="position: relative" Width="136px">
                                <asp:ListItem>Mother</asp:ListItem>
                                <asp:ListItem>Brother</asp:ListItem>
                                <asp:ListItem>Father</asp:ListItem>
                                <asp:ListItem>sister</asp:ListItem>
                                <asp:ListItem>others</asp:ListItem>
                            </asp:DropDownList></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 173px; HEIGHT: 1px" align="right">
							<asp:Label id="Label8" runat="server" Height="12px" Width="152px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Customer Policy NO</asp:Label></TD>
						<TD style="HEIGHT: 1px; width: 147px;">
							<asp:TextBox id="TextBox7" runat="server" Height="20px" Width="136px" BorderStyle="Groove" ReadOnly="True" ></asp:TextBox></TD>
					</TR>
					<TR align="center">
                        <td colspan="2">
							<asp:Button id="Button1" runat="server" Width="149px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Save Changes" onclick="Button1_Click"></asp:Button></td>
					</TR>
				</TABLE>
			</asp:panel>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox2"
                ErrorMessage="RequiredFieldValidator" Style="left: 541px; position: relative;
                top: 102px">Enter Name</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3"
                ErrorMessage="RequiredFieldValidator" Style="left: 461px; position: relative;
                top: 126px">Address</asp:RequiredFieldValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="RegularExpressionValidator" Style="left: 402px; position: relative;
                top: 169px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Valid E-mail</asp:RegularExpressionValidator>
		</form>
	</body>
</HTML>
