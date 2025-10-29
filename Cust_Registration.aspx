<%@ Page language="c#" Inherits="insurancenew.Cust_Registration" CodeFile="Cust_Registration.aspx.cs" EnableEventValidation ="false" AutoEventWireup="true" %>
<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<HTML >
	<HEAD>
		<title>Cust_Registration</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" style="Z-INDEX: 101; LEFT: 115px; POSITION: absolute; TOP: 126px" runat="server"
				Height="334px" Width="380px" BackColor="Gainsboro" BorderColor="Gray" BorderStyle="Groove">
                &nbsp;
<asp:TextBox id="txt_cust_phone" style="Z-INDEX: 115; LEFT: 172px; POSITION: absolute; TOP: 176px"
					runat="server">0</asp:TextBox>
<asp:TextBox id="txt_cust_email" style="Z-INDEX: 114; LEFT: 172px; POSITION: absolute; TOP: 144px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_cust_address" style="Z-INDEX: 113; LEFT: 172px; POSITION: absolute; TOP: 116px"
					runat="server"></asp:TextBox>
                &nbsp;
<asp:TextBox id="txt_cust_name" style="Z-INDEX: 111; LEFT: 172px; POSITION: absolute; TOP: 56px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_cust_id" style="Z-INDEX: 110; LEFT: 172px; POSITION: absolute; TOP: 20px"
					runat="server" ReadOnly="True"></asp:TextBox>
<asp:Label id="Label9" style="Z-INDEX: 109; LEFT: 100px; POSITION: absolute; TOP: 240px" runat="server"
					Width="52px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Gender</asp:Label>
<asp:DropDownList id="dr_gender" style="Z-INDEX: 103; LEFT: 172px; POSITION: absolute; TOP: 240px"
					runat="server" Width="157px" onselectedindexchanged="dr_gender_SelectedIndexChanged"></asp:DropDownList>
<asp:Label id="Label8" style="Z-INDEX: 108; LEFT: 56px; POSITION: absolute; TOP: 208px" runat="server"
					Width="104px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Marital Status</asp:Label>
<asp:Label id="Label7" style="Z-INDEX: 107; LEFT: 84px; POSITION: absolute; TOP: 176px" runat="server"
					Width="68px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Phone No</asp:Label>
<asp:Label id="Label6" style="Z-INDEX: 106; LEFT: 84px; POSITION: absolute; TOP: 144px" runat="server"
					Width="68px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">E-mail ID</asp:Label>
<asp:Label id="Label5" style="Z-INDEX: 105; LEFT: 92px; POSITION: absolute; TOP: 116px" runat="server"
					Width="60px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Address</asp:Label>
<asp:Label id="Label4" style="Z-INDEX: 104; LEFT: 120px; POSITION: absolute; TOP: 88px" runat="server"
					Width="32px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">DOB</asp:Label>
<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 36px; POSITION: absolute; TOP: 56px" runat="server"
					Width="124px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Customer Name</asp:Label>
<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 60px; POSITION: absolute; TOP: 24px" runat="server"
					Width="92px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Customer ID</asp:Label>&nbsp; 
<asp:LinkButton id="LinkButton1" style="Z-INDEX: 103; LEFT: 148px; POSITION: absolute; TOP: 280px"
					runat="server" Font-Bold="True" onclick="LinkButton1_Click">Submit</asp:LinkButton>
<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 103; LEFT: 382px; POSITION: absolute; TOP: 147px"
					runat="server" ErrorMessage="enter valid email id" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
					ControlToValidate="txt_cust_email" Width="142px">Enter correct E-mail ID</asp:RegularExpressionValidator>
<asp:RegularExpressionValidator id="RegularExpressionValidator2" style="Z-INDEX: 104; LEFT: 383px; POSITION: absolute; TOP: 178px"
					runat="server" ErrorMessage="enter 8 digit valid phone no" ValidationExpression="\d{11}" ControlToValidate="txt_cust_phone" Width="108px">Enter 11 nos</asp:RegularExpressionValidator>
                <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"
                    Style="left: 224px; position: absolute; top: 88px" Width="48px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList3" runat="server" Style="left: 272px; position: absolute;
                    top: 88px" Width="56px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList1" runat="server" Style="left: 176px; position: absolute;
                    top: 88px" Width="40px">
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged"
                    Style="left: 176px; position: absolute; top: 208px" Width="152px">
                    <asp:ListItem>Married</asp:ListItem>
                    <asp:ListItem>Unmarried</asp:ListItem>
                </asp:DropDownList>
			
</asp:Panel>
			<asp:Label id="Label10" style="Z-INDEX: 102; LEFT: 217px; POSITION: absolute; TOP: 93px" runat="server"
				Width="164px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
				ForeColor="Black">Registration Form</asp:Label>
			<uc1:bannercontrol id="Bannercontrol1" runat="server"></uc1:bannercontrol>
			<asp:ValidationSummary id="ValidationSummary1" style="Z-INDEX: 105; LEFT: 506px; POSITION: absolute; TOP: 356px"
				runat="server" Height="42px" Width="118px"></asp:ValidationSummary>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_cust_address"
                ErrorMessage="RequiredFieldValidator" Style="left: 504px; position: absolute;
                top: 253px" Width="140px">Enter Correct Address</asp:RequiredFieldValidator>
            <table style="left: 502px; position: absolute; top: 175px; width: 137px; height: 1px;">
                <tr>
                    <td style="width: 131px; color: #ff00ff; height: 35px">
                        <span style="font-size: 8pt">
                            This is your user name</span></td>
                </tr>
                <tr>
                    <td style="width: 131px; color: #ff00ff; height: 31px">
                        <span style="font-size: 8pt">DD/MM/YYYY</span></td>
                </tr>
            </table>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_cust_name"
                ErrorMessage="RequiredFieldValidator" Style="left: 500px; position: absolute;
                top: 190px" Width="129px">Enter ur Login Name</asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
