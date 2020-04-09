using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data;
using System.Data.SqlClient;

public partial class Default6 : System.Web.UI.Page
{
    
    DataAccess da = new DataAccess();
    DataSet ds = null;
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    private void populatequestion()
    {
        string query = "select * from User_table where User_Email='" + txtmail.Text + "'";
        DataAccess da = new DataAccess();
        ds = da.get_record(query);
        if (ds.Tables[0].Rows.Count > 0)
        {
            txtquestion.Text = ds.Tables[0].Rows[0]["Question"].ToString();
            string answer = ds.Tables[0].Rows[0]["Answer"].ToString();
            ViewState["Answer"]=answer;
          
        }
        else
            Label1.Text = "Email ID does not match";
    }


    protected void Button2_Click(object sender, EventArgs e)
    {
       string answer = ViewState["Answer"].ToString();
        if (answer == txtanswer.Text)
        {
            txtpassword.Visible = true;
            string query = "select * from User_table where User_Email='" + txtmail.Text + "'";
            DataAccess da = new DataAccess();
            ds = da.get_record(query);
            txtpassword.Text = ds.Tables[0].Rows[0]["User_Password"].ToString();
        }
        else
            Label1.Text = "Your answer does not match";
       
    }
    protected void txtmail_TextChanged(object sender, EventArgs e)
    {
            populatequestion();
    }
}