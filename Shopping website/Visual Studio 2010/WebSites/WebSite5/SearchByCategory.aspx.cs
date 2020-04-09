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
            Response.Redirect("MainMenu.aspx?returnurl=SearchByCategory.aspx");

        if (this.IsPostBack == false)
            populatedatalist();
        
       /* string search_item=Session["Search"].ToString();
        int search_id = int.Parse(search_item);
        string query1 = "select * from Product_Table where Category_ID='"+search_id+"' ";
        DataAccess obj = new DataAccess();
        DataSet ds = obj.get_record(query1);
        DataList2.DataSource = ds.Tables[0];
        DataList2.DataBind();*/
    }

    
    
    private void populatedatalist()
    {
        try
        {
            string search_item = Session["Search"].ToString();
            int search_id = int.Parse(search_item);
            if (search_id == null)
            {
                Response.Redirect("Sorry.aspx");
            }
            string query1 = "select * from Product_Table where Category_ID='" + search_id + "' ";
            DataAccess obj = new DataAccess();
            DataSet ds = obj.get_record(query1);
            if (ds.Tables[0].Rows.Count < 1)
            {
                Response.Redirect("Sorry.aspx");
            }
            PagedDataSource pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 7;
            int cpage = 0;
            if (Request.QueryString["p"] == null)
            {
                cpage = 0;
            }
            else
            {
                cpage = int.Parse(Request.QueryString["p"]);
                pg.CurrentPageIndex = cpage;
            }
            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;

            // DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
             if (pg.IsFirstPage && pg.IsLastPage)
            {
                lnknext.Visible = false;
                lnkprev.Visible = false;
            }
            else if (pg.IsFirstPage)
            {
                lnkprev.Visible = false;
                lnknext.NavigateUrl = "SearchByCategory.aspx?p=" + (cpage + 1).ToString();
            }

            else if (pg.IsLastPage)
            {
                lnknext.Visible = false;
                lnkprev.NavigateUrl = "SearchByCategory.aspx?p=" + (cpage - 1).ToString();
            }

           
            else
            {
                lnkprev.Visible = true;
                lnknext.NavigateUrl = "SearchByCategory?p=" + (cpage + 1).ToString();
                lnkprev.NavigateUrl = "SearchByCategory?p=" + (cpage - 1).ToString();

            }
        }

        catch (Exception error)

        { }
    }
}