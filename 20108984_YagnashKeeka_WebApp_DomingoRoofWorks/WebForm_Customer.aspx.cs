using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20108984_YagnashKeeka_WebApp_DomingoRoofWorks
{
    public partial class WebForm_Customer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {//To advance to Customer page
            Response.Redirect("WebForm_Customer.aspx");
        }

        protected void btnJobCardType_Click(object sender, EventArgs e)
        {//To advance to JobCardType page
            Response.Redirect("WebForm_JobCardType.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {//To advance to Employee page
            Response.Redirect("WebForm_Employee.aspx");
        }

        protected void btnInvoice_Click(object sender, EventArgs e)
        {//To advance to Invoice page
            Response.Redirect("WebForm_Invoice.aspx");
        }

        //SQL Cnnection is used used to link to the database

        protected void btnCreate_Click(object sender, EventArgs e)
        {//To insert data into the Customer table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Customer]
            ([Customer_ID]
            ,[Customer_FirstName]
            ,[Customer_LastName]
            ,[Customer_Street]
            ,[Customer_City]
            ,[Customer_ZipCode])
            VALUES
                  ('" + txtCustomerID.Text + "', '" + txtCustomerName.Text + "', '" + txtCustomerSurname.Text + "', '" + txtCustomerAddress.Text + "', '" + txtCustomerCity.Text + "', '" + txtCustomerZipCode.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write(txtCustomerID.Text + ": Data Created Successfully");//Response states that the data is created
            con.Close();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {//Retrieves data from the CUstomer table by specifying the Customer ID
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Customer_ID]
                ,[Customer_FirstName]
                ,[Customer_LastName]
                ,[Customer_Street]
                ,[Customer_City]
                ,[Customer_ZipCode]
                FROM [dbo].[Customer]
                WHERE [Customer_ID] = '" + txtRetrieveCustomer.Text + "'", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridCustomer.DataSource = read;
            gridCustomer.DataBind();
            Response.Write(txtRetrieveCustomer.Text + ": Data Retrieved Successfully");
            con.Close();
        }

        protected void btnRetrieveAll_Click(object sender, EventArgs e)
        {//All data is Retrieved from the Customer table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Customer_ID]
                ,[Customer_FirstName]
                ,[Customer_LastName]
                ,[Customer_Street]
                ,[Customer_City]
                ,[Customer_ZipCode]
                FROM [dbo].[Customer]", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridCustomer.DataSource = read;
            gridCustomer.DataBind();
            Response.Write("Data Retrieved Successfully");
            con.Close();
        }
    }
}