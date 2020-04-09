using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
            Response.Redirect("MainMenu.aspx?returnurl=EditProducts.aspx");
        if (this.IsPostBack == false)
        {
            populateproduct();
            populatebrand();
            populatecategory();
        }
    }

    private void populateproduct()
    {
        Product_class prdctobj = new Product_class();
        DataSet ds = prdctobj.Get_All_Record();
        ddlproduct.DataSource = ds.Tables[0];
        ddlproduct.DataTextField = "Product_Name";
        ddlproduct.DataValueField = "Product_ID";
        ddlproduct.DataBind();
        ddlproduct.Items.Insert(0, new ListItem("Select Product", string.Empty));
    }

    private void populatebrand()
    {
        Brand_class brndobj = new Brand_class();
        DataSet ds = brndobj.Get_All_Record();
        ddlbrand.DataSource = ds.Tables[0];
        ddlbrand.DataTextField = "Brand_Name";
        ddlbrand.DataValueField = "Brand_ID";
        ddlbrand.DataBind();
        ddlbrand.Items.Insert(0, new ListItem("Select Brand", string.Empty));
    }

    private void populatecategory()
    {
        Category_class catobj = new Category_class();
        DataSet ds = catobj.Get_All_Record();
        ddlcategory.DataSource = ds.Tables[0];
        ddlcategory.DataTextField = "Category_Name";
        ddlcategory.DataValueField = "Category_ID";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, new ListItem("Select Category", string.Empty));
    }
    protected void ddlproduct_SelectedIndexChanged(object sender, EventArgs e)
    {
        string crow = ddlproduct.SelectedItem.Text.ToString();
        string query = "select *from Product_Table where Product_Name='" + crow + "'";
        DataAccess da = new DataAccess();
        DataSet ds = da.get_record(query);
        txtproduct.Text = ds.Tables[0].Rows[0]["Product_Name"].ToString();
        txtdetails.Text = ds.Tables[0].Rows[0]["Product_Details"].ToString();
        int catid = int.Parse(ds.Tables[0].Rows[0]["Category_ID"].ToString());
        string query1 = "select *from Category_Table where Category_ID='" + catid + "'";
        DataSet ds1 = da.get_record(query1);
        ddlcategory.SelectedItem.Text = ds1.Tables[0].Rows[0]["Category_Name"].ToString();
        int brndid = int.Parse(ds.Tables[0].Rows[0]["Brand_ID"].ToString());
        string query2 = "select *from Brand_Table where Brand_ID='" + brndid + "'";
        DataSet ds2 = da.get_record(query2);
        ddlbrand.SelectedItem.Text = ds2.Tables[0].Rows[0]["Brand_Name"].ToString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Product_class prdctobj = new Product_class();
        string filename = "";
        if (FileUpload1.HasFile)
        {
            filename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            string path = Server.MapPath("Upload_image/" + filename);
            FileUpload1.PostedFile.SaveAs(path);
            prdctobj.Product_Image = "Upload_image/" + filename;
        }
        prdctobj.Brand_ID = ddlbrand.SelectedIndex;
        prdctobj.Category_ID = int.Parse(ddlcategory.SelectedItem.Value.ToString());
        prdctobj.Product_Details = txtdetails.Text;
        prdctobj.Product_Name = txtproduct.Text;
        prdctobj.Product_Price = float.Parse(txtprice.Text);
        DataAccess da = new DataAccess();
        string query = "select * from Product_Table where Product_Name='" + txtproduct.Text + "' and Brand_ID='" + ddlbrand.SelectedIndex + "' and Category_ID='" + int.Parse(ddlcategory.SelectedItem.Value.ToString()) + "',and Product_Image='" + prdctobj.Product_Image + "'";
        DataAccess da1 = new DataAccess();
        DataSet ds = da1.get_record(query);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = prdctobj.update(int.Parse(ddlproduct.SelectedItem.Value.ToString()));
            if (result == 1)
            {
                populateproduct();
                Response.Redirect("EditProducts.aspx");
            }
        }
        else Label3.Text = "Value is already entered";
    }
}