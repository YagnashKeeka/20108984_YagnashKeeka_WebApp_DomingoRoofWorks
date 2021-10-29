<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Customer.aspx.cs" Inherits="_20108984_YagnashKeeka_WebApp_DomingoRoofWorks.WebForm_Customer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
            text-decoration: underline;
        }

        body {background-color:antiquewhite}

        .auto-style2 {
            text-align: center;
        }

        .auto-style3 {
            text-align: center;
            font-size: medium;
            text-decoration: underline;
            color: #000000;
        }

        .auto-style4 {
            background-color: #00FFFF;
        }

        .auto-style5 {
            font-size: large;
        }

        .auto-style6 {
            background-color: #00FFB7;
        }

    </style>
    <title></title>
</head>
    <h1 class="auto-style1" align="center">Domingo Roof Works</h1>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Navigate To Page:"></asp:Label>
            <br />
            <asp:Button ID="btnCustomer" runat="server" Text="Customer" BackColor="#00FDCF" OnClick="btnCustomer_Click" />
            <asp:Button ID="btnJobCardType" runat="server" Text="Job Card & Type" OnClick="btnJobCardType_Click" />
            <asp:Button ID="btnEmployee" runat="server" Text="Employee" OnClick="btnEmployee_Click" />
            <asp:Button ID="btnInvoice" runat="server" Text="Invoice" OnClick="btnInvoice_Click" />

            <p class="auto-style2">
                    <strong>
            <asp:Label ID="Label2" runat="server" Text="Customer" CssClass="auto-style1"></asp:Label>
                    </strong>
                        </p>
            <br />
            <table align="center">
                <tr>
                    <td class="auto-style3">Customer ID</td>
                    <td><asp:TextBox ID="txtCustomerID" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer First Name</td>
                    <td><asp:TextBox ID="txtCustomerName" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer Last Name</td>
                    <td><asp:TextBox ID="txtCustomerSurname" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer Address</td>
                    <td><asp:TextBox ID="txtCustomerAddress" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer City</td>
                    <td><asp:TextBox ID="txtCustomerCity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style3">Customer ZipCode</td>
                    <td><asp:TextBox ID="txtCustomerZipCode" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" CssClass="auto-style4" /></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Retrieve Customer:" CssClass="auto-style5"></asp:Label>
            <br />
            <asp:TextBox ID="txtRetrieveCustomer" runat="server" CssClass="auto-style6"></asp:TextBox>
            <br />
            
            <br />
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" class="auto-style4" OnClick="btnRetrieve_Click"/>
            <br />
            <asp:Button ID="btnRetrieveAll" runat="server" Text="Retrieve All Customers" class="auto-style4" OnClick="btnRetrieveAll_Click"/>
            
            <br />
            <br />
            <asp:GridView ID="gridCustomer" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
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
            
            <br />
        </div>
    </form>
</body>
</html>
