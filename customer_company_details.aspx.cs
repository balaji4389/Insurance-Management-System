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
	/// Summary description for customer_company_details.
	/// </summary>
	public partial class customer_company_details : System.Web.UI.Page
    { 
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		SqlCommand cm;
		DataSet ds=new DataSet();

		int j;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			int i;
			i=Convert.ToInt32(Session["customer_id"]);
			da= new SqlDataAdapter("select company_id ,company_name, company_address,company_email,company_phone from insurance_companies_master where company_id in (select company_id from policies_master where policy_id in(select policy_id from cust_policies_master where cust_id="+i+")) ",con);
			da.Fill(ds,"cust_company");
			filldata();
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
			j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			Session["company_id"]=j.ToString();
			Response.Redirect("coustomer_policy_details.aspx");

		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
		DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}
	}
}
