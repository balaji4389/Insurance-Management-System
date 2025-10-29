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
	/// Summary description for agent_company_reg.
	/// </summary>
	public partial class agent_company_reg : System.Web.UI.Page
	{
       //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        //SqlConnection con=new SqlConnection("user id=sa;password=;database=newinsurance;data source=server");
		SqlDataAdapter da;
		SqlCommand cm;
		DataSet ds=new DataSet();
		DataRow r;
		SqlCommandBuilder cb;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			int i;
			i=Convert.ToInt32(Session["agent_id"]);
			TextBox2.Text=i.ToString();
			da= new SqlDataAdapter("select company_id,company_name,company_phone,company_email,comapny_website_link from insurance_companies_master ",con);
			da.Fill(ds,"company_master");
			filldata();
            Label3.Visible = false;
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

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("select company_id,agent_id from insu_companies_agent_master",con);
			da.Fill(ds,"insu_company");

			r=ds.Tables["insu_company"].NewRow();
			r[0]=Convert.ToInt32(TextBox1.Text);
			r[1]=Convert.ToInt32(TextBox2.Text);
			ds.Tables["insu_company"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"insu_company");
            Label3.Visible = true;
            Label3.Text = "Authorization will be provided within 24hours";
			
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int j;
			j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			Panel1.Visible=true;
			DataGrid1.Visible=false;
			TextBox1.Text=j.ToString();

		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}
	}
}
