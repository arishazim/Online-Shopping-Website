using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data.SqlTypes;
using System.Data;

public partial class Default7 : System.Web.UI.Page
{

    float total_amount = 0;
    int total_item = 0;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
        {
            Response.Redirect("MainMenu.aspx?returnurl=MyCart.aspx");
        }
        if (this.IsPostBack == false)
        {
            populategrid1();
        }
    }

    private void populategrid1()
    {
        DataAccess catobj = new DataAccess();
        string query = "select *from tbl_Shopping_Details";
        DataSet ds = catobj.get_record(query);
        int totalitem = ds.Tables[0].Rows.Count;
        for (int i = 0; i < totalitem; i++)
        {
            total_amount += (float.Parse(ds.Tables[0].Rows[i]["Price"].ToString()) * int.Parse(ds.Tables[0].Rows[i]["Item_Number"].ToString()));
            total_item += int.Parse(ds.Tables[0].Rows[i]["Item_Number"].ToString());
        }
        Session["Amount"] = total_amount;
        Session["Item"] = total_item;
        Label3.Text = "Total Amount :"+total_amount.ToString();
        Label4.Text = "Total Item :" + total_item.ToString();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView1.Rows[rowindex].Cells[1].Text;
        DataAccess catobj = new DataAccess();
        string query = "delete from tbl_Shopping_Details where Product_ID='"+int.Parse(s)+"'";
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
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Address.aspx");
    }
}