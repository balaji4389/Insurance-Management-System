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
	/// Summary description for DependentDetails.
	/// </summary>
	public partial class DependentDetails : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		DataSet ds=new DataSet();

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            da = new SqlDataAdapter("select * from cust_dependent_master ",con );
                //where cust_id in (select cust_id from cust_policies_master where cust_policy_no=custo_policy_no='" + Session["customer_policy_no"].ToString() + "' ", con);
			da.Fill(ds,"cust_dependent_master");
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
		DataGrid2.DataSource=ds;
			DataGrid2.DataBind();
		}
	}
}
