using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton1.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton4.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton2.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton3.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton5.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton6_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton6.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton7_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton7.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton8_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton8.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton9.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton10_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton10.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton11_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton11.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton12_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton12.Text;
        Server.Transfer("Default.aspx");
    }
    protected void LinkButton13_Click(object sender, EventArgs e)
    {
        Session["id1"] = LinkButton13.Text;
        Server.Transfer("Default.aspx");
    }
}
