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
	/// Summary description for policy_ref_type_field.
	/// </summary>
	public partial class policy_ref_type_field : System.Web.UI.Page
    {
        //SqlConnection cn=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
        SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;	
		DataSet ds=new DataSet();
		SqlCommandBuilder cb;
//		SqlDataReader dr;
		SqlCommand cmd1;
		DataRow r;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
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
		private void filldata()
		{
            DataSet ds = new DataSet();
            da = new SqlDataAdapter("select * from policy_ref_type_master", cn);
            da.Fill(ds, "policy_ref");
		    DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
           	
		}

		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();
		}

		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
           
            da = new SqlDataAdapter("select * from policy_ref_type_master", cn);
            da.Fill(ds, "policy_ref");
			
			TextBox a=(TextBox)e.Item .Cells [0].Controls [0];
			TextBox b=(TextBox)e.Item .Cells [1].Controls [0];
			TextBox c=(TextBox)e.Item .Cells [2].Controls [0];
			TextBox d=(TextBox)e.Item .Cells [3].Controls [0];
			int rownumber;
			rownumber=e.Item.ItemIndex;
            r = ds.Tables["policy_ref"].Rows[rownumber];
			r[0]=a.Text;
			r[1]=b.Text;
			r[2]=c.Text;
			r[3]=d.Text;

			cb=new SqlCommandBuilder(da);
            da.Update(ds, "policy_ref");
			DataGrid1.EditItemIndex=-1;
			filldata();
                    	
		}

		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
            da = new SqlDataAdapter("select * from policy_ref_type_master", cn);
            da.Fill(ds, "policy_ref");
			int a;
			a=e.Item.ItemIndex;
            ds.Tables["policy_ref_type_master"].Rows[a].Delete();
			cb=new SqlCommandBuilder(da);
            da.Update(ds, "policy_ref");
			filldata();
           
		}

		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex =-1;
			filldata();
		}
//save record
		protected void Button2_Click(object sender, System.EventArgs e)
		{
				
			r=ds.Tables["policy_ref"].NewRow();
			r[0]=Convert.ToInt32(TextBox1.Text);
			r[1]=TextBox2.Text.ToString();
			r[2]=TextBox3.Text.ToString();
			r[3]=TextBox4.Text.ToString();
			ds.Tables["policy_ref"].Rows.Add(r);
			cb=new SqlCommandBuilder(da);
			da.Update(ds,"policy_ref_type_master");
			filldata();
			Response.Redirect("Webform1.aspx");
		
   		            
		}
//new record
		protected void Button3_Click(object sender, System.EventArgs e)
        {
            DataGrid1.Visible = false;
            Panel1.Visible = true;
            Button3.Visible = false;

            if (cn.State == ConnectionState.Open)
            {
                cn.Close();

            }
            cn.Open();
            int id;
            cmd1 = new SqlCommand("select count(*) from policy_ref_type_master", cn);
            id = Convert.ToInt32(cmd1.ExecuteScalar());

            cn.Close();
            if (id == 0)
            {
                TextBox1.Text = "1";
            }

            else
            {

                cn.Open();
                cmd1 = new SqlCommand("exec max_policy_ref_id", cn);
                TextBox1.Text = Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
            }
            cn.Close();
            try
            {

                TextBox2.Text = Session["policy_type_id"].ToString();
            }
            catch { }
            {
                message("You don't have a new policy type id");
            }

            TextBox3.Text = "";
            TextBox4.Text = "";



        }
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }
//reenter
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			Button3.Visible=true;
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();

		}

	
	

	
		}
	
}
