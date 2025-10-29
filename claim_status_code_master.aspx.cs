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
	/// Summary description for claim_status_code_master.
	/// </summary>
	public partial class claim_status_code_master : System.Web.UI.Page
	{
       //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;	
		SqlCommand cmd1;
		DataSet ds=new DataSet();
		SqlCommandBuilder cb;
		SqlDataReader dr;
		//SqlConnection con=new SqlConnection("user id=sa;password=;database=newinsurance;data source=server");
		DataRow r;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			da=new SqlDataAdapter("exec claim_select",con);
			da.Fill(ds,"status");
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
			this.DataGrid1.PageIndexChanged += new System.Web.UI.WebControls.DataGridPageChangedEventHandler(this.DataGrid1_PageIndexChanged);
			this.DataGrid1.CancelCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_CancelCommand);
			this.DataGrid1.EditCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_EditCommand);
			this.DataGrid1.UpdateCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_UpdateCommand);
			this.DataGrid1.DeleteCommand += new System.Web.UI.WebControls.DataGridCommandEventHandler(this.DataGrid1_DeleteCommand);

		}
		#endregion

		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();
		}
		private void filldata()
		{
			
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		
		}

		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			TextBox a=(TextBox)e.Item .Cells [0].Controls [0];
			TextBox b=(TextBox)e.Item .Cells [1].Controls [0];
			
			int rownumber;
			rownumber=e.Item.ItemIndex;
			r=ds.Tables["status"].Rows[rownumber];
			r[0]=a.Text;
			r[1]=b.Text;
			
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"status");
			DataGrid1.EditItemIndex=-1;
			filldata();
		}

		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            try
            {

                int a;
                a = e.Item.ItemIndex;
                ds.Tables["status"].Rows[a].Delete();
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "status");
                filldata();
            }
            catch { }
            {
                message("Customer is claimed. so please delete that claim .Then only..."); 

            }
        }
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }

		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex =-1;
			filldata();
		}

		protected void Button3_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=false;
			Panel1.Visible=true;
			int id;
			if(con.State==ConnectionState.Open)
			{
				con.Close();
                
			}
			con.Open();
			cmd1=new SqlCommand("select count(*) from claim_status_code",con);
			id=Convert.ToInt32(cmd1.ExecuteScalar());
			con.Close();
			if (id==0)
			{
				TextBox1.Text="1";
			}

			else
			{
				con.Open();
				cmd1=new SqlCommand("exec max_claim_status1",con);
				TextBox1.Text=Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
			}
			con.Close();
			TextBox2.Text="";
		

			
		}

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			r=ds.Tables["status"].NewRow();
			r[0]=Convert.ToInt32(TextBox1.Text);
			r[1]=TextBox2.Text.ToString();
		
			ds.Tables["status"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"status");
			filldata();
			DataGrid1.Visible=true;
			Panel1.Visible=false;
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




