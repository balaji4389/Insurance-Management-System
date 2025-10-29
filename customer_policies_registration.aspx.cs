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
	/// Summary description for customer_policies_registration.
	/// </summary>
	public partial class customer_policies_registration : System.Web.UI.Page
    { 
        //SqlConnection cn=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
        SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		SqlCommand cmd;
		SqlCommandBuilder cb;
		SqlDataReader dr;
		DataRow r;
		DataSet ds =new DataSet();
       
        int l;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Page.IsPostBack==false)
			{
				da=new SqlDataAdapter("select a.policy_id,a.policy_name,b.policy_type_field_name,a.policy_min_value,a.policy_max_value,a.policy_min_age_limit,a.policy_max_age_limit,d.company_name from policies_master a,policy_type_master b,insurance_companies_master d where a.policy_type_field_id=b.policy_type_field_id and a.company_id=d.company_id ",cn);
				da.Fill(ds,"policy");
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
		private void filldata()
		{
			DataGrid1.DataSource=ds;
			DataGrid1.DataBind();
		}

		protected void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			int i;
			i=Convert.ToInt32(DataGrid1.Items[DataGrid1.SelectedIndex].Cells[0].Text);

			Comp_tex.Text=DataGrid1.Items[DataGrid1.SelectedIndex].Cells[7].Text;
			cmd=new SqlCommand("select agent_name from agent_master where agent_id in (select agent_id from insu_companies_agent_master where company_id in (select company_id from insurance_companies_master where company_name ='"+ Comp_tex.Text +"'))",cn);
			cn.Open();
			dr=cmd.ExecuteReader();
			while (dr.Read())
			{
			 dr_agent_name.Items.Add (dr[0].ToString());
			}
        
			cn.Close();

			DataGrid1.Visible=false;
			Panel2.Visible=true;
			cmd=new SqlCommand("select cust_name from customer_master where cust_id="+Session["customer_id"]+"",cn);
			cn.Open();

			TextBox2.Text=cmd.ExecuteScalar().ToString();
            
			TextBox3.Text=i.ToString();
			TextBox4.Text=DateTime.Now.ToString();
			
		
		}

		private void dr_agent_name_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			Panel1.Visible=true;
			Panel2.Visible=false;
            
			cmd = new SqlCommand("select agent_id from agent_master where agent_name='"+dr_agent_name.SelectedItem.Value+"'",cn);
			cn.Open();
			TextBox11.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();
			cn.Close();
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Panel1.Visible=true;
			Panel2.Visible=false;
            
			cmd = new SqlCommand("select agent_id from agent_master where agent_name='"+dr_agent_name.SelectedItem.Value+"'",cn);
			cn.Open();
			TextBox11.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();

			
			
            string s = Comp_tex.Text.ToString().ToLower ();
            cmd = new SqlCommand("select count(*)from cust_policies_master where policy_id in (select policy_id from policies_master where company_id in (select company_id from insurance_companies_master where company_name='"+Comp_tex.Text +"'))", cn);
            
            int i;
            i = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
            if (i == 0)
            {
                l = 10000;
                TextBox1.Text = s[0].ToString() + s[1].ToString() + s[2].ToString() + "-" + l.ToString();
            }
            else
            {
                cn.Open();
                //cmd = new SqlCommand("select cust_policy_no from cust_policies_master ", cn);
                cmd = new SqlCommand("select MAX(RIGHT(cust_policy_no,5))+1 from cust_policies_master where policy_id in (select policy_id from policies_master where company_id in (select company_id from insurance_companies_master where company_name='" + Comp_tex.Text + "'))", cn);
                

                //string b = cmd.ExecuteScalar().ToString ();
                //int a = Convert.ToInt32(b[4].ToString() + b[5].ToString() + b[6].ToString() + b[7].ToString() + b[8].ToString());
                //a = a + 1;

                TextBox1.Text = s[0].ToString() + s[1].ToString() + s[2].ToString() + "-"+ cmd.ExecuteScalar().ToString();
            }

           
		}
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }
	
		protected void Button1_Click(object sender, System.EventArgs e)
		{
            long  i = Convert.ToInt64(TextBox6.Text);
            if (i <= 10000 || i >= 20000000)
            {
                message("the amount is in between 10000 and 20000000");
            }
            else
            {
                da = new SqlDataAdapter("select * from cust_policies_master", cn);
                da.Fill(ds, "cust_policies_master");
                r = ds.Tables["cust_policies_master"].NewRow();

                r[0] = TextBox1.Text;
                r[1] = Convert.ToInt32(Session["customer_id"]);
                r[2] = Convert.ToInt32(TextBox3.Text);
                r[3] = Convert.ToDateTime(TextBox4.Text);
                r[4] = Convert.ToInt32(DropDownList1 .SelectedValue  );
                r[5] = Convert.ToInt32(TextBox6.Text);
                r[6] = Convert.ToInt32(TextBox7.Text);
                r[7] = dr_pay_mode.SelectedItem.Text;
                r[8] = Convert.ToInt32(TextBox9.Text);
                r[9] = dr_nominee_status.SelectedItem.Text;
                r[10] = Convert.ToInt32(TextBox11.Text);
                ds.Tables["cust_policies_master"].Rows.Add(r);
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "cust_policies_master");
                Session["cust_policy_no"] = TextBox1.Text;
                Session["cus"] = TextBox2.Text;
                if (dr_nominee_status.SelectedItem.Text == "yes")
                {
                    Response.Redirect("Nominee form.aspx");

                }
                else
                {
                    Response.Redirect("dependent form.aspx");
                }

            }
			
		}

		private void DataGrid1_PageIndexChanged(object source, System.Web.UI.WebControls.DataGridPageChangedEventArgs e)
		{
			DataGrid1.CurrentPageIndex=e.NewPageIndex;
			filldata();
		}




        protected void dr_pay_mode_SelectedIndexChanged(object sender, EventArgs e)
        {
            int c=Convert .ToInt32 (DropDownList1 .SelectedValue ) ;
            int d=Convert .ToInt32 ( TextBox6.Text) ;
            if (dr_pay_mode.SelectedValue  == "yearly")
            {
                TextBox7.Text = Convert.ToString(d / c);
                TextBox9.Text = Convert.ToString(c * 1);
            }
            if (dr_pay_mode.SelectedValue  == "Halfyearly")
            {
                TextBox7.Text = Convert.ToString((d / c)/2);
                TextBox9.Text = Convert.ToString(c * 2);
            }
            if (dr_pay_mode.SelectedValue  == "Quarterly")
            {
                TextBox7.Text = Convert.ToString((d / c)/4);
                TextBox9.Text = Convert.ToString(c * 4);
            }
            if (dr_pay_mode.SelectedValue  == "Monthly")
            {
                TextBox7.Text = Convert.ToString((d / c)/12);
                TextBox9.Text = Convert.ToString(c * 12);
            }

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = false;
           
            DataGrid1.Visible = true;

        }
        protected void dr_nominee_status_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox6_TextChanged(object sender, EventArgs e)
        {
            try
            {
                string s = TextBox6.Text.ToString();

            }
            catch
            {
            }
        }
        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
}
}
