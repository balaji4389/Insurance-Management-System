using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;


namespace insurancenew
{
	/// <summary>
	/// Summary description for CompanyRegistration.
	/// </summary>
	public partial class CompanyRegistration : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
        SqlCommand cmd;
		DataSet ds=new DataSet();
	
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("exec insurance_companies_select",con);
			da.Fill(ds,"insurance_companies_master");
			if(Page.IsPostBack==false)
			{
			filldata();
			}
		}

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion
		private void filldata()
		{
			
			int count;
			if(con.State==ConnectionState.Open)
			{
			con.Close();
			}
			con.Open();
			cmd=new SqlCommand("select max(company_id)+1 from insurance_companies_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
			if(count==0)
			{
				txt_company_id.Text="1";
			}
			else
			{
			txt_company_id.Text=count.ToString();
			}

		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
            SqlCommand com = new SqlCommand("insert into insurance_companies_master values(" + txt_company_id.Text + ",'" + txt_company_name.Text + "','" + txt_company_addr.Text + "','" + txt_email.Text + "','" + txt_phone.Text + "','" + txt_fax.Text + "','" + txt_website.Text + "')", con);
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            
			
			Response.Redirect("WebForm1.aspx");
		}
		
	}
}
