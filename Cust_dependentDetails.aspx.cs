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
	/// Summary description for Cust_dependentDetails.
	/// </summary>
	public partial class Cust_dependentDetails : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
//		SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
		SqlDataAdapter da;
		SqlCommand cmd;
		SqlCommandBuilder cmb;
		DataSet ds=new DataSet();
		DataRow r;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("exec cust_depen_select",con);
			da.Fill(ds,"cust_dependent_master");
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
		int count;
			if(con.State==ConnectionState.Open)
			{
			con.Close();
			}
			con.Open();
			cmd=new SqlCommand("select max(depen_id)+1 from cust_dependent_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
			if(count==0)
			{
				txt_depen_id.Text="1";
			}
			else
			{
			txt_depen_id.Text=count.ToString();
				txt_cust_id.Text=Session["cust_id"].ToString();

			}
		}

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			r=ds.Tables["cust_dependent_master"].NewRow();
			r[0]=Convert.ToInt32(txt_depen_id.Text);
			r[1]=Session["cust_id"].ToString();
			//r[1]=Convert.ToInt32(txt_cust_id.Text);
			r[2]=txt_depen_name.Text;
			r[3]=txt_relation.Text;
			r[4]=txt_addr.Text;
			r[5]=txt_phone.Text;
			r[6]=txt_email.Text;
			r[7]=Convert.ToDateTime(txt_dob.Text);
			ds.Tables["cust_dependent_master"].Rows.Add(r);
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"cust_dependent_master");
			msg("successfully registered");
			filldata();
		}
		private void msg(string message)
		{
			this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
		}
	}
}
