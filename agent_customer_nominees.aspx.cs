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
	/// Summary description for agent_customer_nomines.
	/// </summary>
	public partial class agent_customer_nomines : System.Web.UI.Page
    { 
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		//SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
		SqlDataAdapter da;
		DataSet ds;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
		da=new SqlDataAdapter("select nominee_name,nominee_address,nominee_email,nominee_relationaship,custo_policy_no from nominee_details where custo_policy_no='"+Session["customer_policy_no"].ToString()+"'",con);
		ds=new DataSet();
		da.Fill(ds,"nominee");
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

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();

		}
	}
}
