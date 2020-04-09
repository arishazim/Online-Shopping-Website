using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage3 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = Session["User"].ToString();

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
      //  Session.RemoveAll();
        //Session.Remove("User");
        Response.Redirect("MainMenu.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Admin.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {

        Session.RemoveAll();
        Session.Remove("User");
        Response.Redirect("MainMenu.aspx");

    }
}
