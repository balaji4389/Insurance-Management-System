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
	/// Summary description for Insu_CompanyDetails.
	/// </summary>
	public partial class Insu_CompanyDetails : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        SqlDataAdapter da;
		SqlCommandBuilder cmb;
		DataSet ds=new DataSet();
		DataRow r;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("select * from insurance_companies_master",con);
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
			this.DataGrid2.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_EditCommand);
			this.DataGrid2.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_UpdateCommand);
			this.DataGrid2.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid2_DeleteCommand);

		}
		#endregion
		private void filldata()
		{
						
			DataGrid2.DataSource=ds;
			DataGrid2.DataBind();
			
		}

		private void DataGrid2_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid2.EditItemIndex=e.Item.ItemIndex;
			filldata();
		}

		private void DataGrid2_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			TextBox a=(TextBox)e.Item.Cells[0].Controls[0];
			TextBox b=(TextBox)e.Item.Cells[1].Controls[0];
			TextBox c=(TextBox)e.Item.Cells[2].Controls[0];
			TextBox d=(TextBox)e.Item.Cells[3].Controls[0];
			TextBox i=(TextBox)e.Item.Cells[4].Controls[0];
			TextBox f=(TextBox)e.Item.Cells[5].Controls[0];
			TextBox g=(TextBox)e.Item.Cells[6].Controls[0];
			
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["insurance_companies_master"].Rows[rownumber];
			r[0]=a.Text;
			r[1]=b.Text;
			r[2]=c.Text;
			r[3]=d.Text;
			r[4]=i.Text;
			r[5]=f.Text;
			r[6]=g.Text;
			
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"insurance_companies_master");
			DataGrid2.EditItemIndex=-1;
			filldata();
		
		}

		private void DataGrid2_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			int a;
			a=e.Item.ItemIndex;
			ds.Tables["insurance_companies_master"].Rows[a].Delete();
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"insurance_companies_master");
			filldata();
            
		}
		

	}
}
