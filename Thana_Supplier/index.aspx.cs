using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Thana_Supplier
{
    public partial class index : System.Web.UI.Page
    { // This my local database , its will not run in your machine you can create your own database and change this line code based on it. 
         SqlConnection sqlCon= new SqlConnection(@"Data Source=THANA\SQLEXPRESS;Initial Catalog=Supplier_List;Integrated Security=True");
        
        // This my remote database ( on a server), you can use this line code and change it based on your database. 
       // SqlConnection sqlCon = new SqlConnection(@"Data Source=Domain name,1436;Initial Catalog=Database name; Integrated Security=False;Connect Timeout=15;Encrypt=False;Packet Size=4096;User ID=user name;Password=*******;");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void Clear()
        {

            hfNum.Value = "";
            SupplierName.Text = SupplieNum.Text  = RepName.Text = ContactNum.Text=Email.Text=Key.Text="";
            /*lblSuccessMsg.Text = lblErrorMsg.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;*/
            CheckBoxList1.ClearSelection();
            gvContact.Visible = false;

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewBySuppNum", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());



            DataTable dtbl = new DataTable();
            sqlDa.Fill(dtbl);

            if (dtbl.Rows.Count > 0)
            {
                // lblSuccessMsg.Text = "Supplier Number already exist!";
                Response.Write("<script>alert('Supplier Number already exist!.To view your record please click on search. Thank you!');</script>");
                gvContact.Visible = false;
            }
            else
            {


                String spe = "";

                foreach (ListItem list in CheckBoxList1.Items)
                {
                    if (list.Selected)
                    {
                        spe += list.Text + "";
                    }
                }

                SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Num", (hfNum.Value == "" ? 0 : Convert.ToInt32(hfNum.Value)));
                sqlCmd.Parameters.AddWithValue("@Supplier_Name", SupplierName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Representative_Name", RepName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Contact_Number", ContactNum.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Email", Email.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Specialized", spe.Trim());
                sqlCmd.Parameters.AddWithValue("@Keywords", Key.Text.Trim());

                sqlCmd.ExecuteNonQuery();

                sqlCon.Close();
                Clear();
                /*lblSuccessMsg.Text = "Saved Successfully";*/
                Response.Write("<script>alert('Your recored has been saved successfuly.Thank you!');</script>");
                gvContact.Visible = false;

            }

        }

       


        protected void Edit_OnClick (object sender, EventArgs e)
        {
            Globals.strSuppNum = SupplieNum.Text;

            // int Num = Convert.ToInt32((sender as LinkButton).CommandArgument);

            if (SupplieNum.Text == "")
            {
                //  lblSuccessMsg.Text = "Please fill Supplier Num";
                Response.Write("<script>alert('Please fill Supplier Num!');</script>");
                gvContact.Visible = false;

            }

            else
            {

                // int Contact_ID = Convert.ToInt32(hfContact_ID.Value); 

                if (sqlCon.State == ConnectionState.Closed)
                    sqlCon.Open();


                SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewBySuppNum", sqlCon);
                sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
                sqlDa.SelectCommand.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());


                /*SqlCommand sqlDa1 = new SqlCommand("ContactViewBySuppNum", sqlCon);
                sqlDa1.CommandType = CommandType.StoredProcedure;
                sqlDa1.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());
                sqlDa1.ExecuteNonQuery();*/

                DataTable dtbl = new DataTable();


                //SqlDataAdapter da = new SqlDataAdapter(sqlDa);
                sqlDa.Fill(dtbl);
                /* gvContact.DataSource = dtbl;
                 gvContact.DataBind();*/

                if (dtbl.Rows.Count > 0)
                {
                    // hfNum.Value = Num.ToString();
                    SupplierName.Text = dtbl.Rows[0]["Supplier_Name"].ToString();
                    SupplieNum.Text = dtbl.Rows[0]["Supplier_Number"].ToString();
                    RepName.Text = dtbl.Rows[0]["Representative_Name"].ToString();
                    ContactNum.Text = dtbl.Rows[0]["Contact_Number"].ToString();
                    Email.Text = dtbl.Rows[0]["Email"].ToString();
                    Key.Text = dtbl.Rows[0]["Keywords"].ToString();
                }

                else
                {
                    Response.Write("<script>alert('Supplier number not found.Thank you!');</script>");
                    Clear();
                }

                sqlCon.Close();


            }

        }

        public void Update()
        {
            String spe = "";

            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            SqlCommand sqlCmd = new SqlCommand("ContactViewBySuppNum", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());

            sqlCmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            gvContact.DataSource = dt;
            gvContact.DataBind();


            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('Supplier number not found! Please click on save to save your new record! Thank you');</script>");
                
            }

            else
            {
                foreach (ListItem list in CheckBoxList1.Items)
                {
                    if (list.Selected)
                    {
                        spe += list.Text + "";
                    }
                }


                SqlCommand sqlDa1 = new SqlCommand("Update_", sqlCon);
                sqlDa1.CommandType = CommandType.StoredProcedure;
                sqlDa1.Parameters.AddWithValue("@Supplier_Number", Globals.strSuppNum.Trim());
                sqlDa1.Parameters.AddWithValue("@Supplier_Name", SupplierName.Text.Trim());
                sqlDa1.Parameters.AddWithValue("@Representative_Name", RepName.Text.Trim());
                sqlDa1.Parameters.AddWithValue("@Contact_Number", ContactNum.Text.Trim());
                sqlDa1.Parameters.AddWithValue("@Email", Email.Text.Trim());
                sqlDa1.Parameters.AddWithValue("@Specialized", spe.Trim());
                sqlDa1.Parameters.AddWithValue("@Keywords", Key.Text.Trim());

                sqlDa1.ExecuteNonQuery();
                

                Response.Write("<script>alert('Your recored has been updated successfuly.Thank you!');</script>");
                Clear();

            }
            sqlCon.Close();
        }

        

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            Update();
            
        }

        public static class Globals
        {
            public static String strSuppNum;
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {

            Clear();
        }


         protected void btnSearch_Click (object sender, EventArgs e)
            
         { String x=SupplieNum.Text.Trim(); 

            if (SupplieNum.Text == "")
                //  lblSuccessMsg.Text = "Please fill Supplier Num";
                Response.Write("<script>alert('Please search by your supplier registration number in KFSHRC.Thank you!');</script>");

           else if (!int.TryParse(x, out int output))
            {
             Response.Write("<script>alert('Please Type only numbers in the Supplier Number field.Thank you!');</script>");

            }


            else
                FillGrid(); 

         }


       void FillGrid()
         {
             if (sqlCon.State == ConnectionState.Closed)
                 sqlCon.Open();
             SqlCommand sqlCmd = new SqlCommand("ContactViewBySuppNum", sqlCon);
             sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Supplier_Number", SupplieNum.Text.Trim());

             sqlCmd.ExecuteNonQuery();

             DataTable dt = new DataTable();
             SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
             da.Fill(dt);
             gvContact.DataSource = dt;
             gvContact.DataBind();
            gvContact.Visible = true;

            // gvContact.RowStyle.HorizontalAlign = HorizontalAlign.Center;
            // gvContact.HorizontalAlign = HorizontalAlign.Center;

            sqlCon.Close();

            if (dt.Rows.Count == 0)
            {
             Response.Write("<script>alert('Not Found! Thank you');</script>");

            }
        }

      
    }
}