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
            Response.Redirect("MainMenu.aspx?returnurl=Query.aspx");
        if (this.IsPostBack == false)
        {
            populategridview();
        }
    }

    private void populategridview()
    {
        DataAccess obj = new DataAccess();
        string query = "Select * from Contacts";
        DataSet ds = obj.get_record(query);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageindex = e.NewPageIndex;
        GridView1.PageIndex = pageindex;
        populategridview();
    }
}