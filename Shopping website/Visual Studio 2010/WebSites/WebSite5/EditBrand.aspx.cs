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
        {
            Response.Redirect("MainMenu.aspx?returnurl=EditBrand.aspx");
        }
        if (this.IsPostBack == false)
        {
            populatebrand();
            populatecategory();
        }
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
        Brand_class brndobj = new Brand_class();
        DataSet ds = brndobj.Get_All_Record();
        ddlbrand.DataSource = ds.Tables[0];
        ddlbrand.DataTextField = "Brand_Name";
        ddlbrand.DataValueField = "Brand_ID";
        ddlbrand.DataBind();
        ddlbrand.Items.Insert(0, new ListItem("Select Brand", string.Empty));
    }
    protected void ddlbrand_SelectedIndexChanged(object sender, EventArgs e)
    {
        string crow = ddlbrand.SelectedItem.Text.ToString();
        string query = "select *from Brand_Table where Brand_Name='" + crow + "'";
        DataAccess da = new DataAccess();
        DataSet ds = da.get_record(query);
        txtbrand.Text = ds.Tables[0].Rows[0]["Brand_Name"].ToString();
        int catid = int.Parse(ds.Tables[0].Rows[0]["Category_ID"].ToString());
        string query1 = "select * from Category_Table where Category_ID='" + catid + "'";
        DataAccess da1 = new DataAccess();
        DataSet ds1 = da1.get_record(query1);
        if (ds1.Tables[0].Rows.Count > 0)
        {
            string cname = ds1.Tables[0].Rows[0]["Category_Name"].ToString();
            ddlcategory.SelectedValue = catid.ToString();//ds1.Tables[0].Rows[0]["Category_Name"].ToString();
            // DropDownList3.DataBind();
            //txtbrand.DataBind();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Brand_class brndobj = new Brand_class();
        brndobj.Brand_Name = txtbrand.Text;
        brndobj.Category_ID = int.Parse(ddlcategory.SelectedItem.Value.ToString());
        string query = "select *from Brand_Table where Brand_Name='" + txtbrand.Text + "' and Category_ID='" + int.Parse(ddlcategory.SelectedItem.Value.ToString()) + "'";
        DataAccess da = new DataAccess();
        DataSet ds = da.get_record(query);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = brndobj.update(int.Parse(ddlbrand.SelectedItem.Value.ToString()));
            if (result == 1)
            {
                Response.Redirect("EditBrand.aspx");
            }
        }
        else Label3.Text = "Value is already entered";

    }
}