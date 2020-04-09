using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("MainMenu.aspx?returnurl=CustomerLogin.aspx");
        }
    }
/*
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 9;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 9;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 9;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 9;
        Response.Redirect("SearchByCategory.aspx");
    }*/
    protected void ImageButton17_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 18;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton16_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 18;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton25_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 18;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton23_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 17;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton27_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 17;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton26_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 17;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton24_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 17;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton20_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 19;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton19_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 19;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton21_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 20;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton22_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 20;
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton14_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = 23;
        Response.Redirect("SearchByCategory.aspx");

    }
}