using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20108984_YagnashKeeka_WebApp_DomingoRoofWorks
{
    public partial class WebForm_CreateNewInvoice : System.Web.UI.Page
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

        protected void btnAllocateEmployee_Click(object sender, EventArgs e)
        {//Allocates employees as per the Job Card No. assigned
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Employee_Assignment]
                ([Emp_No]
                ,[Job_JobCardNo])
                VALUES
                      ('" + txtEmpNo.Text + "', '" + txtJobCardNo.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Employee Allocated Successfully");
            con.Close();
        }

        protected void btnAddFloorboards_Click(object sender, EventArgs e)
        {//Adds quantity of Floorbboards
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Utilization_Of_Material]
                ([Material_ID]
                ,[Job_JobCardNo]
                ,[Material_Quantity])
                VALUES
                      ('STFB11', '" + txtJobCardNo.Text + "', '" + txtFloorboardQuantity.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Floorboards Added Successfully");
            con.Close();
        }

        protected void btnAddPowerPoints_Click(object sender, EventArgs e)
        {//Adds quantity of Power Points
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Utilization_Of_Material]
                ([Material_ID]
                ,[Job_JobCardNo]
                ,[Material_Quantity])
                VALUES
                      ('PP01', '" + txtJobCardNo.Text + "', '" + txtPowerPointsQuantity.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Power Points Added Successfully");
            con.Close();
        }

        protected void btnAddWiring_Click(object sender, EventArgs e)
        {//Adds quantity of Standard Electrical Wiring
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Utilization_Of_Material]
                ([Material_ID]
                ,[Job_JobCardNo]
                ,[Material_Quantity])
                VALUES
                      ('SEW02', '" + txtJobCardNo.Text + "', '" + txtWiringQuantity.Text + " metres')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Standard Electrical Wiring Added Successfully");
            con.Close();
        }

        protected void btnAddStairs_Click(object sender, EventArgs e)
        {//Adds quantity of Standard Stair Packs
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Utilization_Of_Material]
                ([Material_ID]
                ,[Job_JobCardNo]
                ,[Material_Quantity])
                VALUES
                      ('SSP22', '" + txtJobCardNo.Text + "', '" + txtStairQuantity.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Standard Stairs Pack Added Successfully");
            con.Close();
        }

        protected void btnCreateInvoive_Click(object sender, EventArgs e)
        {//States that the New Iinvoice has been created
            Response.Write(txtJobCardNo.Text + ": Invoice has been Created Successfully");
        }
    }
}