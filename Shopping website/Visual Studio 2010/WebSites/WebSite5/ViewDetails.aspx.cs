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
            Response.Redirect("MainMenu.aspx?returnurl=Search.aspx");

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
        int product_id = int.Parse(Request.QueryString["pid"]);
        string query2 = "select * from tbl_Shopping_Details where Product_ID='"+product_id+"'";
        DataAccess da = new DataAccess();
        DataSet ds1 = da.get_record(query2);
        if (ds1.Tables[0].Rows.Count < 1)
        {
            string query1 = "select Product_Table.Product_Image,Category_Table.Category_Name,Brand_Table.Brand_Name,Product_Table.Product_ID,Product_Table.Product_Name,Brand_Table.Brand_ID,Product_Table.Product_Price,Product_Table.Category_ID from Product_Table,Brand_Table,Category_Table where Product_Table.Brand_ID=Brand_Table.Brand_ID and Product_Table.Category_ID=Category_Table.Category_ID and Product_Table.Product_ID='" + product_id + "'";
            DataAccess obj = new DataAccess();
            DataSet ds = obj.get_record(query1);
            int prdctid = int.Parse(ds.Tables[0].Rows[0]["Product_ID"].ToString());
            string prdctname = ds.Tables[0].Rows[0]["Product_Name"].ToString();
            string brandname = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
            string categoryname = ds.Tables[0].Rows[0]["Category_Name"].ToString();
            int brndid = int.Parse(ds.Tables[0].Rows[0]["Brand_ID"].ToString());
            int catid = int.Parse(ds.Tables[0].Rows[0]["Brand_ID"].ToString());
            string prdctimage = ds.Tables[0].Rows[0]["Product_Image"].ToString();
            float price = float.Parse(ds.Tables[0].Rows[0]["Product_Price"].ToString());
            string query = "insert into tbl_Shopping_Details values('" + prdctid + "','" + prdctname + "','" + brndid + "','" + catid + "','" + price + "','" + brandname + "','" + categoryname + "','" + prdctimage + "','"+"1"+"')";
            DataAccess obj1 = new DataAccess();
            int result = obj1.insert_update_delete(query);
            if (result == 1)
            {
                Label12.Text = "Item has been added to cart";
                //  Response.Redirect("MyCart.aspx");

            }
        }

        else
        { 
            int itemnumber = int.Parse(ds1.Tables[0].Rows[0]["Item_Number"].ToString());
            float price = float.Parse(ds1.Tables[0].Rows[0]["Price"].ToString());
            string query3 = "select *from Product_Table where Product_ID='" + product_id + "'";
            DataAccess da2 = new DataAccess();
            DataSet ds2 = da2.get_record(query3);
            float realprice=float.Parse(ds2.Tables[0].Rows[0]["Product_Price"].ToString());
            string query4 = "update tbl_Shopping_Details set Item_Number='"+(itemnumber+1)+"' where Product_ID='"+product_id+"'";
            DataAccess da3 = new DataAccess();
            int result = da3.insert_update_delete(query4);
            if (result == 1)
            {
                Label12.Text = "Item has been added to cart";
                //  Response.Redirect("MyCart.aspx");

            }
        }
    }
}