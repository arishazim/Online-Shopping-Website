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
        {
            Response.Redirect("MainMenu.aspx?returnurl=AddProduct.aspx");
        }
        if (this.IsPostBack == false)
            populatecategory();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Product_class proobj = new Product_class();
        string filename = "";
        if (FileUpload1.HasFile)
        {
            filename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            string path = Server.MapPath("Upload_image/" + filename);
            FileUpload1.PostedFile.SaveAs(path);
            proobj.Product_Image = "Upload_image/" + filename;
        }

        proobj.Brand_ID = int.Parse(ddlbrand.SelectedItem.Value.ToString());
        proobj.Category_ID = int.Parse(ddlcategory.SelectedItem.Value.ToString());
        proobj.Product_Details = txtdetails.Text;
        proobj.Product_Name = txtprdctname.Text;
        proobj.Product_Price = float.Parse(txtprice.Text);
        proobj.Normal_Price = float.Parse(txtprice2.Text);
        DataAccess da = new DataAccess();
        string query = "select *from Product_Table where Product_Name='" + txtprdctname.Text + "' and Brand_ID='" + int.Parse(ddlbrand.SelectedItem.Value.ToString()) + "' and Category_ID='" + int.Parse(ddlcategory.SelectedItem.Value.ToString()) + "' and Product_Image='"+proobj.Product_Image+"'";
        DataSet ds = da.get_record(query);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = proobj.insert();
            if (result == 1)
            {

                Response.Redirect("AddProduct2.aspx");
            }
            else Label3.Text = "Value entered";
        }
        else Label3.Text = "Value exists in this list";
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

    private void populatebrand()
    {
        Category_class catobj = new Category_class();
        DataSet ds1 = catobj.Get_Record(ddlcategory.SelectedItem.Text.ToString());
        int catid = int.Parse(ds1.Tables[0].Rows[0]["Category_ID"].ToString());
        DataAccess obj = new DataAccess();
        string query = "select * from Brand_Table where Category_ID = '" + catid + "'";
        DataSet ds = obj.get_record(query);
        ddlbrand.DataSource = ds.Tables[0];
        ddlbrand.DataTextField = "Brand_Name";
        ddlbrand.DataValueField = "Brand_ID";
        ddlbrand.DataBind();
        ddlbrand.Items.Insert(0, new ListItem("Select Brand", string.Empty));
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        populatebrand();
    }
}