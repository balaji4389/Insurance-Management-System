<%@ Page language="c#" Inherits="insurancenew.dependent_form" CodeFile="dependent form.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>dependent form</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 103; LEFT: 216px; POSITION: absolute; TOP: 88px" runat="server"
				BorderStyle="Groove" BorderColor="Silver" Width="272px" Height="176px">
				<TABLE id="Table1" style="WIDTH: 216px; HEIGHT: 134px" cellSpacing="1" cellPadding="0"
					width="216" border="0">
					<TR align="center">
						<TD bgColor="steelblue" colSpan="2">
							<asp:Label id="Label5" runat="server" Height="12px" Width="207px" Font-Size="Small" Font-Names="Verdana"
								Font-Bold="True" ForeColor="White">Dependent Information</asp:Label></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px" align="right">
							<asp:Label id="Label1" runat="server" Height="12px" Width="146px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent Id</asp:Label></TD>
						<TD style="width: 143px">
							<asp:TextBox id="TextBox1" runat="server" Height="20px" Width="136px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px" align="right" colSpan="1">
							<asp:Label id="Label2" runat="server" Height="12px" Width="125px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Customer Name</asp:Label></TD>
						<TD style="width: 143px">
							<asp:TextBox id="TextBox2" runat="server" Height="20px" Width="136px" BorderStyle="Groove" ReadOnly="True"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px; HEIGHT: 17px" align="right">
							<asp:Label id="Label3" runat="server" Height="12px" Width="132px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent Name</asp:Label></TD>
						<TD style="HEIGHT: 17px; width: 143px;">
							<asp:TextBox id="TextBox3" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px; HEIGHT: 7px" align="right">
							<asp:Label id="Label4" runat="server" Height="12px" Width="178px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent Relationship</asp:Label></TD>
						<TD style="HEIGHT: 7px; width: 143px;">
                            <asp:DropDownList ID="DropDownList4" runat="server" Style="position: relative" Width="136px">
                                <asp:ListItem>Mother</asp:ListItem>
                                <asp:ListItem>Brother</asp:ListItem>
                                <asp:ListItem>Father</asp:ListItem>
                                <asp:ListItem>sister</asp:ListItem>
                                <asp:ListItem>others</asp:ListItem>
                            </asp:DropDownList></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px; height: 22px;" align="right">
							<asp:Label id="Label6" runat="server" Height="12px" Width="171px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent Address</asp:Label></TD>
						<TD style="width: 143px; height: 22px;">
							<asp:TextBox id="TextBox5" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR align="right">
						<TD style="WIDTH: 181px" align="right">
							<asp:Label id="Label7" runat="server" Height="12px" Width="168px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent PhoneNo</asp:Label></TD>
						<TD style="width: 143px">
							<asp:TextBox id="TextBox6" runat="server" Height="20px" Width="136px" BorderStyle="Groove">0</asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 181px; HEIGHT: 1px" align="right">
							<asp:Label id="Label8" runat="server" Height="12px" Width="152px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent EmailId</asp:Label></TD>
						<TD style="HEIGHT: 1px; width: 143px;">
							<asp:TextBox id="TextBox7" runat="server" Height="20px" Width="136px" BorderStyle="Groove"></asp:TextBox></TD>
					</TR>
					<TR>
						<TD style="WIDTH: 181px; HEIGHT: 1px" align="right">
							<asp:Label id="Label9" runat="server" Height="12px" Width="152px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True">Dependent DoB</asp:Label></TD>
						<TD style="HEIGHT: 1px; width: 143px;">
                            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                                Style="left: 40px; position: relative; top: 8px" Width="48px">
                            </asp:DropDownList><asp:DropDownList ID="DropDownList3" runat="server" Style="left: 32px;
                                position: relative; top: 8px" Width="56px">
                            </asp:DropDownList><asp:DropDownList ID="DropDownList1" runat="server" Style="left: 0px;
                                position: relative; top: -14px" Width="40px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                            </asp:DropDownList></TD>
					</TR>
					<TR align="center">
						<TD style="WIDTH: 181px">
							<asp:Button id="Button1" runat="server" Width="175px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Save Changes" onclick="Button1_Click"></asp:Button></TD>
						<TD style="width: 143px">
							<asp:Button id="Button2" runat="server" Width="134px" Font-Size="X-Small" Font-Names="Verdana"
								Font-Bold="True" Text="Back" OnClick="Button2_Click"></asp:Button></TD>
					</TR>
				</TABLE>
			</asp:panel>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6"
                ErrorMessage="RegularExpressionValidator" Style="left: 536px; position: relative;
                top: 216px" ValidationExpression="\d{11}">11 numbers</asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox7"
                ErrorMessage="RegularExpressionValidator" Style="left: 464px; position: relative;
                top: 248px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid email</asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3"
                ErrorMessage="RequiredFieldValidator" Style="left: 392px; position: relative;
                top: 144px">Name is required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox5"
                ErrorMessage="RequiredFieldValidator" Style="left: 280px; position: relative;
                top: 192px">Address is required</asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
