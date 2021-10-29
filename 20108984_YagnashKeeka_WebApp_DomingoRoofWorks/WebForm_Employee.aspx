<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Employee.aspx.cs" Inherits="_20108984_YagnashKeeka_WebApp_DomingoRoofWorks.WebForm_Employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style2 {
            text-align: center;
            font-size: medium;
            text-decoration: underline;
            color: #000000;
        }
        .auto-style4 {
            background-color: #00FFFF;
        }

        body {background-color:antiquewhite}

        .auto-style5 {
            text-align: center;
        }

        .auto-style6 {
            background-color: #00FFB7;
        }

        .auto-style7 {
            font-size: large;
        }

    </style>
</head>
    <h1 class="auto-style1" align="center">Domingo Roof Works</h1>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" Text="Navigate To Page:"></asp:Label>
            <br />
        <asp:Button ID="btnEmployee" runat="server" Text="Employee" BackColor="#00FDCF" OnClick="btnEmployee_Click"/>
        <asp:Button ID="btnJobCardType" runat="server" Text="Job Card & Type" OnClick="btnJobCardType_Click" />
        <asp:Button ID="btnCustomer" runat="server" Text="Customer" OnClick="btnCustomer_Click" />
            <asp:Button ID="btnInvoice" runat="server" Text="Invoice" OnClick="btnInvoice_Click" />
            <strong>
                <p class="auto-style5">
                    <strong>
            <asp:Label ID="Label1" runat="server" Text="Employee" CssClass="auto-style1"></asp:Label>
                    </strong>
                        </p>
            <br />
            <table align="center">
                <tr>
                    <td class="auto-style2">Employee ID</td>
                    <td><asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Employee First Name</td>
                    <td><asp:TextBox ID="txtEmpFirstName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style2">Employee Last Name</td>
                    <td><asp:TextBox ID="txtEmpLastName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" CssClass="auto-style4"/></td>
                    <td><asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="auto-style4"/></td>
                </tr>
            </table>
            </strong>
        </div>
    <p>
        <asp:Label ID="Label2" runat="server" Text="Retrieve Employee" CssClass="auto-style7"></asp:Label>
        <br />
        <asp:TextBox ID="txtRetrieveEmployee" runat="server" CssClass="auto-style6"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" CssClass="auto-style4" OnClick="btnRetrieve_Click"/>
            <br />
            <asp:Button ID="btnRetrieveAll" runat="server" Text="Retrieve All Employees" CssClass="auto-style4" OnClick="btnRetrieveAll_Click"/>
        </p>
        <p>
            <asp:GridView ID="gridEmp" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </p>
        <p>
            &nbsp;</p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
