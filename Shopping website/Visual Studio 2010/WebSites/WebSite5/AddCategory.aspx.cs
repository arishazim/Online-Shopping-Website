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
            Response.Redirect("MainMenu.aspx?returnurl=AddCategory.aspx");
        }

    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        Category_class catobj = new Category_class();
        catobj.Category_Name = txtname.Text;
        DataSet ds = catobj.Get_Record(txtname.Text);
        if (ds.Tables[0].Rows.Count == 0)
        {
            int result = catobj.insert();
            if (result == 1)
            {
                Response.Redirect("AddCategory.aspx");
            }
            Label3.Text = "Value entered";
        }
        else Label3.Text = "Value exists in this list";
    }
}