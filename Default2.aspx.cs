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
using System.Data.SqlClient;

public partial class Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True");
   	
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlDataAdapter cmd = new SqlDataAdapter("select * from policies_master where company_id in (select company_id from insurance_companies_master where company_name='" + Session["id1"] + "')", con);
        con.Open();
        DataSet ds = new DataSet();
        cmd.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        con.Close();
        
        
    }
}
