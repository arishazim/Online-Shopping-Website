using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ShopingClassLibrary1;
using System.Data.SqlClient;
using System.Data;

public partial class Default6 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string query = "insert into Contacts values('"+txtmail.Text+"','"+txtmsg.Text+"')";
        DataAccess da = new DataAccess();
        int result=da.insert_update_delete(query);
        if (result == 1)
        {
            clear();
        }
    }

    private void clear()
    {
        txtmsg.Text = "";
        txtmail.Text = "";
    }
}