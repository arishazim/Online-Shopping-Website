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
            Response.Redirect("MainMenu.aspx?returnurl=EditCategory.aspx");
        }

        if (this.IsPostBack == false)
        {
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
    protected void Button1_Click(object sender, EventArgs e)
    {
        Category_class catobj = new Category_class();
        catobj.Category_Name = txtcategory.Text;
        DataSet ds = catobj.Get_Record(txtcategory.Text);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = catobj.update(int.Parse(ddlcategory.SelectedItem.Value.ToString()));
            if (result == 1)
            {
                Response.Redirect("EditCategory.aspx");
            }
        }

        else Label3.Text = "Value already exists";
    }
    protected void ddlcategory_SelectedIndexChanged(object sender, EventArgs e)
    {
        string crow = ddlcategory.SelectedItem.Text.ToString();
        string query = "select *from Category_Table where Category_Name='" + crow + "'";
        DataAccess da = new DataAccess();
        DataSet ds = da.get_record(query);
        txtcategory.Text = ds.Tables[0].Rows[0]["Category_Name"].ToString();
    }
}