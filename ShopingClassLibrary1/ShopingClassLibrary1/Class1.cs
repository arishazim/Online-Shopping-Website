using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace ShopingClassLibrary1
{
    public class DataAccess
    {
        string connectionstring = @"D:\CODING\SHOPPING WEBSITE\VISUAL STUDIO 2010\WEBSITES\WEBSITE5\APP_DATA\SHOPPING.MDF";
        SqlConnection con = null;
        SqlDataAdapter da = null;
        private void sqlcon()
        {
            con = new SqlConnection(connectionstring);
        }
        public int insert_update_delete(string query)
        {
            sqlcon();
            con.Open();
            SqlCommand com = new SqlCommand(query, con);
            int result = com.ExecuteNonQuery();
            con.Close();
            return result;
        }

        public DataSet get_record(string query)
        {
            sqlcon();
            da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }

    public class Product_class
    {
        //int product_id;
        int Category_id;
        int brand_id;
        string product_name;
        string product_details;
        string product_image;
        float product_price;
        float normal_price;
        DataAccess daobj = new DataAccess();
        public float Product_Price
        {
            get { return product_price; }
            set { product_price = value; }
        }

        public float Normal_Price
        {
            get { return normal_price; }
            set { normal_price = value; }
        }

        public int Category_ID
        {
            get { return Category_id; }
            set { Category_id = value; }
        }

        public int Brand_ID
        {
            get { return brand_id; }
            set { brand_id = value; }
        }

        public string Product_Name
        {
            get { return product_name; }
            set { product_name = value; }
        }

        public string Product_Details
        {
            get { return product_details; }
            set { product_details = value; }
        }

        public string Product_Image
        {
            get { return product_image; }
            set { product_image = value; }
        }

        public int insert()
        {
            string query = "insert into Product_Table values('" + Category_ID + "','" + Brand_ID + "','" + Product_Name + "','" + Product_Details + "','" + Product_Image + "','"+Product_Price+"','"+Normal_Price+"')";
            return daobj.insert_update_delete(query);
        }

        public int update(string productname)
        {
            string query = "update Product_Table set Product_Name='" + Product_Name + "',Product_Details='" + Product_Details + "', Product_Image='" + Product_Image + "' where Product_Name='" + productname + "' ";
            return daobj.insert_update_delete(query);
        }

        public int update(int productid)
        {
            string query = "update Product_Table set Product_Name='" + Product_Name + "',Product_Details='" + Product_Details + "', Product_Image='" + Product_Image + "',Product_Price='"+Product_Price+"' where Product_ID='" + productid + "' ";
            return daobj.insert_update_delete(query);
        }

        public int delete(string productname)
        {
            string query = "delete from Product_Table where Product_Name='" + productname + "'";
            return daobj.insert_update_delete(query);
        }

        public int delete(int productid)
        {
            string query = "delete from Product_Table where Product_ID='" + productid + "'";
            return daobj.insert_update_delete(query);
        }

      /*  public int delete(int catid)
        {
            string query = "delete from Product_Table where Category_ID='" + catid + "'";
            return daobj.insert_update_delete(query);
        }
        public int delete_Brand(int brndid)
        {
            string query = "delete from Product_Table where Category_ID='" + brndid + "'";
            return daobj.insert_update_delete(query);
        }*/

        public DataSet Get_All_Record()
        {
            string query = "select *from Product_Table";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(string productname)
        {
            string query = "select *from Product_Table where Product_Name='" + productname + "'";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(int productid)
        {
            string query = "select *from Product_Table where Product_ID='" + productid + "'";
            return daobj.get_record(query);
        }
    }

    public class Category_class
    {
        int category_id;
        string category_name;
        DataAccess daobj = new DataAccess();
        public int Category_ID
        {
            get { return category_id; }
            set { category_id = value; }
        }

        public string Category_Name
        {
            get { return category_name; }
            set { category_name = value; }
        }

        public int insert()
        {
            string query = "insert into Category_Table values('" + Category_Name + "')";
            return daobj.insert_update_delete(query);
        }

        public int update(string catname)
        {
            string query = "update Category_Table set Category_Name='" + Category_Name + "' where Category_Name='" + catname + "'";
            return daobj.insert_update_delete(query);
        }

        public int update(int catid)
        {
            string query = "update Category_Table set Category_Name='" + Category_Name + "' where Category_ID='" + catid + "'";
            return daobj.insert_update_delete(query);
        }

        public int delete(string catname)
        {
            string query = "delete from Category_Table where Category_Name='" + catname + "'";
            return daobj.insert_update_delete(query);
        }

        public int delete(int catid)
        {
            string query = "delete from Category_Table where Category_ID='" + catid + "'";
            return daobj.insert_update_delete(query);
        }

        public DataSet Get_All_Record()
        {
            string query = "select *from Category_Table";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(string categoryname)
        {
            string query = "select *from Category_Table where Category_Name='" + categoryname + "'";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(int categoryid)
        {
            string query = "select *from Category_Table where Category_ID='" + categoryid + "'";
            return daobj.get_record(query);
        }
    }

    public class Brand_class
    {
        int category_id;
        string brand_name;
        DataAccess daobj = new DataAccess();
        /*public int Brand_ID
        {
            get { return brand_id; }
            set { brand_id = value; }
        }*/

        public int Category_ID
        {
            get { return category_id; }
            set { category_id = value; }
        }
        public string Brand_Name
        {
            get { return brand_name; }
            set { brand_name = value; }
        }

        public int insert()
        {
            string query = "insert into Brand_Table values('" + Brand_Name + "','" + Category_ID + "')";
            return daobj.insert_update_delete(query);
        }

        public int update(string brndname)
        {
            string query = "update Brand_Table set Brand_Name='" + Brand_Name + "',Category_ID='" + Category_ID + "'where Brand_Name='" + brndname + "'";
            return daobj.insert_update_delete(query);
        }

        public int update(int brndid)
        {
            string query = "update Brand_Table set Brand_Name='" + Brand_Name + "',Category_ID='" + Category_ID + "'where Brand_ID='" + brndid + "'";
            return daobj.insert_update_delete(query);
        }

        public int delete(string brandname)
        {
            string query = "delete from Brand_Table where Brand_Name='" + brandname + "'";
            return daobj.insert_update_delete(query);
        }

        public int delete(int brandid)
        {
            string query = "delete from Brand_Table where Brand_ID='" + brandid + "'";
            return daobj.insert_update_delete(query);
        }

        public DataSet Get_All_Record()
        {
            string query = "select *from Brand_Table";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(int brandid)
        {
            string query = "select *from Brand_Table where Brand_id='" + brandid + "'";
            return daobj.get_record(query);
        }

        public DataSet Get_Record(string brandname)
        {
            string query = "select *from Brand_Table where Brand_Name='" + brandname + "'";
            return daobj.get_record(query);
        }
    }

    public class user_details
    {
        string name;
        string email;
        string password;
        string question;
        string answer;

        public string Name
        {
            get { return name; }
            set { name = value; }
        }
        public string Question
        {
            get { return question; }
            set { question = value; }
        }
        public string Answer
        {
            get { return answer; }
            set { answer = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }

        DataAccess da = new DataAccess();
        public int Insert()
        {
            string query = "insert into User_table values('" + Name + "','" + Password + "','" + Email + "','"+Question+"','"+Answer+"')";
            return da.insert_update_delete(query);
        }

    }
}
