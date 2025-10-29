<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table style="border-right: steelblue thin groove; border-top: steelblue thin groove;
            left: -10px; border-left: steelblue thin groove; width: 100%; border-bottom: steelblue thin groove;
            position: relative; top: 45px; height: 5%; background-color: steelblue">
            <tr>
                <td style="width: 100px; height: 11px">
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="True" ForeColor="White"
                        NavigateUrl="~/HomePage.aspx" Style="left: 344px; position: relative; top: 17px">Home</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink2" runat="server" Font-Bold="True" ForeColor="White"
                        NavigateUrl="~/Default.aspx" Style="left: 400px; position: relative; top: 17px">Back</asp:HyperLink>
                    <asp:HyperLink ID="HyperLink3" runat="server" Font-Bold="True" ForeColor="White"
                        NavigateUrl="~/Details.aspx" Style="left: 528px; position: relative; top: -2px">Companies</asp:HyperLink></td>
            </tr>
        </table>
        <img src="IMAGES/Insbnr.gif" style="left: -4px; position: relative; top: -64px" />
        <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None"
            Height="121px" Style="left: -8px; position: relative; top: 26px" Width="149px">
            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
            <EditRowStyle BackColor="#999999" />
            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
