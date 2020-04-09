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
            Response.Redirect("MainMenu.aspx?returnurl=ShowData.aspx");
        }
        if (this.IsPostBack == false)
        {
            populategrid1();
            populategrid2();
        }
    }

    private void populategrid1()
    {
       // Category_class catobj = new Category_class();
       // DataSet ds = catobj.Get_All_Record();
       // GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    private void populategrid2()
    {
       // Brand_class catobj = new Brand_class();
        //DataSet ds = catobj.Get_All_Record();
        // GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    
}