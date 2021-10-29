using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20108984_YagnashKeeka_WebApp_DomingoRoofWorks
{
    public partial class WebFormInvoice : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        protected void btnInvoice_Click(object sender, EventArgs e)
        {//To advance to Invoice page
            Response.Redirect("WebForm_Invoice.aspx");
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

        protected void btnCreateNewInvoice_Click(object sender, EventArgs e)
        {//To advance to the Create New Invoice page
            Response.Redirect("WebForm_CreateNewInvoice.aspx");
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {   //SQL Connection declared
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            //SQL command used to retrive Job Card Number for Customer
            SqlCommand cmdJobCard = new SqlCommand(
                @"SELECT [Job_JobCardNo]
                FROM [dbo].[Job] 
                WHERE [Customer_ID] = '" + txtCustomerID.Text + "'", con);
            con.Open();
            SqlDataReader readCard = cmdJobCard.ExecuteReader();
            if (readCard.Read())
            {//If statement used to display value into textbox
                txtJobCard.Text = readCard.GetValue(0).ToString();
            }
            con.Close();

            //SQL command created to retrieve Customer Details
            SqlCommand cmdCustomer = new SqlCommand(
                @"SELECT [Customer_FirstName]
                ,[Customer_LastName]
                ,[Customer_Street]
                ,[Customer_City]
                ,[Customer_ZipCode]
                FROM [dbo].[Customer]
                WHERE [Customer_ID] = '" + txtCustomerID.Text + "'", con);
            con.Open();
            SqlDataReader readCustomer = cmdCustomer.ExecuteReader();
            gridCustomer.DataSource = readCustomer;
            gridCustomer.DataBind();
            con.Close();

            //SQL command created to retrieve the Job Type for the Customer
            SqlCommand cmdJobType = new SqlCommand(
                @"SELECT [JobType_JobType] 
                FROM [dbo].[Job_Type]  
                INNER JOIN [dbo].[Job]
                ON [dbo].[Job].[JobType_Code] = [dbo].[Job_Type].[JobType_Code]
                WHERE [dbo].[Job].[Customer_ID] = '" + txtCustomerID.Text + "'", con);
            con.Open();
            SqlDataReader readType = cmdJobType.ExecuteReader();
            if (readType.Read())
            {
                txtJobType.Text = readType.GetValue(0).ToString();
            }
            con.Close();

            //SQL command created to retrieve Emplloyees Allocated
            SqlCommand cmdEmpAll = new SqlCommand(
                @"SELECT [Emp_ID]
                ,[EMP_FirstName]
                ,[EMP_LastName]
                FROM [dbo].[Employee]
                INNER JOIN [dbo].[Employee_Assignment]
                ON [dbo].[Employee_Assignment].[Emp_No] = [dbo].[Employee].[Emp_ID]
                WHERE [dbo].[Employee_Assignment].[Job_JobCardNo] = '" + txtJobCard.Text + "'", con);
            con.Open();
            SqlDataReader readEmpAll = cmdEmpAll.ExecuteReader();
            gridEmployeesAll.DataSource = readEmpAll;
            gridEmployeesAll.DataBind();
            Response.Write(txtCustomerID.Text + ": Invoice Retrieved Successfully");
            con.Close();

            //SQL command created to retrieve the Equipment details
            SqlCommand cmdEquipment = new SqlCommand(
                @"SELECT [Material_TypeOfMaterial]
                ,[Material_Quantity] 
                FROM [dbo].[Utilization_Of_Material]
                INNER JOIN [dbo].[Material_Equipment]
                ON [dbo].[Utilization_Of_Material].[Material_ID] = [dbo].[Material_Equipment].[Material_ID]
                WHERE [Job_JobCardNo] = '" + txtJobCard.Text + "'", con);
            con.Open();
            SqlDataReader readEquipment = cmdEquipment.ExecuteReader();
            gridEquipment.DataSource = readEquipment;
            gridEquipment.DataBind();
            con.Close();
        }

        //Button is used to calculate the costs in the invoice
        protected void btnCalculateCosts_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            //SQL command created Calculate the SUbtotal, VAT and Total Costs
            SqlCommand cmdCost = new SqlCommand(
                @"SELECT [JobType_JobType]
                ,[JobType_DailyRate]
                ,[Job_NoOfDays]
                ,FORMAT([JobType_DailyRate] * [Job_NoOfDays], 'C', 'en-ZA') AS Subtotal 
                ,FORMAT([JobType_DailyRate] * [Job_NoOfDays] * 0.14, 'C', 'en-ZA') AS 'VAT at 14%'
                ,FORMAT(([JobType_DailyRate] * [Job_NoOfDays] * 0.14) + [JobType_DailyRate] * [Job_NoOfDays], 'C', 'en-ZA') AS 'Total Costs'
                FROM [dbo].[Job]
                INNER JOIN [dbo].[Job_Type]
                ON [dbo].[Job_Type].[JobType_Code] = [dbo].[Job].[JobType_Code]
                WHERE [Customer_ID] = '" + txtCustomerID.Text + "'", con);
            con.Open();
            SqlDataReader readCost = cmdCost.ExecuteReader();
            gridCost.DataSource = readCost;
            gridCost.DataBind();
            Response.Write("Cost Calculated Successfully");
            con.Close();
        }
    }
}