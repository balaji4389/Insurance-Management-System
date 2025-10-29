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
	public partial class Cust_Registration : System.Web.UI.Page
	{
        ///SqlConnection con=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   		SqlDataAdapter da;
		SqlCommand cmd;
		SqlCommandBuilder cmb;
		DataSet ds=new DataSet();
		DataRow r;

		
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            
            if (!IsPostBack)
            {
                DropDownList2.Items.Add("sel");
                for (int i = 1; i <= 12; i++)
                    DropDownList2.Items.Add(i.ToString());

            }

            for (int j = 1960; j <= 2006; j++)
                DropDownList3.Items.Add(j.ToString());

            da=new SqlDataAdapter("select * from gender",con);
			da.Fill(ds,"gender");

			if(Page.IsPostBack==false)

			{
				filldata();
			}
			da=new SqlDataAdapter("select * from customer_master",con);
			da.Fill(ds,"customer_master");
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
						
			if(con.State==ConnectionState.Open)
			{
			con.Close();
			}
			con.Open();
			
			int count;
			cmd=new SqlCommand("select count(*) from customer_master ",con);
			count=Convert.ToInt32(cmd.ExecuteScalar());
			con.Close();
			if(count==0)
			{
				txt_cust_id.Text="1000";
			}
			else
			{
                cmd = new SqlCommand("select max(cust_id)+1 from customer_master", con);
                con.Open();
			txt_cust_id.Text=cmd.ExecuteScalar ().ToString();
                con.Close ();
			Session["cust_id"]=txt_cust_id.Text;
			}
			int i;
			int count1;
			count1=ds.Tables["gender"].Rows.Count;
			Array a=Array.CreateInstance(typeof(String),count1,0);
			for(i=0;i<count1;i++)
			{
			a=ds.Tables["gender"].Rows[i].ItemArray;
				dr_gender.Items.Add(a.GetValue(0).ToString());
			}
			
		}
//submit button
		protected void LinkButton1_Click(object sender, System.EventArgs e)
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

                Session["cust_id"] = txt_cust_id.Text;
                cmd = new SqlCommand("insert into customer_master values(" + txt_cust_id.Text + ",'" + txt_cust_name.Text + "','" + Convert .ToDateTime (s) + "','" + txt_cust_address.Text + "','" + txt_cust_email.Text + "'," + txt_cust_phone.Text + ",'" + DropDownList4 .SelectedValue  + "','" + dr_gender.SelectedItem.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();


                Server.Transfer("LoginForm.aspx");
            }
		}
		

		protected void dr_gender_SelectedIndexChanged(object sender, System.EventArgs e)
		{
		
		}
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }


        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedValue == "1" || DropDownList2.SelectedValue == "3" || DropDownList2.SelectedValue == "5" || DropDownList2.SelectedValue == "7" || DropDownList2.SelectedValue == "8" || DropDownList2.SelectedValue == "10" || DropDownList2.SelectedValue == "12")
            {
                DropDownList1.Items.Clear();
                for (int i = 1; i <= 31; i++)
                    DropDownList1.Items.Add(i.ToString());
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
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
}
}
