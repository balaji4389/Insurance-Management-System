<%@ Page language="c#" Inherits="insurancenew.Cust_Payments" CodeFile="Cust_Payments.aspx.cs" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>Cust_Registration</title>
		<meta content="False" name="vs_showGrid">
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
	
<script language="javascript" type="text/javascript">
// <!CDATA[

function TABLE1_onclick() {

}

// ]]>
</script>
</HEAD>
	<body>
		<form id="Form1" method="post" runat="server">
            &nbsp;
			<asp:Label id="Label10" style="Z-INDEX: 102; LEFT: 181px; POSITION: absolute; TOP: 103px; color: #ffffff; background-color: steelblue;" runat="server"
				Width="164px" Font-Bold="True" Font-Names="Verdana" Font-Size="Small" Font-Underline="True"
				ForeColor="Black">PremiumPayments</asp:Label>
            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            <table style="left: 93px; position: relative; top: 98px; color: #003300; background-color: whitesmoke; border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid; width: 296px;" id="TABLE1" onclick="return TABLE1_onclick()">
                <tr>
                    <td style="width: 153px; text-align: right">
                        <asp:Label ID="Label1" runat="server" Style="position: relative" Text="Avail Bal"></asp:Label></td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox13" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        CustomerID:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox1" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        CustomerName:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox2" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        AgentID::</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox3" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; height: 21px; text-align: right">
                        PolicyNo:</td>
                    <td colspan="3" style="height: 21px">
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                            Width="153px">
                            <asp:ListItem>SELECT</asp:ListItem>
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        CompanyID:</td>
                    <td colspan="3">
                        &nbsp;<asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox4_TextChanged"
                            ReadOnly="True" Style="z-index: 100; left: 0px; position: relative; top: 0px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: center">
                        &nbsp;CreditCard Type:</td>
                    <td colspan="3"><asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"
                            Width="153px" style="left: 0px; position: relative; top: 0px">
                        <asp:ListItem>Visa</asp:ListItem>
                        <asp:ListItem>Master</asp:ListItem>
                        <asp:ListItem>gold card</asp:ListItem>
                        <asp:ListItem>American Express</asp:ListItem>
                    </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right; height: 26px;">
                        Creditcard No:</td>
                    <td colspan="3" style="height: 26px">
                        <asp:TextBox ID="TextBox8" runat="server" Style="position: relative" OnTextChanged="TextBox8_TextChanged"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right; height: 42px;">
                        Validity:</td>
                    <td style="width: 29px; height: 42px;">
                        <asp:DropDownList ID="DropDownList3" runat="server" Style="left: 0px; position: relative;
                            top: 0px" Width="64px">
                        </asp:DropDownList><asp:DropDownList ID="DropDownList4" runat="server" Style="left: 0px;
                            position: relative; top: 0px" Width="64px">
                        </asp:DropDownList></td>
                    <td style="width: 5px; height: 42px;">
                        to</td>
                    <td style="width: 77px; height: 42px;">
                        <asp:DropDownList ID="DropDownList5" runat="server" Style="left: 0px; position: relative;
                            top: 0px" Width="56px">
                        </asp:DropDownList><asp:DropDownList ID="DropDownList6" runat="server" Style="left: 0px;
                            position: relative; top: 0px" Width="56px">
                        </asp:DropDownList></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        Date Of Register:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox11" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td style="width: 153px; text-align: right">
                        PremiumAmount:</td>
                    <td colspan="3">
                        <asp:TextBox ID="TextBox12" runat="server" Style="position: relative" ReadOnly="True"></asp:TextBox></td>
                </tr>
                <tr>
                    <td colspan="4" style="text-align: center">
                        <asp:LinkButton ID="LinkButton2" runat="server" Style="left: 0px; position: relative;
                            top: 0px" OnClick="LinkButton2_Click">Submit</asp:LinkButton></td>
                </tr>
                <tr>
                    <td colspan="4" style="height: 8px">
                    </td>
                </tr>
            </table>
            &nbsp;
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox8"
                ErrorMessage="RequiredFieldValidator" Style="left: 393px; position: relative;
                top: -75px">Fill the Number</asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox8"
                ErrorMessage="RangeValidator" MaximumValue="9999999999999999" MinimumValue="1000000000000000"
                Style="left: 290px; position: relative; top: -75px" Type="Double">Enter 16 numbers without gaps</asp:RangeValidator>&nbsp;
		</form>
	</body>
</HTML>
