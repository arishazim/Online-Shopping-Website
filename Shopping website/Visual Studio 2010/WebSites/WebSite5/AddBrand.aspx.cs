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
        {
            Response.Redirect("MainMenu.aspx?returnurl=AddBrand.aspx");
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
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "Category_Name";
        DropDownList1.DataValueField = "Category_ID";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("Select Category", string.Empty));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Brand_class braobj = new Brand_class();
        braobj.Brand_Name = txtbrand.Text;
        braobj.Category_ID = int.Parse(DropDownList1.SelectedItem.Value);
        DataAccess da = new DataAccess();
        string query = "select * from Brand_Table where Brand_Name='" + txtbrand.Text + "'and Category_ID='" + int.Parse(DropDownList1.SelectedItem.Value) + "'";
        DataSet ds = da.get_record(query); ;
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = braobj.insert();
            if (result == 1)
            {
                Response.Redirect("AddBrand.aspx");
            }
            else Label3.Text = "Value entered";
        }
        else Label3.Text = "Value exists in this list";
    }
}