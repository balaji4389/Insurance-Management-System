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
	/// Summary description for CustomerDetails.
	/// </summary>
	public partial class CustomerDetails : System.Web.UI.Page
    { 
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		//SqlCommandBuilder cmb;
		DataSet ds=new DataSet();
		DataRow r;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("select * from customer_master",con);
			da.Fill(ds,"customer_master");
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
