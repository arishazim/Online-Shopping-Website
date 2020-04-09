using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using ShopingClassLibrary1;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        user_details userobj = new user_details();
        userobj.Name = txtname.Text;
        userobj.Email = txtmail.Text;
        userobj.Password = txtpassword.Text;
        userobj.Question = DropDownList1.SelectedItem.Text.ToString();
        userobj.Answer = TextBox1.Text;
        string query = "select * from User_table where User_Email='"+txtmail.Text+"'";
        DataAccess da = new DataAccess();
        DataSet ds = da.get_record(query);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = userobj.Insert();
            if (result == 1)
            {
                Response.Redirect("MainMenu.aspx");
                clear();
            }
        }
        else
            Label1.Text="This EMail ID is already registered";
    }

    protected void clear()
    {
        txtname.Text = "";
        txtname.Text = "";
        txtmail.Text = "";
    }
}