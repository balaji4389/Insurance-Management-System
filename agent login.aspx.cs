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
	/// Summary description for agent_login.
	/// </summary>
	public partial class agent_login : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
        SqlDataAdapter da;
		SqlCommandBuilder cmb;
		DataSet ds=new DataSet();
		SqlCommand cmd;
		DataRow r;

	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			txt_agent_id.Text=Session["agent_id"].ToString();
			txt_date.Text=DateTime.Now.ToShortDateString();
			
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

		protected void Button2_Click(object sender, System.EventArgs e)
		{
			da=new SqlDataAdapter("select * from agent_security_master",con);
			DataSet ds=new DataSet();
			da.Fill(ds,"agent_secu");
			r=ds.Tables["agent_secu"].NewRow();
			r[0]=txt_agent_id.Text;
			r[1]=txt_pwd_old.Text;
			r[2]=txt_pwd_new.Text;
			r[3]=Convert.ToDateTime(txt_date.Text);
			ds.Tables["agent_secu"].Rows.Add(r);
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"agent_secu");
			Response.Redirect("HomePage.aspx");
			
		}
	}
}
