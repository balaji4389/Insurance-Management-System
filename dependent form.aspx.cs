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
	/// Summary description for dependent_form.
	/// </summary>
	public partial class dependent_form : System.Web.UI.Page
    { 
        SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		SqlCommand cmd;
		SqlCommandBuilder cb;
		DataSet ds =new DataSet();
		DataRow r;
	
		protected void Page_Load(object sender, System.EventArgs e)
        {
            
            
            if (!IsPostBack)
            {
                DropDownList2.Items.Add("sel");
                for (int i = 1; i <= 12; i++)
                    DropDownList2.Items.Add(i.ToString ());
                
            }
            
            for (int j = 1960; j <= 2006; j++)
                DropDownList3.Items.Add(j.ToString());

            TextBox2.Text = Session["cus"].ToString();

            int m;
            cmd = new SqlCommand("select count(*) from cust_dependent_master", cn);
            cn.Open();
            m = Convert.ToInt32(cmd.ExecuteScalar());
            cn.Close();
			if (m==0)
			{
				TextBox1.Text="11000";

			}
			else
			{
				cmd=new SqlCommand("select max(depen_id)+1 from cust_dependent_master",cn);
				cn.Open();
				TextBox1.Text=Convert.ToInt32(cmd.ExecuteScalar()).ToString();

			}
			da=new SqlDataAdapter("select * from cust_dependent_master",cn);
			da.Fill(ds,"dependent");
            cn.Close();

		}
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
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

                r = ds.Tables["dependent"].NewRow();
                r[0] = Convert.ToInt32(TextBox1.Text);
                cmd = new SqlCommand("select cust_id from customer_master where cust_name='" + TextBox2.Text + "'", cn);
                cn.Open();
                r[1] = Convert.ToInt32(cmd.ExecuteScalar());
                r[2] = TextBox3.Text.ToString();
                r[3] = DropDownList4 .SelectedValue . ToString();
                r[4] = TextBox5.Text.ToString();
                r[5] = Convert.ToInt64(TextBox6.Text);
                r[6] = TextBox7.Text.ToString();
                r[7] = Convert.ToDateTime(s.ToString());
                ds.Tables["dependent"].Rows.Add(r);
                cb = new SqlCommandBuilder(da);
                da.Update(ds, "dependent");
                
                Server.Transfer("Customer.htm");
                cn.Close();
            }
		}
        protected void Button2_Click(object sender, EventArgs e)
        {
            Server.Transfer("Nominee form.aspx");
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

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
}
}
