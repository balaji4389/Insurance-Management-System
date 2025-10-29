<%@ Page language="c#" Inherits="HomePage" CodeFile="HomePage.aspx.cs" EnableEventValidation ="true" AutoEventWireup="true" %>
<%@ Register TagPrefix="uc1" TagName="bannercontrol" Src="bannercontrol.ascx" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>HomePage</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	</HEAD>
	<body bgColor="#ffffff">
		<form id="Form1" method="post" runat="server">
			<asp:panel id="Panel1" style="Z-INDEX: 100; LEFT: 0px; POSITION: absolute; TOP: 188px" runat="server"
				Visible="False" Width="196px" Height="148px" BorderStyle="Solid" BorderColor="Silver" BackColor="White">
                &nbsp;
<asp:TextBox id="txt_user_name" style="Z-INDEX: 102; LEFT: 84px; POSITION: absolute; TOP: 40px"
					runat="server" BorderStyle="Groove" Width="100px"></asp:TextBox>
<asp:Label id="Label1" style="Z-INDEX: 103; LEFT: 60px; POSITION: absolute; TOP: 12px" runat="server"
					Width="100px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small">           Login Form</asp:Label>
<asp:Label id="Label2" style="Z-INDEX: 105; LEFT: 4px; POSITION: absolute; TOP: 40px" runat="server"
					Width="80px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">User name</asp:Label>
<asp:TextBox id="txt_pwd" style="Z-INDEX: 106; LEFT: 84px; POSITION: absolute; TOP: 76px" runat="server"
					BorderStyle="Groove" Width="100px" TextMode="Password" AutoPostBack="True" OnTextChanged="txt_pwd_TextChanged"></asp:TextBox>
<asp:LinkButton id="LinkButton1" style="Z-INDEX: 104; LEFT: 72px; POSITION: absolute; TOP: 112px"
					runat="server" BorderColor="Transparent" Width="44px" onclick="LinkButton1_Click" >Submit</asp:LinkButton>
<asp:Label id="Label3" style="Z-INDEX: 107; LEFT: 4px; POSITION: absolute; TOP: 80px" runat="server"
					Width="64px" Font-Bold="True" Font-Names="Verdana" Font-Size="X-Small">Password</asp:Label>&nbsp;&nbsp;
            </asp:panel>
			<asp:Image id="Image5" style="Z-INDEX: 101; LEFT: 604px; POSITION: absolute; TOP: 96px" runat="server"
				Height="46px" Width="66px" ImageUrl="images/insurance4.jpg"></asp:Image>
			<asp:image id="Image4" style="Z-INDEX: 102; LEFT: 0px; POSITION: absolute; TOP: 337px" runat="server"
				Width="200px" Height="186px" BorderStyle="Ridge" BorderColor="SlateGray" ImageUrl="images/MF0419.JPG"></asp:image>
			<asp:image id="Image1" style="Z-INDEX: 103; LEFT: 0px; POSITION: absolute; TOP: 184px" runat="server"
				Width="196px" Height="152px" BorderStyle="Ridge" BorderColor="SlateGray" ImageUrl="~/IMAGES/aug-2005.jpg"></asp:image>
            &nbsp;
			<asp:Image id="Image2" style="Z-INDEX: 104; LEFT: 196px; POSITION: absolute; TOP: 60px" runat="server"
				Width="8px" Height="466px" BackColor="MistyRose"></asp:Image>
			<asp:hyperlink id="Hyperlink1" style="Z-INDEX: 105; LEFT: 424px; POSITION: absolute; TOP: 60px"
				runat="server" Width="96px" NavigateUrl="AgentLoginForm.aspx" Font-Bold="True" Font-Names="Verdana"
				Font-Size="10pt" Height="12px" ForeColor="Purple"> ||New Agent</asp:hyperlink>
			<asp:linkbutton id="LinkButton4" style="Z-INDEX: 106; LEFT: 360px; POSITION: absolute; TOP: 60px"
				runat="server" Font-Bold="True" onclick="LinkButton4_Click" OnUnload="LinkButton1_Click" Font-Size="10pt">Customer </asp:linkbutton><asp:linkbutton id="LinkButton3" style="Z-INDEX: 107; LEFT: 312px; POSITION: absolute; TOP: 60px"
				runat="server" Font-Bold="True" onclick="LinkButton3_Click" OnLoad="Page_Load" Font-Size="10pt">Agent | |</asp:linkbutton><asp:linkbutton id="LinkButton2" style="Z-INDEX: 108; LEFT: 212px; POSITION: absolute; TOP: 60px"
				runat="server" Font-Bold="True" onclick="LinkButton2_Click" OnLoad="Page_Load" Font-Size="10pt" Width="96px">Administrator | |</asp:linkbutton>
			<asp:hyperlink id="HyperLink2" style="Z-INDEX: 109; LEFT: 528px; POSITION: absolute; TOP: 60px"
				runat="server" Width="124px" NavigateUrl="Cust_Registration.aspx" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" Height="12px" ForeColor="Purple"> ||New Customer</asp:hyperlink>
			<asp:hyperlink id="HyperLink3" style="Z-INDEX: 110; LEFT: 664px; POSITION: absolute; TOP: 60px"
				runat="server" Width="100px" NavigateUrl="Details.aspx" Font-Bold="True" Font-Names="Verdana" Font-Size="10pt" Height="12px" ForeColor="Purple"> ||Companies</asp:hyperlink></form>
        <uc1:bannercontrol id="Bannercontrol1" runat="server">
        </uc1:bannercontrol>
        &nbsp;&nbsp;
        <br>
		<br>
        <img src="IMAGES/CAQJ7NNG.jpg" style="z-index: 113; left: 0px; width: 196px; position: absolute;
            top: 59px; height: 123px" />
		<br>
		<br>
		<ul style="Z-INDEX: 112; LEFT: 174px; WIDTH: 546px; POSITION: absolute; TOP: 96px; HEIGHT: 376px">
			<li style="text-align: justify">
				<h2>Overview</h2>
				<p class="MsoBodyText2" style="MARGIN-TOP:6pt; text-align: justify;">
					Insurance Companies offers various types of policies, concerned Brokers and the 
					detailed information of customers with their corresponding policies. The design 
					aims at providing the brokers and the customers a facility to access the 
					information of policies their descriptions, which include starting date, 
					renewal date, premium payable, claims information, date of maturity and etc., 
					under various categories like Life, Motor, House Hold, House-hold items and the corresponding <a href ="Details.aspx" >Company details</a> 
                    
                    &nbsp; &nbsp;&nbsp; &nbsp;
                    &nbsp;&nbsp;
                    </p>
				<div>
					<ol>
						<li style="text-align: justify">
						Critical Tips For All Types Of Insurence (When Disaster Strikes) Car, travel, 
						health, life, home, auto, business, motor... In our rush to submit our insurace 
						claim for loss or damage to your property, baggage, or holiday we can easily 
						make all kinds of mistakes. These insurance errors cost time and money and 
						could even result in the claim being rejected, so here are some benefits and 
						tips to help both you and the insurence companies.
						<li style="text-align: justify">
							Get more than one insurnace quote for repairs. Try to use a local contractor 
							with a good reputation. Often when a contractor hears that it is an insuranc 
							claim they will bump up the price, which could affect your claim. So the extra 
							time spent on finding a reputable company is worth it. Don't agree to a final 
							insurance claim settlement until you are satisfied that it is fair.
						</li>
					</ol>
				</div>
				<br>
			</li>
		</ul>
	</body>
</HTML>
