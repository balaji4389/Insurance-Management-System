<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="_Default" EnableEventValidation ="false"  %>





<%@ Register Src="bannercontrol.ascx" TagName="bannercontrol" TagPrefix="uc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>company details Page</title>
</head>
<body style="position: absolute">
    <form id="form1" runat="server">
    <div style="text-align: center">
        &nbsp;<uc1:bannercontrol ID="Bannercontrol1" runat="server" />
        &nbsp; &nbsp;<table style="left: -6px; width: 768px; position: relative; top: 8px;
            height: 152px">
            <tr>
                <td rowspan="1" style="width: 165px">
                </td>
                <td rowspan="1" style="width: 611px; text-align: left">
                </td>
                <td rowspan="1" style="width: 100px">
                </td>
            </tr>
            <tr>
                <td rowspan="1" style="width: 165px">
                </td>
                <td rowspan="1" style="width: 611px; text-align: left">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/HomePage.aspx" Style="left: 208px;
                        position: relative; top: 0px">Home</asp:HyperLink></td>
                <td rowspan="1" style="width: 100px">
                </td>
            </tr>
            <tr>
                <td rowspan="7" style="width: 165px">
                    <img src="IMAGES/CAV75GUN.jpg" style="left: 0px; width: 168px; position: relative;
                        top: 8px; height: 184px" /></td>
                <td rowspan="2" style="width: 611px; text-align: left; height: 33px;">
                    <strong><span style="font-size: 16pt; text-decoration: underline">LIFE INSURERS:</span></strong></td>
                <td rowspan="7" style="width: 100px">
                    <img src="IMAGES/CAYW8KDK.jpg" style="left: 0px; width: 168px; position: relative;
                        top: 0px; height: 192px" /></td>
            </tr>
            <tr>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton1" runat="server" Font-Size="8pt" OnClick="LinkButton1_Click"
                        Style="position: relative">ALLIANZ BAJAJ LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton2" runat="server" Font-Size="8pt" OnClick="LinkButton2_Click"
                        Style="position: relative">AMP SANMAR ASSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton3" runat="server" Font-Size="8pt" OnClick="LinkButton3_Click"
                        Style="position: relative">BIRLA SUN LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton4" runat="server" Font-Size="8pt" OnClick="LinkButton4_Click"
                        Style="position: relative">DABUR CGU LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton5" runat="server" Font-Size="8pt" OnClick="LinkButton5_Click"
                        Style="position: relative">HDFC STANDARD LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 165px; height: 21px">
                </td>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton6" runat="server" Font-Size="8pt" OnClick="LinkButton6_Click"
                        Style="position: relative">ICICI PRUDENTIAL LIFE INSURANCE</asp:LinkButton></td>
                <td style="width: 100px; height: 21px">
                </td>
            </tr>
            <tr>
                <td rowspan="8" style="width: 165px">
                    <img src="IMAGES/CAG1KBQV.jpg" style="width: 168px; position: relative" /></td>
                <td style="width: 611px; text-align: left">
                    <asp:LinkButton ID="LinkButton7" runat="server" Font-Size="8pt" OnClick="LinkButton7_Click"
                        Style="position: relative">ING VYSYA LIFE INSURANCE</asp:LinkButton></td>
                <td rowspan="8" style="width: 100px">
                    <img src="IMAGES/CA6BWTE7.jpg" style="left: 4px; width: 160px; position: relative;
                        top: 0px; height: 216px" /></td>
            </tr>
            <tr>
                <td style="width: 611px; text-align: left">
                    <asp:LinkButton ID="LinkButton8" runat="server" Font-Size="8pt" OnClick="LinkButton8_Click"
                        Style="position: relative">LIFE INSURANCE CORPORATION OF INDIA</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; text-align: left">
                    <asp:LinkButton ID="LinkButton9" runat="server" Font-Size="8pt" OnClick="LinkButton9_Click"
                        Style="position: relative">MAX NEW YORK LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 13px; text-align: left">
                    <asp:LinkButton ID="LinkButton10" runat="server" Font-Size="8pt" OnClick="LinkButton10_Click"
                        Style="position: relative; left: 0px;">METLIFE INDIA INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px; text-align: left">
                    <asp:LinkButton ID="LinkButton11" runat="server" Font-Size="8pt" OnClick="LinkButton11_Click"
                        Style="position: relative">OM KOTAK MAHINDRA LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; text-align: left">
                    <asp:LinkButton ID="LinkButton12" runat="server" Font-Size="8pt" OnClick="LinkButton12_Click"
                        Style="position: relative">SBI LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 34px; text-align: left">
                    <asp:LinkButton ID="LinkButton13" runat="server" Font-Size="8pt" OnClick="LinkButton13_Click"
                        Style="left: 0px; position: relative; top: -14px">TATA AIG LIFE INSURANCE</asp:LinkButton></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 21px">
                </td>
            </tr>
            <tr>
                <td style="width: 165px">
                </td>
                <td rowspan="2" style="width: 611px; text-align: left">
                    <strong><span style="font-size: 16pt; text-decoration: underline">NON-LIFE INSURERS:</span></strong></td>
                <td style="width: 100px">
                </td>
            </tr>
            <tr>
                <td rowspan="8" style="width: 165px">
                    <img src="IMAGES/CAI34DY7.jpg" style="left: 0px; width: 168px; position: relative;
                        top: -12px; height: 192px" /></td>
                <td rowspan="7" style="width: 100px">
                    <img src="IMAGES/CA41U1YJ.jpg" style="left: 0px; width: 168px; position: relative;
                        top: 0px; height: 192px" /></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; text-align: left">
                    <span style="font-size: 8pt">1. BAJAJ ALLIANZ GENERAL INSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; height: 21px; text-align: left">
                    <span style="font-size: 8pt">2. ICICI LOMBARD GENERAL INSURANCE CO. LTD. </span>
                </td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; text-align: left">
                    <span style="font-size: 8pt">3. IFFCO TOKYO GENERAL INSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; text-align: left">
                    <span style="font-size: 8pt">4. NATIONAL INSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; text-align: left">
                    <span style="font-size: 8pt">5. NEW INDIA ASSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; height: 4px; text-align: left">
                    <span style="font-size: 8pt">6. ORIENTAL INSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; height: 29px; text-align: left">
                    <span style="font-size: 8pt">7. RELIANCE GENERAL INSURANCE CO. LTD.</span></td>
                <td style="width: 100px; height: 29px">
                </td>
            </tr>
            <tr>
                <td rowspan="4" style="width: 165px">
                    <img src="IMAGES/CA2BCDEV.jpg" style="left: 0px; width: 168px; position: relative;
                        top: 0px; height: 144px" /></td>
                <td style="width: 611px; color: blue; height: 29px; text-align: left">
                    <span style="font-size: 8pt">8. ROYAL SUNDARAM ALLIANCE INSURANCE CO. LTD.</span></td>
                <td rowspan="4" style="width: 100px">
                    <img id="IMG1" onclick="return IMG1_onclick()" src="IMAGES/contentPic1.jpg" style="left: 0px;
                        width: 168px; position: relative; top: 0px; height: 144px" /></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; height: 32px; text-align: left">
                    <span style="font-size: 8pt">9. TATA AIG LIFE INSURANCE CO. LTD.</span></td>
            </tr>
            <tr>
                <td style="width: 611px; color: blue; height: 29px; text-align: left">
                    <span style="font-size: 8pt">10. UNITED INDIA INSURANCE CO. LTD</span></td>
            </tr>
            <tr>
                <td style="width: 611px; height: 26px;">
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
