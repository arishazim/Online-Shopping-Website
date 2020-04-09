using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data;
using System.Data.SqlClient;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {
 
        Label2.Text = Session["User"].ToString();
        if(this.IsPostBack==false)
        populatecategory();
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
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        DataAccess ds1 = new DataAccess();
        string query5 = "delete from tbl_Shopping_Details";
        ds1.insert_update_delete(query5);
        Session.RemoveAll();
        Session.Remove("User");
        Session.Remove("Email");
        Response.Redirect("MainMenu.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Search"] =int.Parse( ddlcategory.SelectedItem.Value.ToString());
        Response.Redirect("SearchByCategory.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = txtsearch.Text;
        Response.Redirect("Search.aspx");
    }
    protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
    {
        
    }
    protected void Menu1_MenuItemClick1(object sender, MenuEventArgs e)
    {

    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("CustomerLogin.aspx");
    }
}
