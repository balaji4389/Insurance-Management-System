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
	/// Summary description for policytype_master.
	/// </summary>
	public partial class policytype_master : System.Web.UI.Page
    {
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
      SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;	
		SqlCommand cmd;
		DataSet ds=new DataSet();
		SqlCommandBuilder cb;
//		SqlDataReader dr;
		
		DataRow r;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
			da=new SqlDataAdapter("select * from policy_type_master",con);
			da.Fill(ds,"policy");
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
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
           	
		}
		//save button
		protected void Button2_Click(object sender, System.EventArgs e)
        {
            try
            {


                r = ds.Tables["policy"].NewRow();
                Session["policy_type_id"] = TextBox1.Text;
                r[0] = Convert.ToInt32(TextBox1.Text);

                r[1] = TextBox2.Text.ToString();
                r[2] = TextBox3.Text.ToString();
                ds.Tables["policy"].Rows.Add(r);
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policy");
                filldata();
                //Response.Redirect("policy_ref_type_field.aspx");
                Response.Redirect("policies_registration.aspx");
            }
            catch { }
            {
                message("you missed some fields");
            }
            //			DataGrid1.Visible=true;
            //			Panel1.Visible=false;


        }

		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
				filldata();
           
		}
		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            try
            {
                TextBox a = (TextBox)e.Item.Cells[0].Controls[0];
                TextBox b = (TextBox)e.Item.Cells[1].Controls[0];
                TextBox c = (TextBox)e.Item.Cells[2].Controls[0];
                int rownumber;
                rownumber = e.Item.ItemIndex;
                r = ds.Tables["policy"].Rows[rownumber];
                r[0] = a.Text;
                r[1] = b.Text;
                r[2] = c.Text;
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policy");
                DataGrid1.EditItemIndex = -1;
                filldata();
            }
            catch { }
            {
                
            }


        }
	private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
    {
        try
        {
            int a;
            a = e.Item.ItemIndex;
            ds.Tables["policy"].Rows[a].Delete();
            cb = new SqlCommandBuilder(da);
            da.Update(ds, "policy");
            filldata();
        }
        catch { }
        {
            message("First delete the related policies and references");
        }


    }
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }
//new record
		protected void Button3_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=false;
			Button3.Visible=false;
			Panel1.Visible=true;
			if(con.State==ConnectionState.Open)
			{
				con.Close();
                
			}
			con.Open();
			int id;
			cmd=new SqlCommand("select count(*) from policy_type_master",con);
			id=Convert.ToInt32(cmd.ExecuteScalar());
			
			con.Close();
			if (id==0)
			{
				TextBox1.Text="1";
			}
			else
			{
				con.Open();
				cmd=new SqlCommand("exec max_policy_type",con);
				TextBox1.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
			}
			con.Close();
			TextBox2.Text="";
			TextBox3.Text="";
			
			
			}
			
			
	
//cancel
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Button3.Visible=true;
			Panel1.Visible=false;		
		}

		private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			
			DataGrid1.EditItemIndex =-1;
			filldata();
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
				
			filldata();
		}

		}

}
