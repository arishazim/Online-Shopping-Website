using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data;
using System.Data.SqlClient;

public partial class Default7 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("MainMenu.aspx?returnurl=Order.aspx");
        }
        if (this.IsPostBack == false)
        {
            populategrid1();
        }
    }

    private void populategrid1()
    {
        DataAccess obj = new DataAccess();
        string query = "Select * from Order_Table";
        DataSet ds = obj.get_record(query);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView1.EditIndex = rowedit;
        populategrid1();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
         GridView1.EditIndex = -1;
        populategrid1();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView1.Rows[rowindex].Cells[1].Text;
        TextBox txtname = (TextBox)GridView1.Rows[rowindex].Cells[6].Controls[0];
        DataAccess catobj = new DataAccess();
        string query = "update Order_Table set Order_Status='"+txtname.Text+"' where Order_ID='"+int.Parse(s)+"'";
        catobj.insert_update_delete(query);
        GridView1.EditIndex = -1;
        populategrid1();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        int pageindex = e.NewPageIndex;
        GridView1.PageIndex = pageindex;
        populategrid1();
    }
}