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
	/// Summary description for AgentLoginForm.
	/// </summary>
	public partial class AgentLoginForm : System.Web.UI.Page
    { 
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		DataSet ds=new DataSet();
		DataRow r;
		SqlCommandBuilder cmb;
		SqlCommand cmd;
		SqlDataReader dr;


	
		protected void Page_Load(object sender, System.EventArgs e)
        {
            if (IsPostBack)
            {
                dr_gender.Items.Clear();
                dr_gender.Items.Add("male");
                dr_gender.Items.Add("female");
            }
             
            for (int s = 0; s <= 15; s++)
                DropDownList4.Items.Add(s.ToString ());
            DropDownList2.Items.Add("sel");
            
            if (!IsPostBack)
            {
                for (int i = 1; i <= 12; i++)
                    DropDownList2.Items.Add(i.ToString ());
                
            }
            
            for (int j = 1950; j <= 1990; j++)
                DropDownList3.Items.Add(j.ToString());
			da=new SqlDataAdapter("select * from agent_master",con);
			da.Fill(ds,"agent_master");
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
			cmd=new SqlCommand("select count(*) from agent_master",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
					
			//count=Convert.ToInt32(ds.Tables["agent_master"].Columns[0].AutoIncrementStep);

			if(count==0)
			{
				txt_agent_id.Text="11110";
			}
			else
			{
				cmd=new SqlCommand("exec max_agent",con);
				count=Convert.ToInt32(cmd.ExecuteScalar());
				con.Close();
				txt_agent_id.Text=count.ToString();
				txt_agent_name.Text="";
				txt_agent_addr.Text="";
				txt_phone.Text="";
				txt_email.Text="";
                //txt_dob.Text="";
                //txt_exp.Text="";
                
				cmd=new SqlCommand("exec gender_select",con);
				con.Open();
				dr=cmd.ExecuteReader();
				while(dr.Read())
				{
					string a;
					a=dr[0].ToString();
					dr_gender.Items.Add(a);
											
				}
			

				con.Close();
				dr.Close();
			}

		}
//save record
		protected void Button1_Click(object sender, System.EventArgs e)
        {
            int n = Convert.ToInt32(DropDownList1.SelectedValue);
            int m = Convert.ToInt32(DropDownList2.SelectedValue);
            int i = Convert.ToInt32(DropDownList3.SelectedValue);
            if (m == 2)
            {
                if (n == 29)
                {
                    if (i % 4 != 0)
                    {
                        message("This is not a leap year");
                    }
                }
            }
            else
            {
                string s = DropDownList2.SelectedValue + "/" + DropDownList1.SelectedValue + "/" + DropDownList3.SelectedValue;

                Session["agent_id"] = txt_agent_id.Text;
                cmd = new SqlCommand("insert into agent_master values('" + txt_agent_id.Text + "','" + txt_agent_name.Text + "','" + txt_agent_addr.Text + "','" + txt_phone.Text + "','" + txt_email.Text + "','" + Convert.ToDateTime(s) + "','" + dr_gender.SelectedItem.Text + "','" + Convert.ToInt32(DropDownList4.SelectedValue) + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("agent login.aspx");

            }
        }
//cancel
		protected void Button3_Click(object sender, System.EventArgs e)
		{
		Response.Redirect("HomePage.aspx");
		}
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "1" || DropDownList2.SelectedValue == "3"||DropDownList2.SelectedValue == "5"||DropDownList2.SelectedValue == "7"||DropDownList2.SelectedValue == "8"||DropDownList2.SelectedValue == "10"||DropDownList2.SelectedValue == "12")
            {
                DropDownList1.Items.Clear();
                for (int i = 1; i <= 31; i++)
                    DropDownList1.Items.Add(i.ToString ());
            }
            else if (DropDownList2.SelectedValue == "4" || DropDownList2.SelectedValue == "6" || DropDownList2.SelectedValue == "9" || DropDownList2.SelectedValue == "11")
            {
                DropDownList1.Items.Clear();
                for (int i = 1; i <= 30; i++)
                    DropDownList1.Items.Add(i.ToString());
            }
            else if (DropDownList2.SelectedValue == "2")
            {
                DropDownList1.Items.Clear();
                
                for (int i = 1; i <= 29; i++)
                    DropDownList1.Items.Add(i.ToString());
            }
        }
}
}
