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
        string j = "ALLIANZ BAJAJ LIFE INSURANCE";
        string k = "AMP SANMAR ASSURANCE";
        string l = "BIRLA SUN LIFE INSURANCE";
        string m = "DABUR CGU LIFE INSURANCE";
        string n = "HDFC STANDARD LIFE INSURANCE";
        string o = "ICICI PRUDENTIAL LIFE INSURANCE";
        string p = "ING VYSYA LIFE INSURANCE";
        string q = "LIFE INSURANCE CORPORATION OF INDIA";
        string r = "MAX NEW YORK LIFE INSURANCE";
        string s = "METLIFE INDIA INSURANCE";
        string t = "OM KOTAK MAHINDRA LIFE INSURANCE";
        string u = "SBI LIFE INSURANCE";
        string v = "TATA AIG LIFE INSURANCE";

       
       if (j == Session["id1"].ToString ())
       {
           Panel1.Visible = true;
           Image1.Visible = true;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (k == Session["id1"].ToString())
       {
           Panel1.Visible = false ;
           Image1.Visible = false ;
           Panel2.Visible = true ;
           Image2.Visible = true ;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (l == Session["id1"].ToString())
       {
           Panel1.Visible = false ;
           Image1.Visible = false ;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = true ;
           Image3.Visible = true;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (m == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false ;
           Image3.Visible = false ;
           Panel4.Visible = true ;
           Image4.Visible = true ;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (n == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = true ;
           Panel5.Visible = true;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (o == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = true;
           Panel6.Visible = true;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (p == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = true;
           Panel7.Visible = true;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (q == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = true;
           Panel8.Visible = true;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (r == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = true;
           Panel9.Visible = true;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (s == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = true;
           Panel10.Visible = true;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (t == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = true;
           Panel11.Visible = true;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (u == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = true;
           Panel12.Visible = true;
           Image13.Visible = false;
           Panel13.Visible = false;
       }
       if (v == Session["id1"].ToString())
       {
           Panel1.Visible = false;
           Image1.Visible = false;
           Panel2.Visible = false;
           Image2.Visible = false;
           Panel3.Visible = false;
           Image3.Visible = false;
           Panel4.Visible = false;
           Image4.Visible = false;
           Image5.Visible = false;
           Panel5.Visible = false;
           Image6.Visible = false;
           Panel6.Visible = false;
           Image7.Visible = false;
           Panel7.Visible = false;
           Image8.Visible = false;
           Panel8.Visible = false;
           Image9.Visible = false;
           Panel9.Visible = false;
           Image10.Visible = false;
           Panel10.Visible = false;
           Image11.Visible = false;
           Panel11.Visible = false;
           Image12.Visible = false;
           Panel12.Visible = false;
           Image13.Visible = true;
           Panel13.Visible = true;
       }
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void LinkButton4_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
    protected void LinkButton5_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }    
}