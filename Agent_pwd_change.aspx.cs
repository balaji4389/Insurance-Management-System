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
using System.Configuration;


namespace insurancenew
{
	/// <summary>
	/// Summary description for Agent_pwd_change.
	/// </summary>
	public partial class Agent_pwd_change : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
        //SqlConnection con=new SqlConnection(ConfigurationSettings.AppSettings["con"]);
		SqlDataAdapter da;
		DataSet ds=new DataSet();
		SqlCommand cmd;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if(Page.IsPostBack==false)
			{
				txt_agent_id.Text=Session["agent_id"].ToString();
				txt_date.Text=DateTime.Now.ToShortDateString();

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
//save
		protected void Button2_Click(object sender, System.EventArgs e)
		{
			cmd=new SqlCommand("select agent_pwd_new from agent_security_master where agent_id="+Session["agent_id"]+"",con);
			con.Open();
			string a=cmd.ExecuteScalar().ToString();
			if(txt_pwd_old.Text==a)
			{
		        cmd=new SqlCommand("select agent_pwd_new from agent_security_master where agent_id="+Session["agent_id"]+"",con);
				string str=cmd.ExecuteScalar().ToString();
				cmd=new SqlCommand("update agent_security_master set agent_pwd_old='"+str+"',agent_pwd_new='"+txt_pwd_new.Text+"',agent_pwd_change_date='"+txt_date.Text+"' where agent_id="+txt_agent_id.Text+"",con);
				cmd.ExecuteNonQuery();
				con.Close();
				msg("UR Latest pwd is :" + txt_pwd_new.Text);
			
			}
			else
			{
			msg("UR old password is not valid");
			}
			
			
		}
		private void msg(string message)
		{
		this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+message+"')</script></body></html>");
		}
		
	}
}
