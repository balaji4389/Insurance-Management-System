using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;




	public partial class HomePage : System.Web.UI.Page
	{
        //SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
       SqlDataAdapter da;
		DataSet ds=new DataSet();
		SqlCommand cmd;
        
		protected void Page_Load(object sender, System.EventArgs e)
		{
           
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
		

		protected void LinkButton1_Click(object sender, System.EventArgs e)
		{
			int i;
			int count;
			
			switch(LinkButton1.Text)
			{
			
				
			
				case "Admin":
                  
					da=new SqlDataAdapter("select * from login_master",con);
					da.Fill(ds,"login");
					count=ds.Tables["login"].Rows.Count;
					Array a=Array.CreateInstance(typeof(String),count,0);
					for(i=0;i<count;i++)
					{
						a=ds.Tables["login"].Rows[i].ItemArray;
						string name=a.GetValue(0).ToString();
						string pwd=a.GetValue(1).ToString();
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Admin.htm");


                        }
                        else
                        {
                            message("Verify Username or password");
                        }
					}
                    txt_user_name.Text = "";
					break;

				case "CustomerClickhere":
                    
					da=new SqlDataAdapter("select a.cust_id,a.cust_pwd_new,b.cust_name from customer_security_master a,customer_master b where a.cust_id=b.cust_id",con);
					da.Fill(ds,"cust_master");
					count=ds.Tables["cust_master"].Rows.Count;
					Array a1=Array.CreateInstance(typeof(String),count,0);
					
					for(i=0;i<count;i++)
					{
						a1=ds.Tables["cust_master"].Rows[i].ItemArray;
						
						string pwd=a1.GetValue(1).ToString();
						string name=a1.GetValue(2).ToString();
						cmd=new SqlCommand("select cust_id from customer_master where cust_name='"+name+"'",con);
						con.Open();
						int j=Convert.ToInt32(cmd.ExecuteScalar());
						con.Close();
                        Session["cun"] = txt_user_name.Text;
						Session["customer_id"]=j;
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Customer.htm");


                        }
                        else
                        {
                            message("Please verify your password and username");
                        }
                    } 
                    txt_user_name.Text = "";
			break;

				case "Agent":
                    
					da=new SqlDataAdapter("select agent_name, agent_pwd_new from agent_security_master a,agent_master b where a.agent_id=b.agent_id",con);
					da.Fill(ds,"agent_secu");
					count=ds.Tables["agent_secu"].Rows.Count;
					Array a2=Array.CreateInstance(typeof(String),count,0);
					for(i=0;i<count;i++)
					{
					a2=ds.Tables["agent_secu"].Rows[i].ItemArray;
						string name=a2.GetValue(0).ToString();
						string pwd=a2.GetValue(1).ToString();
						cmd=new SqlCommand("select agent_id from agent_master where agent_name='"+ name +"'",con); 
						con.Open();
						int j=Convert.ToInt32(cmd.ExecuteScalar());
						con.Close();
						Session["agent_id"]=j;
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Agent.htm");
                        }
                        else
                        {
                            message("Verify user name and password"); 
                        }
                    } 
                    txt_user_name.Text = "";
					break;


				default:
					message("invalid entry");
						
							
						
					break;
			}
		}
	    private void message(string msg)
         {
          this.RegisterStartupScript("ClientScript","<html><body><script>alert('"+msg+"')</script></body></html>");
           }

			
		private void DataGrid1_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
//Administrator login

		protected void LinkButton2_Click(object sender, System.EventArgs e)
		{
			Image1.Visible=false;
			Panel1.Visible=true;
			LinkButton1.Text="Admin";
			
			
		}

		protected void LinkButton3_Click(object sender, System.EventArgs e)
		{
			Image1.Visible=false;
			Panel1.Visible=true;
			LinkButton1.Text="Agent";
			
		}

		protected void LinkButton4_Click(object sender, System.EventArgs e)
		{
			Image1.Visible=false;
			Panel1.Visible=true;
			LinkButton1.Text="CustomerClickhere";
			
		}

		private void AdRotator1_AdCreated(object sender, System.Web.UI.WebControls.AdCreatedEventArgs e)
		{
		
		}


        protected void LinkButton5_Click(object sender, EventArgs e)
        {

        }
        protected void txt_pwd_TextChanged(object sender, EventArgs e)
        {
            int i;
            int count;

            switch (LinkButton1.Text)
            {

                    case "Admin":

                    da = new SqlDataAdapter("select * from login_master", con);
                    da.Fill(ds, "login");
                    count = ds.Tables["login"].Rows.Count;
                    Array a = Array.CreateInstance(typeof(String), count, 0);
                    for (i = 0; i < count; i++)
                    {
                        a = ds.Tables["login"].Rows[i].ItemArray;
                        string name = a.GetValue(0).ToString();
                        string pwd = a.GetValue(1).ToString();
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Admin.htm");


                        }
                        else
                        {
                            message("Verify Username or password");
                        }
                    }
                    txt_user_name.Text = "";
                    break;

                case "CustomerClickhere":

                    da = new SqlDataAdapter("select a.cust_id,a.cust_pwd_new,b.cust_name from customer_security_master a,customer_master b where a.cust_id=b.cust_id", con);
                    da.Fill(ds, "cust_master");
                    count = ds.Tables["cust_master"].Rows.Count;
                    Array a1 = Array.CreateInstance(typeof(String), count, 0);

                    for (i = 0; i < count; i++)
                    {
                        a1 = ds.Tables["cust_master"].Rows[i].ItemArray;

                        string pwd = a1.GetValue(1).ToString();
                        string name = a1.GetValue(2).ToString();
                        cmd = new SqlCommand("select cust_id from customer_master where cust_name='" + name + "'", con);
                        con.Open();
                        int j = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        Session["cun"] = txt_user_name.Text;
                        Session["customer_id"] = j;
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Customer.htm");


                        }
                        else
                        {
                            message("Please verify your password and username");
                        }
                    }
                    txt_user_name.Text = "";
                    break;

                case "Agent":

                    da = new SqlDataAdapter("select agent_name, agent_pwd_new from agent_security_master a,agent_master b where a.agent_id=b.agent_id", con);
                    da.Fill(ds, "agent_secu");
                    count = ds.Tables["agent_secu"].Rows.Count;
                    Array a2 = Array.CreateInstance(typeof(String), count, 0);
                    for (i = 0; i < count; i++)
                    {
                        a2 = ds.Tables["agent_secu"].Rows[i].ItemArray;
                        string name = a2.GetValue(0).ToString();
                        string pwd = a2.GetValue(1).ToString();
                        cmd = new SqlCommand("select agent_id from agent_master where agent_name='" + name + "'", con);
                        con.Open();
                        int j = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                        Session["agent_id"] = j;
                        if (txt_user_name.Text == name && txt_pwd.Text == pwd)
                        {

                            Server.Transfer("Agent.htm");
                        }
                        else
                        {
                            message("Verify user name and password");
                        }
                    }
                    txt_user_name.Text = "";
                    break;


                default:
                    message("invalid entry");

                    break;
            }
        }
}

