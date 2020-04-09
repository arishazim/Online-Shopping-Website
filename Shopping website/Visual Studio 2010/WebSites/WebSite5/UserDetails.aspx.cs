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
            Response.Redirect("MainMenu.aspx?returnurl=UserDetails.aspx");
        if (this.IsPostBack == false)
        {
            populategrid1();
        }
    }
    
    private void populategrid1()
    {
         DataAccess obj = new DataAccess();
        string query = "Select * from User_table";
        DataSet ds = obj.get_record(query);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
         int pageindex = e.NewPageIndex;
        GridView1.PageIndex = pageindex;
        populategrid1(); 
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView1.Rows[rowindex].Cells[1].Text;
        DataAccess obj = new DataAccess();
        string query = "delete from User_table where User_ID='"+int.Parse(s)+"'";
        DataSet ds = obj.get_record(query);
        GridView1.EditIndex = -1;
        populategrid1();
    }
}