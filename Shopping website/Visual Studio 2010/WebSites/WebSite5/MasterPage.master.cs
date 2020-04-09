using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data.SqlClient;
using System.Data;
using System.Collections;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
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


    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("SignInPage.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {

        try
        {
            DataAccess userobj = new DataAccess();
            string query = "select *from User_table where User_Email = '" + txtmail.Text + "' and User_Password='" + txtpass.Text + "'";
            DataSet ds = userobj.get_record(query);
            if ((txtmail.Text == "admin") && (txtpass.Text == "password"))
            {
                Session["User"] = "Admin";
                Button1.Visible = true;
            }
            else if (ds.Tables[0].Rows.Count == 1)
            {
                string username = ds.Tables[0].Rows[0]["User_name"].ToString();
                string mailid = ds.Tables[0].Rows[0]["User_Email"].ToString();
                Session["User"] = username;
                Session["Email"]=mailid;
                if (Request.QueryString.Count == 0)
                {
                    Response.Redirect("CustomerLogin.aspx");
                }
                else
                {
                    string return_url = Request.QueryString["returnurl"].ToString();
                    Response.Redirect(return_url);

                }
            }
        }
        catch (Exception error)
        { }

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("adminlogin.aspx");
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Session["Search"] = int.Parse(ddlcategory.SelectedItem.Value.ToString());
        Response.Redirect("Search_By_Guest.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["Search"] = txtsearch.Text;
        Response.Redirect("SearchByName.aspx");
    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("MainMenu.aspx");
    }
}
