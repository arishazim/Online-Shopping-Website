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
            Response.Redirect("MainMenu.aspx?returnurl=DeleteCategory.aspx");
        }
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


    protected void Button1_Click(object sender, EventArgs e)
    {

       
            Category_class catobj = new Category_class();
            int x = int.Parse(ddlcategory.SelectedItem.Value.ToString());
            DataSet ds = catobj.Get_Record(x);
            if (ds.Tables[0].Rows.Count > 0)
            {
                int catid = int.Parse(ds.Tables[0].Rows[0]["Category_ID"].ToString());
                DataAccess brndobj = new DataAccess();
                string query2 = "delete from Brand_Table where Category_ID='" + catid + "'";
                int ds3 = brndobj.insert_update_delete(query2);
                DataAccess prdctobj = new DataAccess();
                string query3 = "delete from Product_Table where Category_ID='" + catid + "'";
                int ds4 = brndobj.insert_update_delete(query3);
                int result = catobj.delete(x);
                if (result == 1 && ds3 == 1 && ds4 == 1)
                {
                    Response.Redirect("DeleteCategory.aspx");
                }
            }
        }
     
        
    }
