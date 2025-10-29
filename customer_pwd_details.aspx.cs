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
	/// Summary description for customer_pwd_details.
	/// </summary>
	public partial class customer_pwd_details : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        SqlDataAdapter da;
		DataSet ds=new DataSet();
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			int j;
			j=Convert.ToInt32(Session["customer_id"]);
			da=new SqlDataAdapter("select * from customer_security_master where cust_id="+j+"",con);
			da.Fill(ds,"cust_pwd");
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
