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
	/// Summary description for agent_customer_details.
	/// </summary>
	public partial class agent_customer_details : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        //SqlConnection con=new SqlConnection("user id=sa;password=;database=newinsurance;data source=server");
		SqlDataAdapter da;
				SqlCommand cm;
		DataSet ds=new DataSet();
		string k;
		string l;
		
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			//string i;
			da=new SqlDataAdapter("select a.cust_policy_no,b.cust_name,c.policy_name,a.policy_date,a.policy_amount,a.policy_prem_amount,a.policy_prem_pay_mode,a.policy_prem_amount,a.policy_prem_months,a.nominee_status from cust_policies_master a,policies_master c,customer_master b where agent_id='"+Session["agent_id"]+"' and a.cust_id=b.cust_id and a.policy_id=c.policy_id",con);
			da.Fill(ds,"customer");
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
			k=Convert.ToString (DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			l=DataGrid1.Items[DataGrid1.SelectedIndex].Cells[8].Text;
			Session["customer_policy_no"]=k;
			if (l=="yes")
			{
				Response.Redirect("agent_customer_nominees.aspx");
			}
			else
			{
				msg("They Are No Nominees");
			}


			

		}
		private void msg(string message)
		{
			this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
			
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}






        protected void Button1_Click(object sender, EventArgs e)
        {
            //k = Convert.ToString(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
            Server.Transfer("DependentDetails.aspx");
			
        }
}
}
