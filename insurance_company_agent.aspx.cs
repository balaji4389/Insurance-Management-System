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
	/// Summary description for insurance_company_agent.
	/// </summary>
	public partial class insurance_company_agent : System.Web.UI.Page
	{
        //SqlConnection cn=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
        SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;	
		SqlCommand cmd1;
		DataSet ds=new DataSet();
		SqlCommandBuilder cb;
		SqlDataReader dr;
		DataRow r;
		int a;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			cmd1=new SqlCommand("select agent_id from insu_companies_agent_master where agent_accepted_date is null",cn);
			cn.Open();
			if(Convert.ToInt32(cmd1.ExecuteScalar())==0)
			{
				msg("No Agents for Acceptattion");
				cn.Close();
			}
			else
			{
				cn.Close();
				da=new SqlDataAdapter("select * from insu_companies_agent_master where agent_accepted_date is null",cn);
				da.Fill(ds,"agent_policy");
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);

		}
		#endregion
		private void msg(string message)
		{
		this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");

		}
		private void filldata()
		{
			
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		
		}
		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int i;
			int j;
			i=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);
			j=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[1].Text);
			TextBox1.Text=i.ToString();
			TextBox2.Text=j.ToString();
			TextBox3.Text=DateTime.Now.ToString();
			Panel1.Visible=true;
			DataGrid1.Visible=false;
			
		}

		protected void Button1_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			


		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			
			cmd1=new SqlCommand("update insu_companies_agent_master set agent_accepted_date='"+ Convert.ToDateTime(TextBox3.Text) +"' where company_id="+ Convert.ToInt32(TextBox1.Text)+" and agent_id="+Convert.ToInt32(TextBox2.Text)+"",cn);
			cn.Open();
			cmd1.ExecuteNonQuery();
			filldata();
			
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}

	}
}
