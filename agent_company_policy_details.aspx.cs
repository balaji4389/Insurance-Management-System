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


namespace sample
{
	/// <summary>
	/// Summary description for agent_company_policy_details.
	/// </summary>
	public partial class agent_company_policy_details : System.Web.UI.Page
	{
       //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        //SqlConnection con=new SqlConnection("user id=sa;password=;database=newinsurance;data source=server");
		SqlDataAdapter da;
		SqlCommand cm;
		DataSet ds=new DataSet();

		int i;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			i=Convert.ToInt32(Session["agent_id"]);
			da= new SqlDataAdapter("select company_id,company_name,company_phone,company_email,comapny_website_link from insurance_companies_master where company_id in(select company_id from insu_companies_agent_master where agent_id="+ i +" and agent_accepted_date is not null)",con);
			da.Fill(ds,"company_master");
			filldata();
//			DataGrid2.Visible=false;

					
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion
		private void filldata()
		{
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int j;
			j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			Session["company_id"]=j.ToString();
			Response.Redirect("agent_policies_details.aspx");


//			DataGrid1.Visible=false;
//			DataGrid2.Visible=true;
			

		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}

	}
}
