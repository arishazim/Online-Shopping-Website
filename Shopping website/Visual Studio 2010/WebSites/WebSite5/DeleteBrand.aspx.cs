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
            Response.Redirect("MainMenu.aspx?returnurl=DeleteBrand.aspx");
        if (this.IsPostBack == false)
            populatebrand();
    }

    private void populatebrand()
    {
        Brand_class catobj = new Brand_class();
        DataSet ds = catobj.Get_All_Record();
        ddlbrand.DataSource = ds.Tables[0];
        ddlbrand.DataTextField = "Brand_Name";
        ddlbrand.DataValueField = "Brand_ID";
        ddlbrand.DataBind();
        ddlbrand.Items.Insert(0, new ListItem("Select Brand", string.Empty));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Brand_class brndobj = new Brand_class();
        int x = int.Parse(ddlbrand.SelectedItem.Value.ToString());
        DataSet ds = brndobj.Get_Record(x);
        if (ds.Tables[0].Rows.Count > 0)
        {
            int brndid = int.Parse(ds.Tables[0].Rows[0]["Brand_ID"].ToString());
            DataAccess prdctobj = new DataAccess();
            string query = "delete from Product_table where Brand_ID='"+brndid+"'";
            int ds2 = prdctobj.insert_update_delete(query);
            int result = brndobj.delete(x);
            if (result == 1)
            {
                Response.Redirect("DeleteBrand.aspx");
            }
        }
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
        string query = "select * from Category_Table where Category_ID='"+catid+"'";
        DataSet ds = obj.get_record(query);
        ddlcategory.DataSource = ds.Tables[0];
        ddlcategory.DataTextField = "Category_Name";
        ddlcategory.DataValueField = "Category_ID";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, new ListItem("Select Category", string.Empty));
    }
}