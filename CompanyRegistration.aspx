<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<%@ Page language="c#" Inherits="insurancenew.CompanyRegistration" CodeFile="CompanyRegistration.aspx.cs" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>CompanyRegistration</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
			<asp:label id="Label1" style="Z-INDEX: 101; LEFT: 81px; POSITION: absolute; TOP: 46px" runat="server"
				Width="196px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" ForeColor="Black">Company Registration</asp:label>
			<asp:Panel id="Panel1" style="Z-INDEX: 102; LEFT: 20px; POSITION: absolute; TOP: 88px" runat="server"
				BorderStyle="Groove" Height="280px" Width="332px" BackColor="Gainsboro" BorderColor="Gray">
				<asp:TextBox id="txt_company_id" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 16px"
					runat="server" ReadOnly="True"></asp:TextBox>
                &nbsp; &nbsp;&nbsp;
				<asp:TextBox id="txt_website" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 208px"
					runat="server"></asp:TextBox>
				<asp:LinkButton id="LinkButton1" style="Z-INDEX: 103; LEFT: 120px; POSITION: absolute; TOP: 248px"
					runat="server" Font-Bold="True" onclick="LinkButton1_Click">Submit</asp:LinkButton>
				<asp:Label id="Label2" style="Z-INDEX: 103; LEFT: 32px; POSITION: absolute; TOP: 16px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="98px">Company ID</asp:Label>
				<asp:TextBox id="txt_company_name" style="Z-INDEX: 104; LEFT: 160px; POSITION: absolute; TOP: 48px"
					runat="server" Width="157px"></asp:TextBox>
				<asp:Label id="Label3" style="Z-INDEX: 105; LEFT: 12px; POSITION: absolute; TOP: 52px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="118px">Company Name</asp:Label>
				<asp:TextBox id="txt_company_addr" style="Z-INDEX: 106; LEFT: 160px; POSITION: absolute; TOP: 80px"
					runat="server"></asp:TextBox>
				<asp:Label id="Label4" style="Z-INDEX: 107; LEFT: 72px; POSITION: absolute; TOP: 80px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="60px">Address</asp:Label>
				<asp:TextBox id="txt_email" style="Z-INDEX: 108; LEFT: 160px; POSITION: absolute; TOP: 112px"
					runat="server"></asp:TextBox>
				<asp:Label id="Label6" style="Z-INDEX: 109; LEFT: 72px; POSITION: absolute; TOP: 112px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="61px">Email ID</asp:Label>
				<asp:TextBox id="txt_phone" style="Z-INDEX: 110; LEFT: 160px; POSITION: absolute; TOP: 144px"
					runat="server">0</asp:TextBox>
				<asp:Label id="Label5" style="Z-INDEX: 111; LEFT: 60px; POSITION: absolute; TOP: 144px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="72px">Phone No</asp:Label>
				<asp:TextBox id="txt_fax" style="Z-INDEX: 112; LEFT: 160px; POSITION: absolute; TOP: 176px" runat="server">0</asp:TextBox>
				<asp:Label id="Label7" style="Z-INDEX: 113; LEFT: 80px; POSITION: absolute; TOP: 180px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="53px">Fax No</asp:Label>
				<asp:Label id="Label8" style="Z-INDEX: 115; LEFT: 72px; POSITION: absolute; TOP: 212px" runat="server"
					Font-Size="X-Small" Font-Names="Verdana" Font-Bold="True" Width="49px">WebSite</asp:Label>
                &nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txt_company_name"
                    ErrorMessage="RequiredFieldValidator" Style="left: 333px; position: absolute;
                    top: 50px" Width="102px">company name</asp:RequiredFieldValidator></asp:Panel>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txt_company_addr"
                ErrorMessage="RequiredFieldValidator" Style="left: 356px; position: absolute;
                top: 173px">address of company</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txt_email"
                ErrorMessage="RegularExpressionValidator" Style="left: 355px; position: absolute;
                top: 207px" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">valid email is required</asp:RegularExpressionValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_phone"
                ErrorMessage="RegularExpressionValidator" Style="left: 355px; position: absolute;
                top: 242px" ValidationExpression="\d{11}">11 nos are required</asp:RegularExpressionValidator>
            &nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txt_fax"
                ErrorMessage="RegularExpressionValidator" Style="left: 357px; position: absolute;
                top: 272px" ValidationExpression="\d{11}">Enter 11 nos</asp:RegularExpressionValidator>&nbsp;
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txt_website"
                ErrorMessage="RegularExpressionValidator" Style="left: 356px; position: absolute;
                top: 304px" ValidationExpression="([\w-]+\.)+[\w-]+(/[\w- ./?%&=]*)?">valid website</asp:RegularExpressionValidator>
            &nbsp;
			</form>
	</body>
</HTML>
