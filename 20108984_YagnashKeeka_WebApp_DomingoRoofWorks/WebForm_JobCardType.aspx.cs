using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20108984_YagnashKeeka_WebApp_DomingoRoofWorks
{
    public partial class WebForm_Domingo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnJobCardType_Click(object sender, EventArgs e)
        {//To advance to JobCardType page
            Response.Redirect("WebForm_JobCardType.aspx");
        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {//To advance to Employee page
            Response.Redirect("WebForm_Employee.aspx");
        }

        protected void btnCustomer_Click(object sender, EventArgs e)
        {//To advance to Customer page
            Response.Redirect("WebForm_Customer.aspx");
        }
        protected void btnInvoice_Click(object sender, EventArgs e)
        {//To advance to Invoice page
            Response.Redirect("WebForm_Invoice.aspx");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {//Inserts data into the Job table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand com = new SqlCommand(
           @"INSERT INTO [dbo].[Job]
            ([Job_JobCardNo]
           ,[Job_NoOfDays]
           ,[JobType_Code]
           ,[Customer_ID])
           VALUES
           ('"+ txtJobCard.Text + "', '" + txtJobDay.Text + "', '" + txtType.Text + "', '" + txtCustomer.Text +"')", con);
            con.Open();
            com.ExecuteNonQuery();
            Response.Write(txtJobCard.Text + ": Data Created Successfully");
            con.Close();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {//Retrieves data from the Job table by specifying the Job Card No.
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Job_JobCardNo]
                ,[Job_NoOfDays]
                ,[JobType_Code]
                ,[Customer_ID]
                FROM [dbo].[Job]
                WHERE [Job_JobCardNo] = '" + txtRetrieveCard.Text + "'", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridJobCard.DataSource = read;
            gridJobCard.DataBind();
            Response.Write(txtRetrieveCard.Text + ": Data Retrieved Successfully");
            con.Close();
        }

        protected void btnAllRetrieve_Click(object sender, EventArgs e)
        {//Retrieves all data from the Job table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Job_JobCardNo]
                ,[Job_NoOfDays]
                ,[JobType_Code]
                ,[Customer_ID]
                FROM [dbo].[Job]", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridJobCard.DataSource = read;
            gridJobCard.DataBind();
            Response.Write("Data Retrieved Successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {//Updates the Daily rate in the Job type table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"UPDATE [dbo].[Job_Type]
                SET [JobType_Code] = '" + txtJobeCode.Text + "'"+
                ",[JobType_JobType] = '" + txtJobType.Text +"'" +
                ",[JobType_DailyRate] = '" + txtDailyRate.Text + "'" +
                "WHERE [JobType_Code] = '" + txtJobeCode.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write(txtJobeCode.Text + ": Data Updated Successfully");
            con.Close();
        }
    }
}