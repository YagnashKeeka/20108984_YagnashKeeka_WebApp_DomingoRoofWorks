using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _20108984_YagnashKeeka_WebApp_DomingoRoofWorks
{
    public partial class WebForm_Employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEmployee_Click(object sender, EventArgs e)
        {//To advance to Employee page
            Response.Redirect("WebForm_Employee.aspx");
        }

        protected void btnJobCardType_Click(object sender, EventArgs e)
        {//To advance to JobCardType page
            Response.Redirect("WebForm_JobCardType.aspx");
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
        {//Inserts data into the Employee table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"INSERT INTO [dbo].[Employee]
                ([Emp_ID]
                ,[EMP_FirstName]
                ,[EMP_LastName])
                VALUES
                      ('" + txtEmpID.Text + "', '" + txtEmpFirstName.Text + "', '" + txtEmpLastName.Text + "')", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write(txtEmpID.Text + ": Data Created Successfully");
            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {//Updates data in the Employee table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"UPDATE [dbo].[Employee]
                SET [Emp_ID] = '" + txtEmpID.Text + "'" +
                ",[EMP_FirstName] = '" + txtEmpFirstName.Text + "'" +
                ",[EMP_LastName] = '" + txtEmpLastName.Text + "'" +
                "WHERE[Emp_ID] = '" + txtEmpID.Text + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write(txtEmpID.Text + ": Data Updated Successfully");
            con.Close();
        }

        protected void btnRetrieve_Click(object sender, EventArgs e)
        {//Retrieves data from the Employee table by specifying the Employee No.
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Emp_ID]
                ,[EMP_FirstName]
                ,[EMP_LastName]
                FROM [dbo].[Employee]
                WHERE [Emp_ID] = '" + txtRetrieveEmployee.Text + "'", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridEmp.DataSource = read;
            gridEmp.DataBind();
            Response.Write(txtEmpID.Text + ": Data Retrieved Successfully");
            con.Close();
        }

        protected void btnRetrieveAll_Click(object sender, EventArgs e)
        {//Retrieves all data from the Employee table
            SqlConnection con = new SqlConnection(@"Data Source=LAPTOP-VLEFN8F4\SQLEXPRESS;Initial Catalog=DomingoRoofWorks_YagnashKeeka_20108984;Integrated Security=True");
            SqlCommand cmd = new SqlCommand(
                @"SELECT [Emp_ID]
                ,[EMP_FirstName]
                ,[EMP_LastName]
                FROM [dbo].[Employee]", con);
            con.Open();
            SqlDataReader read = cmd.ExecuteReader();
            gridEmp.DataSource = read;
            gridEmp.DataBind();
            Response.Write("Data Retrieved Successfully");
            con.Close();
        }

    }
}