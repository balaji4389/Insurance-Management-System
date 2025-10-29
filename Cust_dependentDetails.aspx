<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<%@ Page language="c#" Inherits="insurancenew.Cust_dependentDetails" CodeFile="Cust_dependentDetails.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Cust_dependentDetails</title>
		<meta name="vs_showGrid" content="False">
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:Panel id="Panel1" style="Z-INDEX: 100; LEFT: 168px; POSITION: absolute; TOP: 128px" runat="server"
				Height="312px" Width="328px" BackColor="Gainsboro" BorderColor="Gray" BorderStyle="Groove">
<asp:TextBox id="txt_email" style="Z-INDEX: 116; LEFT: 152px; POSITION: absolute; TOP: 208px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_phone" style="Z-INDEX: 115; LEFT: 152px; POSITION: absolute; TOP: 176px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_addr" style="Z-INDEX: 114; LEFT: 152px; POSITION: absolute; TOP: 144px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_relation" style="Z-INDEX: 113; LEFT: 152px; POSITION: absolute; TOP: 116px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_depen_name" style="Z-INDEX: 112; LEFT: 152px; POSITION: absolute; TOP: 88px"
					runat="server"></asp:TextBox>
<asp:TextBox id="txt_cust_id" style="Z-INDEX: 111; LEFT: 152px; POSITION: absolute; TOP: 56px"
					runat="server" ReadOnly="True"></asp:TextBox>
<asp:TextBox id="txt_depen_id" style="Z-INDEX: 110; LEFT: 152px; POSITION: absolute; TOP: 20px"
					runat="server" ReadOnly="True"></asp:TextBox>
<asp:Label id="Label9" style="Z-INDEX: 109; LEFT: 100px; POSITION: absolute; TOP: 240px" runat="server"
					Width="32px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">DOB</asp:Label>
<asp:Label id="Label8" style="Z-INDEX: 108; LEFT: 64px; POSITION: absolute; TOP: 208px" runat="server"
					Width="68px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">E-mail ID</asp:Label>
<asp:Label id="Label7" style="Z-INDEX: 107; LEFT: 64px; POSITION: absolute; TOP: 176px" runat="server"
					Width="68px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Phone No</asp:Label>
<asp:Label id="Label6" style="Z-INDEX: 106; LEFT: 72px; POSITION: absolute; TOP: 144px" runat="server"
					Width="60px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Address</asp:Label>
<asp:Label id="Label5" style="Z-INDEX: 105; LEFT: 43px; POSITION: absolute; TOP: 116px" runat="server"
					Width="60px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Relationship</asp:Label>
<asp:Label id="Label3" style="Z-INDEX: 103; LEFT: 40px; POSITION: absolute; TOP: 56px" runat="server"
					Width="92px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Customer ID</asp:Label>
<asp:Label id="Label2" style="Z-INDEX: 102; LEFT: 31px; POSITION: absolute; TOP: 24px" runat="server"
					Width="101px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Dependent ID</asp:Label>&nbsp; 
<asp:LinkButton id="LinkButton1" style="Z-INDEX: 103; LEFT: 148px; POSITION: absolute; TOP: 280px"
					runat="server" Font-Bold="True" onclick="LinkButton1_Click">Submit</asp:LinkButton>
<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 12px; POSITION: absolute; TOP: 92px" runat="server"
					Width="128px" Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True">Dependent name</asp:Label>
<asp:TextBox id="txt_dob" style="Z-INDEX: 116; LEFT: 152px; POSITION: absolute; TOP: 240px" runat="server"></asp:TextBox>
				
			</asp:Panel>
			<asp:RegularExpressionValidator id="RegularExpressionValidator2" style="Z-INDEX: 104; LEFT: 498px; POSITION: absolute; TOP: 309px"
				runat="server" ErrorMessage="enter valid phone number" ValidationExpression="\d{11}" ControlToValidate="txt_phone">No + or Gaps</asp:RegularExpressionValidator>
			<asp:Label id="Label10" style="Z-INDEX: 101; LEFT: 232px; POSITION: absolute; TOP: 92px" runat="server"
				Width="216px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
				ForeColor="Black">Dependent Details</asp:Label>
			<uc1:bannercontrol id="Bannercontrol1" runat="server"></uc1:bannercontrol>
			<asp:RegularExpressionValidator id="RegularExpressionValidator1" style="Z-INDEX: 103; LEFT: 494px; POSITION: absolute; TOP: 341px"
				runat="server" ErrorMessage="enter valid mail id" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
				ControlToValidate="txt_email">Valid Email id</asp:RegularExpressionValidator>
            <br />
            <br />
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txt_dob"
                ErrorMessage="RequiredFieldValidator" Style="left: 488px; position: relative;
                top: 283px">Date MM/DD/YYYY</asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txt_relation"
                ErrorMessage="RequiredFieldValidator" Style="left: 492px; position: relative;
                top: 139px">Relationship ?</asp:RequiredFieldValidator><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_depen_name"
                ErrorMessage="RequiredFieldValidator" Style="left: 487px; position: relative;
                top: 95px">name is required</asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_addr"
                ErrorMessage="RequiredFieldValidator" Style="left: 388px; position: relative;
                top: 150px">Address</asp:RequiredFieldValidator>
		</form>
	</body>
</HTML>
