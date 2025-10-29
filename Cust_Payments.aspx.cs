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
	/// Summary description for Cust_Registration.
	/// </summary>
	public partial class Cust_Payments : System.Web.UI.Page
	{
       // SqlConnection con = new SqlConnection("Data Source=IBM-\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True");
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            for (int i = 1; i < 13; i++)
            {
                DropDownList3.Items.Add(i.ToString());
                DropDownList5.Items.Add(i.ToString());
            }
            for (int j = 2000; j <2020 ; j++)
            {
                DropDownList4.Items.Add(j.ToString());
                DropDownList6.Items.Add(j.ToString());
            }
            TextBox13.Visible = false;
            Label1.Visible = false;
            TextBox1.Text= Session["customer_id"].ToString ();
            SqlCommand cmd = new SqlCommand("select cust_name from customer_master where cust_id='" + Session["customer_id"] + "'", con);
            con.Open();
            TextBox2.Text = cmd.ExecuteScalar().ToString();
            con.Close();
            
            if (!IsPostBack)
            {
                try
                {

                    SqlDataAdapter da = new SqlDataAdapter("select cust_policy_no from cust_policies_master where cust_id='" + Session["customer_id"] + "'", con);
                    con.Open();
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    DropDownList1.DataSource = ds;
                    DropDownList1.DataTextField = "cust_policy_no";
                    DropDownList1.DataValueField = "cust_policy_no";
                    DropDownList1.DataBind();
                }

                catch { }
                {
                    message("If you have registered then use policy no else  register your policy. Please enter your card number without gaps");
                }

            }
            con.Close();
                
            



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
            
		}
        
		
        //submit button
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            ////SqlConnection con = new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True");
            //con.Open();
            //int
            int m = 1000000;
            string s = DropDownList3.SelectedValue + "/" + DropDownList4.SelectedValue;
            string r = DropDownList5.SelectedValue + "/" + DropDownList6.SelectedValue;
            
            SqlCommand cmd = new SqlCommand("insert into customer_payments values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + DropDownList1 .SelectedValue  + "','" + TextBox5.Text + "','" + DropDownList2 .SelectedValue  + "','" + TextBox8.Text + "','" + s.ToString () + "','" + r.ToString () + "','" + TextBox11.Text + "','" + TextBox12.Text + "'," + m + ")", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            SqlCommand cmd7 = new SqlCommand("select avail_bal from customer_payments where cust_id='"+Session["customer_id"]+"'", con);
            con.Open();
            int i=Convert .ToInt32 (cmd7.ExecuteScalar());
            con.Close();

            int j = Convert.ToInt32(TextBox12.Text );
            int k;
            if (j > i)
            {
                message("No Credit Available");
            }
            else
            {
                 k = i - j;
                TextBox13.Text = k.ToString();
                SqlCommand cmd1 = new SqlCommand("update customer_payments set avail_bal='" + TextBox13.Text + "'", con);
                con.Open();
                cmd1.ExecuteNonQuery();
                con.Close();
                TextBox13.Visible = true;
                Label1.Visible = true;
                message("Your Balance Amount is "+k+"");
            }
            

        
        
        
        }


        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }

       
        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }
        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {

        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd2 = new SqlCommand("select agent_id from cust_policies_master where cust_policy_no='" + DropDownList1.SelectedValue + "'", con);
                con.Open();
                TextBox3.Text = cmd2.ExecuteScalar().ToString();
                con.Close();

                SqlCommand cmd3 = new SqlCommand("select policy_prem_amount from cust_policies_master where cust_policy_no='" + DropDownList1.SelectedValue + "'", con);
                con.Open();
                TextBox12.Text = cmd3.ExecuteScalar().ToString();
                con.Close();

                SqlCommand cmd4 = new SqlCommand("select policy_date from cust_policies_master where cust_policy_no='" + DropDownList1.SelectedValue + "'", con);
                con.Open();
                TextBox11.Text = cmd4.ExecuteScalar().ToString();
                con.Close();

                SqlCommand cmd5 = new SqlCommand("select company_id from policies_master where policy_id in (select policy_id from cust_policies_master where cust_policy_no='" + DropDownList1.SelectedValue + "')", con);
                con.Open();
                TextBox5.Text = cmd5.ExecuteScalar().ToString();
                con.Close();
            }
            catch { }
            {
                message("you don't have any policy id");
            }

        }
        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
           
                string s = TextBox8.Text.ToString();
                int i;
                int count=0;
                for (i = 0; i < 16; i++)
                {
                    if (s[i] == null)
                    {
                        break;
                    }
                    else
                    {
                        count++;
                    }
                      
                }
                if (count != 16)
                {
                    message("Enter Exact Credit Card Number");
                }

            


        }
}
}
