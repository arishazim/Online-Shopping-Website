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
        if (this.IsPostBack == false)
            populatedatalist();
    }
    private void populatedatalist()
    {
        try
        {
            string search_item = Session["Search"].ToString();
            // int search_id = int.Parse(search_item);
            int product_id = int.Parse(Request.QueryString["pid"]);
            string query1 = "select Product_Table.Product_Image,Product_Table.Product_Name,Brand_Table.Brand_Name,Product_Table.Product_Price,Product_Table.Normal_Price,Product_Table.Product_Details from Product_Table,Brand_Table where Product_Table.Brand_ID=Brand_Table.Brand_ID and Product_Table.Product_ID='" + product_id + "'";
            DataAccess obj = new DataAccess();
            DataSet ds = obj.get_record(query1);
            PagedDataSource pg = new PagedDataSource();
            pg.AllowPaging = true;
            pg.PageSize = 1;
            pg.DataSource = ds.Tables[0].DefaultView;
            DataList1.DataSource = pg;

            // DataList1.DataSource = ds.Tables[0];
            DataList1.DataBind();
        }
        catch (Exception error)
        {

        }

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Label12.Text = "To Shop You Have To Login First";
    }
}