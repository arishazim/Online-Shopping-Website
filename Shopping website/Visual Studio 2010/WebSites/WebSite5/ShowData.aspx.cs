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
            populategrid3();
        }
    }

    private void populategrid1()
    {
        Category_class catobj = new Category_class();
        DataSet ds = catobj.Get_All_Record();
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    private void populategrid3()
    {
        Product_class prdctobj = new Product_class();
        DataSet ds = prdctobj.Get_All_Record();
        GridView3.DataSource = ds.Tables[0];
        GridView3.DataBind();
    }

    private void populategrid2()
    {
        Brand_class catobj = new Brand_class();
        DataSet ds = catobj.Get_All_Record();
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
    }


    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView1.EditIndex = rowedit;
        populategrid1();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView1.Rows[rowindex].Cells[1].Text;
        TextBox txtname = (TextBox)GridView1.Rows[rowindex].Cells[2].Controls[0];
        Category_class catobj = new Category_class();
        catobj.Category_Name = txtname.Text;
      //  string query = "update Category_Table set Category_Name='"+txtname.Text+"' where Category_Name='"+s+"'";
        //DataAccess da = new DataAccess();

        catobj.Category_ID = int.Parse(s);



        catobj.update(catobj.Category_ID);
        GridView1.EditIndex = -1;
        populategrid1();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView1.Rows[rowindex].Cells[1].Text;
        Category_class catobj = new Category_class();
        //string query = "detele from Category_Table where Category_ID='"+int.Parse(s)+"'";
        catobj.delete(int.Parse(s));
        string query = "delete from Brand_Table where Category_ID='"+int.Parse(s)+"'";
        DataAccess da = new DataAccess();
        da.insert_update_delete(query);
        string query1 = "delete from Product_Table where Category_ID='" + int.Parse(s) + "'";
        DataAccess da1 = new DataAccess();
        da1.insert_update_delete(query1);
        
        GridView1.EditIndex = -1;
        populategrid1();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        populategrid1();
    }
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView2.EditIndex = -1;
        populategrid2();
    }
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView2.Rows[rowindex].Cells[1].Text;
        Brand_class catobj = new Brand_class();
        //string query = "detele from Category_Table where Category_ID='"+int.Parse(s)+"'";
        catobj.delete(int.Parse(s));
        string query = "delete from Product_Table where Category_ID='" + int.Parse(s) + "'";
        DataAccess da = new DataAccess();
        da.insert_update_delete(query);
        
        GridView2.EditIndex = -1;
        populategrid2();
    }
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView2.EditIndex = rowedit;
        populategrid2();
    }
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView2.Rows[rowindex].Cells[1].Text;
        TextBox txtname = (TextBox)GridView2.Rows[rowindex].Cells[2].Controls[0];
        Brand_class catobj = new Brand_class();
        catobj.Brand_Name = txtname.Text;
        //  string query = "update Category_Table set Category_Name='"+txtname.Text+"' where Category_Name='"+s+"'";
        //DataAccess da = new DataAccess();
        //catobj.Brand_ID = int.Parse(s);
        catobj.update(int.Parse(s));
        GridView2.EditIndex = -1;
        populategrid2();
    }
    protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView3.Rows[rowindex].Cells[1].Text;
        TextBox txtname = (TextBox)GridView3.Rows[rowindex].Cells[4].Controls[0];
        TextBox txtdetails = (TextBox)GridView3.Rows[rowindex].Cells[5].Controls[0];
        TextBox txtprice = (TextBox)GridView3.Rows[rowindex].Cells[6].Controls[0];
        //TextBox imageset = (TextBox)GridView3.Rows[rowindex].Cells[7].Controls[0];
        Product_class catobj = new Product_class();
        catobj.Product_Name = txtname.Text;
        catobj.Product_Details = txtdetails.Text;
        catobj.Product_Price = float.Parse(txtprice.Text);
      //  catobj.Product_Image = imageset.Text;
          string query = "update Product_Table set Product_Name='"+txtname.Text+"', Product_Details='"+txtdetails.Text+"', Product_Price='"+float.Parse(txtprice.Text)+"' where Product_ID='"+s+"'";
        DataAccess da = new DataAccess();
       // catobj.Product_ID = int.Parse(s);
       // catobj.update(int.Parse(s));
        da.get_record(query);
        GridView3.EditIndex = -1;
        populategrid3();
    }
    protected void GridView3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int rowedit = e.NewEditIndex;
        GridView3.EditIndex = rowedit;
        populategrid3();
    }
    protected void GridView3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int rowindex = e.RowIndex;
        string s = GridView3.Rows[rowindex].Cells[1].Text;
        Product_class catobj = new Product_class();
        //string query = "detele from Category_Table where Category_ID='"+int.Parse(s)+"'";
        catobj.delete(int.Parse(s));
        GridView3.EditIndex = -1;
        populategrid3();
    }
    protected void GridView3_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView3.EditIndex = -1;
        populategrid3();
    }
    protected void GridView3_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       
    }
    protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
       
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageindex = e.NewPageIndex;
        GridView1.PageIndex = pageindex;
        populategrid1();
    }
    protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageindex = e.NewPageIndex;
        GridView2.PageIndex = pageindex;
        populategrid2();
    }
    protected void GridView3_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        int pageindex = e.NewPageIndex;
        GridView3.PageIndex = pageindex;
        populategrid3();
    }
}