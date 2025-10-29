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
	/// Summary description for Policy_claimDetails.
	/// </summary>
	public partial class Policy_claimDetails : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
        SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		DataSet ds=new DataSet();
		SqlCommand cmd;
		SqlCommand cmd1;
		SqlCommandBuilder cmb;
		DataRow r;
		int x;
		SqlDataReader dr;



	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("exec claim_select",con);
			da.Fill(ds,"claim_master");

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
		//filling values in textboxes
		protected void DataGrid2_SelectedIndexChanged(object sender, System.EventArgs e)
		{
			
			da=new SqlDataAdapter("select * from policies_master where policy_id in (select policy_id from cust_policies_master where cust_id="+ Session["customer_id"] +" )",con);
			da.Fill(ds,"policy_master");
			Panel2.Visible=true;
			DataGrid2.Visible=false;
			int i;
			int count;
			count=ds.Tables["policy_master"].Rows.Count;
			Array a=Array.CreateInstance(typeof(String),count,0);
			for(i=0;i<count;i++)
			{
				a=ds.Tables["policy_master"].Rows[i].ItemArray;
				dr_policy_name.Items.Add(a.GetValue(1).ToString());
				dr_policy_name.Items[dr_policy_name.Items.Count-1].Value=a.GetValue(0).ToString();
			}
		}

	
		private void dr_policy_name_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		}

		protected void Button4_Click(object sender, System.EventArgs e)
		{
			Panel1.Visible=true;
			Panel2.Visible=false;
			if(con.State==ConnectionState.Open)
			{
				con.Close();
			}
			con.Open();
			int count;
			cmd=new SqlCommand("select count(*) from policy_claim_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
			if(count==0)
			{
				txt_claim_id.Text="1";
			}
			else
			{
				cmd=new SqlCommand("select max(claim_id)+1 from policy_claim_master",con);
				count=Convert.ToInt32(cmd.ExecuteScalar());	
				txt_claim_id.Text=count.ToString();
			}
			con.Close();
			string i;
			i=Convert.ToString(DataGrid2.Items[DataGrid2.SelectedIndex].Cells[0].Text);
			txt_status_code.Text=i.ToString();
			txt_cust_policy_name.Text=dr_policy_name.SelectedItem.Text.ToString();
			txt_date_claim.Text=DateTime.Now.ToShortDateString();
			txt_amount_claimed.Text="";
			txt_status_bit.Text="yes";

		}
		//save button
		protected void Button1_Click(object sender, System.EventArgs e)
		{
			
			int j=Convert.ToInt32(dr_policy_name.SelectedItem.Value);
			cmd=new SqlCommand("select cust_policy_no from cust_policies_master  where cust_id="+Session["customer_id"]+" and policy_id="+ j +"",con);			
			int a;
			con.Open();
			a=Convert.ToInt32(cmd.ExecuteScalar());
			con.Close();
			cmd=new SqlCommand("select cust_policy_no from policy_claim_master where cust_policy_no="+ a +" ",con);
			con.Open();
			dr=cmd.ExecuteReader();
			bool count;
			count=dr.HasRows;
			dr.Close();
			if(count==true)
			{
			
					message("already claimed");
					con.Close();
				

			}
				else
				{
					da=new SqlDataAdapter("select * from policy_claim_master",con);
					da.Fill(ds,"policy_claim_master");

					r=ds.Tables["policy_claim_master"].NewRow();
					r[0]=Convert.ToInt32(txt_claim_id.Text);
					r[1]=Convert.ToInt32(txt_status_code.Text);
					r[2]=a.ToString();
					r[3]=Convert.ToDateTime(txt_date_claim.Text);
					r[4]=Convert.ToInt32(txt_amount_claimed.Text);
					r[5]=txt_status_bit.Text;
					ds.Tables["policy_claim_master"].Rows.Add(r);
					cmb=new SqlCommandBuilder(da);
					da.Update(ds,"policy_claim_master");
					filldata();
				}
		
			
				
			con.Close();
				DataGrid2.Visible=true;
				Panel1.Visible=false;

		
			
		}
		private void message(string msg)
		{
			this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+msg+"')</script></body></html>");
		}


		}
	}

