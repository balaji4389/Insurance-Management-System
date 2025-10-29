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
    /// Summary description for CustomerDetails.
    /// </summary>
    public partial class Insu_Company_CustDetails : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection("Data Source=HAI-6EB32C8B139\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True");
       SqlConnection con=new SqlConnection("Data Source=BALAJI\\SQLEXPRESS;Initial Catalog=Insurance_Management_System;Integrated Security=True") ;

          SqlDataAdapter da;
         DataSet ds = new DataSet();
        DataRow r;


        protected void Page_Load(object sender, System.EventArgs e)
        {
           
            
            if (!IsPostBack)
            {
                
                da = new SqlDataAdapter("select company_name from insurance_companies_master", con);
                con.Open();
                ds = new DataSet();
                da.Fill(ds);
                
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "company_name";
                DropDownList1.DataValueField = "company_name";
                DropDownList1.DataBind();
            }
            con.Close();


        }

        
        

        
        
        private void filldata()
        {

            DataGrid2.DataSource = ds;
            DataGrid2.DataBind();

        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            con.Open();
            da = new SqlDataAdapter("select policy_name from policies_master where company_id =(select company_id from insurance_companies_master where company_name='" + DropDownList1.SelectedValue + "')", con);
           
            ds = new DataSet();
            da.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "policy_name";
            DropDownList2.DataValueField = "policy_name";
            DropDownList2.DataBind();
        }
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            
                da = new SqlDataAdapter("select cust_id,policy_amount,agent_id,policy_date,policy_prem_amount,policy_prem_pay_mode from cust_policies_master where policy_id in (select policy_id from policies_master where policy_name='" + DropDownList2.SelectedValue + "')", con);
                da.Fill(ds, "cust_policies_master");
               filldata();
             



        }
        private void message(string msg)
        {
            this.RegisterStartupScript("ClientScript", "<html><body><script>alert('" + msg + "')</script></body></html>");
        }
    }
}
