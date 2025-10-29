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
	/// Summary description for Nominee_form.
	/// </summary>
	public partial class Nominee_form : System.Web.UI.Page
     {
         //SqlConnection cn=new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
         SqlConnection cn=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;
   
		SqlDataAdapter da;
		SqlCommand cmd;
		DataSet ds =new DataSet();
		SqlCommandBuilder cmb;
		DataRow r;
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
            DropDownList2.Items.Add("sel");

            if (!IsPostBack)
            {
                for (int i = 1; i <= 12; i++)
                    DropDownList2.Items.Add(i.ToString());

            }

            for (int j = 1960; j <= 2006; j++)
                DropDownList3.Items.Add(j.ToString());
            if(Page.IsPostBack==false)
			{
				
				string a;
				a=Session["cust_policy_no"].ToString();

                
				TextBox7.Text=Session["cust_policy_no"].ToString();
				
			
				cmd=new SqlCommand("select count(*)from nominee_details",cn);
				cn.Open();
				int id;
				id=Convert.ToInt32(cmd.ExecuteScalar());
				cn.Close();
				if(id==0)
				{
					TextBox1.Text="1110";
				}
				else
				{
					cn.Open();
					cmd=new SqlCommand("select max(nominee_id)+1 from nominee_details",cn);
					TextBox1.Text=Convert.ToString(cmd.ExecuteScalar());
					cn.Close();
				}
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

            da=new SqlDataAdapter("select * from nominee_details",cn);
			da.Fill(ds,"nominees");
			r=ds.Tables["nominees"].NewRow();
			r[0]=Convert.ToInt32(TextBox1.Text);
			r[1]=TextBox2.Text;
			r[2]=TextBox3.Text;
			r[3]=Convert.ToDateTime(s.ToString ());
			r[4]=TextBox5.Text.ToString();
			r[5]=DropDownList4 .SelectedValue ;
			r[6]=Convert.ToString (TextBox7.Text);
			ds.Tables["nominees"].Rows.Add(r);
			cmb=new SqlCommandBuilder(da);
			da.Update(ds,"nominees");
            
            Response.Redirect("dependent form.aspx");
            }
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

