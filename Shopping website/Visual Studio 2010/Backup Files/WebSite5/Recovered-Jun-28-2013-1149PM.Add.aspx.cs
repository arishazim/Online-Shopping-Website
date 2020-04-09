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
        if (this.IsPostBack == false)
        { }
       
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
       
    }

   
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        
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