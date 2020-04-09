using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data;
using System.Data.SqlClient;

public partial class Default7 : System.Web.UI.Page
{

    string shopping_details = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["User"] == null)
            Response.Redirect("MainMenu.aspx?returnurl=address.aspx");
        
        if (this.IsPostBack == false)
            populatestate();

    }

    private void populatestate()
    {
        string query = "select *from tbl_State";
        DataAccess db1 = new DataAccess();
        DataSet ds = db1.get_record(query);
        ddlstate.DataSource = ds.Tables[0];
        ddlstate.DataTextField = "State_Name";
        ddlstate.DataValueField = "State_ID";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0,new ListItem("Select State",string.Empty));
    }
    private void populatecity(int stateid)
    {
        string query = "select * from tbl_City where State_ID='"+stateid+"'";
        DataAccess db1 = new DataAccess();
        DataSet ds = db1.get_record(query);
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataTextField = "City_Name";
        ddlcity.DataValueField = "City_ID";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("Select City", string.Empty));
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataAccess db1 = new DataAccess();
       // string query = "insert into tbl_User_Address values('" + txtname.Text + "','" + txtaddress.Text + "','" + ddlcity.SelectedItem.Text.ToString() + "','" + int.Parse(txtpin.Text) + "','" + int.Parse(txtphone.Text) + "','" + ddlstate.SelectedItem.Text.ToString() + "')";
      //  int result = db1.insert_update_delete(query);
     //   if (result == 1)
       // {
            float totalamount = float.Parse(Session["Amount"].ToString());
            int amount = int.Parse(Session["Item"].ToString());
            string usermail =Session["Email"].ToString();
            string query2 = "select User_ID from User_table where User_Email='"+usermail+"'";
            DataAccess da = new DataAccess();
            DataSet ds = da.get_record(query2);
            int userid= int.Parse(ds.Tables[0].Rows[0]["User_ID"].ToString());
            string address =  txtaddress.Text + "." + ddlcity.SelectedItem.Text.ToString() + "." + ddlstate.SelectedItem.Text.ToString() + "." + txtpin.Text + "." + txtphone.Text;
            string query6 = "select *from tbl_Shopping_Details";
            DataAccess da5 = new DataAccess();
            DataSet ds5 = da5.get_record(query6);
            Product_class prdobj = new Product_class();
           
            for(int i =0;i<ds5.Tables[0].Rows.Count;i++)
            {
                DataSet ds0 = prdobj.Get_Record(int.Parse(ds5.Tables[0].Rows[i]["Product_ID"].ToString()));
                shopping_details +=""+ds5.Tables[0].Rows[i]["Product_ID"].ToString()+";"+ds5.Tables[0].Rows[i]["Brand_ID"].ToString()+";"+ds5.Tables[0].Rows[i]["Category_ID"].ToString()+";"+ds0.Tables[0].Rows[i]["Product_Price"].ToString()+";"+ds5.Tables[0].Rows[i]["Item_Number"].ToString()+"//";
            }
            string query4="insert into Order_Table values('"+DateTime.Now.ToString("dd/MM/yyyy")+"','"+userid+"','"+totalamount+"','"+address+"','"+"Requesting for products"+"','"+shopping_details+"','"+amount+"')";
            DataAccess da2 = new DataAccess();
            int result2 = da2.insert_update_delete(query4);
            if (result2 == 1)
            {
                DataAccess ds1 = new DataAccess();
                string query5 = "delete from tbl_Shopping_Details";
                ds1.insert_update_delete(query5);
                Response.Redirect("Thanks.aspx");
            }
       // }
      //  else 
       // { }
      //  Response.Redirect("paymentoption.aspx");
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        populatecity(int.Parse(ddlstate.SelectedItem.Value.ToString()));
    }
}