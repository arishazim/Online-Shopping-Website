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
        if(this.IsPostBack==false)
        populatecategory();
    }
    protected void submit1_Click(object sender, EventArgs e)
    {
        Category_class catobj = new Category_class();
        catobj.Category_Name = txtcatname.Text;
        int result = catobj.insert();
        if (result == 1)
            Label3.Text = "Value Has Entered Successfully !!";
    }
    protected void submit2_Click(object sender, EventArgs e)
    {
        Brand_class braobj = new Brand_class();
        braobj.Brand_Name = txtbrand.Text;
        int result = braobj.insert();
        if (result == 1)
        {
            Label4.Text = "Value Has Entered Successfully !!";
            txtbrand.Text = "";
        }
    }

    private void populatecategory()
    {
        Category_class catobj = new Category_class();
        DataSet ds = catobj.Get_All_Record();
        DropDownList3.DataSource = ds.Tables[0];
        DropDownList3.DataTextField = "Category_Name";
        DropDownList3.DataValueField = "Category_ID";
        DropDownList3.DataBind();
        DropDownList3.Items.Insert(0,new ListItem("Select Category",string.Empty));
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        populatebrand(int.Parse(DropDownList1.SelectedItem.Value));
    }

    private void populatebrand(int x)
    {
        DataAccess obj = new DataAccess();
        string query = "select *from Brand_Table where Catagory_ID='"+x+"'";
        DataSet ds = obj.get_record(query);
        DropDownList2.DataSource = ds.Tables[0];
        DropDownList2.DataTextField = "Brand_Name";
        DropDownList2.DataValueField = "Brand_ID";
        DropDownList2.DataBind();
        DropDownList2.Items.Insert(0, new ListItem("Select brand", string.Empty));
    }
    protected void submit3_Click(object sender, EventArgs e)
    {
        Product_class proobj = new Product_class();
        proobj.Brand_ID = int.Parse(DropDownList2.SelectedItem.Value);
        proobj.Category_ID = int.Parse(DropDownList1.SelectedItem.Value);
        proobj.Product_Details = TextBox2.Text;
        proobj.Product_Name = TextBox1.Text;
        int result = proobj.insert();
        if (result == 1)
        {
            Label5.Text = "Value Has Entered Successfully !!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            DropDownList1.Text = "";
            DropDownList2.Text = "";
        }
    }
}