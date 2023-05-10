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
    public partial class Contact_Page : System.Web.UI.Page
    { // This is my local database , it will not run in your machine, you need to create your own database and change this line code based on it. 
        SqlConnection sqlCon = new SqlConnection(@"Data Source=THANA\SQLEXPRESS;Initial Catalog=Contact_List;Integrated Security=True");



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                btnDelete.Enabled = false;
            }

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            Clear();

        }

public void Clear()
        {

            hfContact_ID.Value = "";
            TextName.Text = TextMobile.Text = TextAdress.Text = "";
            lblSuccessMsg.Text = lblErrorMsg.Text = "";
            btnSave.Text = "Save";
            btnDelete.Enabled = false;
            CheckBoxList1.ClearSelection();

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            String Degree = "";

            foreach (ListItem list in CheckBoxList1.Items)
            {
                if (list.Selected)
                {
                    Degree += list.Text + ", ";
                }
            }

                if (TextName.Text == "")
                lblErrorMsg.Text = "Please fill Name";

            else
            {
                if (sqlCon.State == ConnectionState.Closed)
                    sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("ContactCreateOrUpdate", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@Contact_ID ", (hfContact_ID.Value == "" ? 0 : Convert.ToInt32(hfContact_ID.Value)));
                sqlCmd.Parameters.AddWithValue("@Name", TextName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Mobile", TextMobile.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Address", TextAdress.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Degree", Degree.Trim());
                    sqlCmd.ExecuteNonQuery();
                FillGrid();
                sqlCon.Close();
                Clear();

                if (hfContact_ID.Value == "")
                    lblSuccessMsg.Text = "Saved Successfully";
                else
                    lblSuccessMsg.Text = "Updated Successfully";
                
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {

            FillGrid();

        }

          protected void lnk_OnClick (object sender , EventArgs e)
        {
            int Contact_ID = Convert.ToInt32((sender as LinkButton).CommandArgument);
            // int Contact_ID = Convert.ToInt32(hfContact_ID.Value); 

            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();

            


            SqlCommand sqlDa1 = new SqlCommand("ContactViewByName", sqlCon);
            sqlDa1.CommandType = CommandType.StoredProcedure;
            sqlDa1.Parameters.AddWithValue("@Name", TextName.Text.Trim());
            sqlDa1.ExecuteNonQuery();

            //sqlCon.Close();

            SqlDataAdapter sqlDa = new SqlDataAdapter("ContactViewByID", sqlCon);
            sqlDa.SelectCommand.CommandType = CommandType.StoredProcedure;
            sqlDa.SelectCommand.Parameters.AddWithValue("@Contact_ID", Contact_ID);

            DataTable dtbl = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(sqlDa1);
            da.Fill(dtbl);
            gvContact.DataSource = dtbl;
            gvContact.DataBind();

            

            hfContact_ID.Value = Contact_ID.ToString();
            TextName.Text = dtbl.Rows[0]["Name"].ToString();
            TextMobile.Text = dtbl.Rows[0]["Mobile"].ToString();
            TextAdress.Text = dtbl.Rows[0]["Address"].ToString();

            

            btnSave.Text = "Update";

            sqlCon.Close();


        }


        void FillGrid()
        {
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            SqlCommand sqlCmd = new SqlCommand("ContactViewByName", sqlCon);
            sqlCmd.CommandType = CommandType.StoredProcedure;
            sqlCmd.Parameters.AddWithValue("@Name", TextName.Text.Trim());

            sqlCmd.ExecuteNonQuery();

            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(sqlCmd);
            da.Fill(dt);
            gvContact.DataSource = dt;
            gvContact.DataBind();
            sqlCon.Close();


        }

       /* protected void btnEdit_Click(object sender, EventArgs e)
        {
            FillGrid();
            if (sqlCon.State == ConnectionState.Closed)
                sqlCon.Open();
            int Contact_ID = Convert.ToInt32(hfContact_ID.Value);

            SqlCommand sqlDa = new SqlCommand("ContactViewByID", sqlCon);
            sqlDa.CommandType = CommandType.StoredProcedure;
            sqlDa.Parameters.AddWithValue("@Contact_ID", Contact_ID);
            sqlDa.ExecuteNonQuery();

            //sqlCon.Close();

           /* DataTable dtbl = new DataTable();


            SqlDataAdapter da = new SqlDataAdapter(sqlDa);
            da.Fill(dtbl);
            gvContact.DataSource = dtbl;
            gvContact.DataBind();


            //hfContact_ID.Value = Contact_ID.ToString();
            TextName.Text = dtbl.Rows[0]["Name"].ToString();
            TextMobile.Text = dtbl.Rows[0]["Mobile"].ToString();
            TextAdress.Text = dtbl.Rows[0]["Address"].ToString();
            //Degree= dtbl.Rows[0]["Degree"].ToString();


            btnSave.Text = "Update";

            sqlCon.Close();
            

        }*/
    }
}