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
	/// Summary description for policies_registration.
	/// </summary>
	public partial class policies_registration : System.Web.UI.Page
    {
        //SqlConnection cn=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		SqlCommand cmd1;
		SqlCommandBuilder cb;
		DataRow p;
		DataSet ds=new DataSet();
		
//		SqlDataReader dr;
		

		// Filling DataGrid And DropDownList1,DropDownList2 in Panel
       
		protected void Page_Load(object sender, System.EventArgs e)
		{
            //DropDownList2.Items.Add("sel");
            
            //if (!IsPostBack)
            //{
                
            //    for (int i = 1; i <= 12; i++)
            //        DropDownList2.Items.Add(i.ToString ());
                
            //}
            //DropDownList3.Items.Clear();
            //for (int j = 1960; j < 2007; j++)
            //    DropDownList3.Items.Add(j.ToString());
            Panel2.Visible = false;
			if(Page.IsPostBack==false)
			{	
				
//				da.Fill(ds,"policies_master");
				
				filldata();
			}
            if (!IsPostBack)
            {
                da = new SqlDataAdapter("select policy_type_field_id from policy_type_master", cn);
                dr_policy_type.Items.Clear();
                da.Fill(ds);
                dr_policy_type.DataSource = ds;

                dr_policy_type.DataTextField = "policy_type_field_id";
                dr_policy_type.DataValueField = "policy_type_field_id";
                dr_policy_type.DataBind();
                da = new SqlDataAdapter("select company_id from insurance_companies_master ", cn);
                dr_company_id.Items.Clear();
                da.Fill(ds);
                dr_company_id.DataSource = ds;
                dr_company_id.DataTextField = "company_id";
                dr_company_id.DataValueField = "company_id";
                dr_company_id.DataBind();

            }		
	
		}
//Binding Data With DataGrid

		private void filldata()
		{
//			cn.Open(); 
			DataSet ds=new DataSet();
			da=new SqlDataAdapter("select * from Policies_master",cn);
			da.Fill(ds,"policies_master");
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
			
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
		
		
// DataGrid Edit Command
	
		private void DataGrid1_EditCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
			DataGrid1.EditItemIndex=e.Item.ItemIndex;
			filldata();

		}
//DataGrid Row Update
		private void DataGrid1_UpdateCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
		{
            da = new SqlDataAdapter("select policy_name,policy_desc from Policies_master", cn);
            da.Fill(ds, "policies_master");
            TextBox pol_id = (TextBox)e.Item.Cells[0].Controls[0];
            TextBox pol_name = (TextBox)e.Item.Cells[1].Controls[0];
            TextBox pol_launch_date = (TextBox)e.Item.Cells[2].Controls[0];
            TextBox pol_typeid = (TextBox)e.Item.Cells[3].Controls[0];
            TextBox pol_minv = (TextBox)e.Item.Cells[4].Controls[0];
            TextBox pol_maxv = (TextBox)e.Item.Cells[5].Controls[0];
            TextBox pol_min_al = (TextBox)e.Item.Cells[6].Controls[0];
            TextBox pol_max_al = (TextBox)e.Item.Cells[7].Controls[0];
            TextBox pol_compid = (TextBox)e.Item.Cells[8].Controls[0];
            TextBox pol_desc = (TextBox)e.Item.Cells[9].Controls[0];
            //DataRow r;

            int rownumber;
            rownumber = e.Item.ItemIndex;
            p = ds.Tables["policies_master"].Rows[rownumber];
            p[0] = pol_id.Text;
            p[1] = pol_name.Text;
            p[2] = pol_launch_date.Text;
            p[3] = pol_typeid.Text;
            p[4] = pol_minv.Text;
            p[5] = pol_maxv.Text;
            p[6] = pol_min_al.Text;
            p[7] = pol_max_al.Text;
            p[8] = pol_compid.Text;
            p[9] = pol_desc.Text;
            cb = new SqlCommandBuilder(da);
            da.Update(ds, "policies_master");
            DataGrid1.EditItemIndex = -1;
            filldata();
            //SqlCommand com = new SqlCommand("update policies_master set policy_id=" + e.Item.Cells[0].Controls[0] + ",policy_name='" + e.Item.Cells[1].Controls[0] + "',policy_launched_date='" + e.Item.Cells[2].Controls[0] + "',policy_type_field_id=" + e.Item.Cells[3].Controls[0] + ",policy_min_value=" + e.Item.Cells[4].Controls[0] + ",policy_max_value=" + e.Item.Cells[5].Controls[0] + ",policy_min_age_limit=" + e.Item.Cells[6].Controls[0] + ",policy_max_age_limit=" + e.Item.Cells[7].Controls[0] + ",company_id=" + e.Item.Cells[8].Controls[0] + ",policy_desc='" + e.Item.Cells[9].Controls[0] + "' where policy_id=" + e.Item.Cells[0].Controls[0] + "", cn);
            //cn.Open();
            //com.ExecuteNonQuery();
            //cn.Close();
	
		}
//DataGrid  Row Delete
		private void DataGrid1_DeleteCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
        {
            try
            {

                da = new SqlDataAdapter("select * from Policies_master", cn);
                da.Fill(ds, "policies_master");
                int a;
                a = e.Item.ItemIndex;
                ds.Tables["policies_master"].Rows[a].Delete();
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policies_master");
                filldata();
            }
            catch { }
            {
                message("First delete the reference field ");
            }
        }
       
		
//Cancel Button
		protected void Button2_Click(object sender, System.EventArgs e)
		{
			DataGrid1.Visible=true;
			Panel1.Visible=false;
			Button3.Visible=true;

		}
//New Record Insertion
		protected void Button3_Click(object sender, System.EventArgs e)
		{
			 DataGrid1.Visible=false;
			 Button3.Visible=false;
			 Panel1.Visible=true;
             Panel2.Visible = true;
			int id;
			
			if(cn.State==ConnectionState.Open)
			{
				cn.Close();
                
			}
			cn.Open();
			cmd1=new SqlCommand("select count(*) from policies_master",cn);
			id=Convert.ToInt32(cmd1.ExecuteScalar());
			cn.Close();
			if (id==0)
			{
				TextBox1.Text="1";
			}

			else
			{
				cn.Open();
				cmd1=new SqlCommand("exec policies_select",cn);
				TextBox1.Text=Convert.ToInt32(cmd1.ExecuteScalar()).ToString();
			}
			TextBox2.Text="";
            //TextBox3.Text="";
			TextBox5.Text="";
			TextBox6.Text="";
			TextBox7.Text="";
			TextBox8.Text="";
			TextBox10.Text="";
			
		}

		
//DataGrid1 Cancel Command
	private void DataGrid1_CancelCommand(object source, System.Web.UI.WebControls.DataGridCommandEventArgs e)
	{
			DataGrid1.EditItemIndex =-1;
			filldata();

	}
//Saving Data In DataBase And DataSet

        protected void Button1_Click(object sender, System.EventArgs e)
        {

            //int n = Convert.ToInt32(DropDownList1.SelectedValue);
            //int m = Convert.ToInt32(DropDownList2.SelectedValue);
            //int i = Convert.ToInt32(DropDownList3.SelectedValue);
            //if (m == 2)
            //{
            //    if (n == 29)
            //    {
            //        if (i % 4 != 0)
            //        {
            //            message("This is not a leap year");
            //        }
            //    }
            //}
            //else
            //{
            //string s = DropDownList2.SelectedValue + "/" + DropDownList1.SelectedValue + "/" + DropDownList3.SelectedValue;
            try
            {
                da = new SqlDataAdapter("select * from Policies_master", cn);
                da.Fill(ds, "policies_master");
                p = ds.Tables["policies_master"].NewRow();
                p[0] = Convert.ToInt32(TextBox1.Text);
                p[1] = TextBox2.Text.ToString();
                p[2] = Convert.ToDateTime(TextBox3.Text.ToString());
                p[3] = Convert.ToInt32(dr_policy_type.SelectedItem.ToString());
                p[4] = Convert.ToInt32(TextBox5.Text);
                p[5] = Convert.ToInt32(TextBox6.Text);
                p[6] = Convert.ToInt32(TextBox7.Text);
                p[7] = Convert.ToInt32(TextBox8.Text);
                p[8] = Convert.ToInt32(dr_company_id.SelectedItem.ToString());
                p[9] = TextBox10.Text.ToString();

                ds.Tables["policies_master"].Rows.Add(p);
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "policies_master");
                filldata();
                Response.Redirect("WebForm1.aspx");
                //}
            }
            catch { }
            {
                message("any field is wrong");
            }


        }
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }
		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}





        
        protected void  TextBox5_TextChanged(object sender, EventArgs e)
        {
            
                //long i = Convert.ToInt64(TextBox5.Text);
                //if (i <= 4999 || i >= 100001)
                //{
                //    message("The minimum amount is 5000 - 100000");
                //    TextBox5.Text = "";
                //}
            

        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            //long i = Convert.ToInt64(TextBox6.Text);
            //if (i <= 99999 || i >= 20000001)
            //{
            //    message("The maximum amount is 100000 - 20000000");
            //    TextBox6.Text = "";
            //}
            

        }
        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
           
                //int i = Convert.ToInt32(TextBox7.Text);
                //if (i < 1 || i >= 25)
                //{
                //    message("The minimum age is 1 - 25");
                //    TextBox7.Text = " ";
                //}
            
        }
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            
                //int i = Convert.ToInt32(TextBox8.Text);
                //if (i < 15 || i >= 50)
                //{
                //    message("The Maximum age is 15 - 50");
                //    TextBox8.Text = "";
                //}
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DataGrid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}
