using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using ShopingClassLibrary1;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
            Response.Redirect("MainMenu.aspx?returnurl=DeleteProduct.aspx");
        if (this.IsPostBack == false)
            populateproduct();
    }

    private void populateproduct()
    {
        Product_class catobj = new Product_class();
        DataSet ds = catobj.Get_All_Record();
        ddlproduct.DataSource = ds.Tables[0];
        ddlproduct.DataTextField = "Product_Name";
        ddlproduct.DataValueField = "Product_ID";
        ddlproduct.DataBind();
        ddlproduct.Items.Insert(0, new ListItem("Select Product", string.Empty));
    }
    protected void ddlproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        populatebrand();
    }

    private void populatebrand()
    {
        Product_class prdctobj = new Product_class();
        DataSet ds1 = prdctobj.Get_Record(ddlproduct.SelectedItem.Text.ToString());
        int brandid = int.Parse(ds1.Tables[0].Rows[0]["Brand_ID"].ToString());
        DataAccess obj = new DataAccess();
        string query = "select * from Brand_Table where Brand_ID='" + brandid + "'";
        DataSet ds = obj.get_record(query);
        ddlbrand.DataSource = ds.Tables[0];
        ddlbrand.DataTextField = "Brand_Name";
        ddlbrand.DataValueField = "Brand_ID";
        ddlbrand.DataBind();
        ddlbrand.Items.Insert(0, new ListItem("Select Brand", string.Empty));
    }
    protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        populatecategory();
    }

    private void populatecategory()
    {
        Brand_class brndobj = new Brand_class();
        DataSet ds1 = brndobj.Get_Record(ddlbrand.SelectedItem.Text.ToString());
        int catid = int.Parse(ds1.Tables[0].Rows[0]["Category_ID"].ToString());
        DataAccess obj = new DataAccess();
        string query = "select * from Category_Table where Category_ID='" + catid + "'";
        DataSet ds = obj.get_record(query);
        ddlcategory.DataSource = ds.Tables[0];
        ddlcategory.DataTextField = "Category_Name";
        ddlcategory.DataValueField = "Category_ID";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, new ListItem("Select Category", string.Empty));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Product_class prdctobj = new Product_class();
        int x = int.Parse(ddlproduct.SelectedItem.Value.ToString());
        int result = prdctobj.delete(x);
        if (result == 1)
        {
            Response.Redirect("DeleteProduct.aspx");
        }
    }
}

