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
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("MainMenu.aspx?returnurl=ChangePassword.aspx");
        }

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string email = Session["Email"].ToString();
        string query1 = "select * from User_table where User_Email='" + email + "' and User_Password='"+txtcurpassword.Text+"'";
        DataAccess da1 = new DataAccess();
        DataSet ds1 = da1.get_record(query1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            string query = "update User_table set User_Password='" + txtnewpassword.Text + "' where User_Email='" + email + "'";
            DataAccess da = new DataAccess();
            DataSet ds = da.get_record(query);
            Label3.Text = "Your Password Has Been Changed";
        }
        else Label3.Text = "Current Password does not match";
    }
}