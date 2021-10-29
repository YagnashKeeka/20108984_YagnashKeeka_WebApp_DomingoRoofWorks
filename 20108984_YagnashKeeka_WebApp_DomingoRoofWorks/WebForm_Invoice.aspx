<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_Invoice.aspx.cs" Inherits="_20108984_YagnashKeeka_WebApp_DomingoRoofWorks.WebFormInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-decoration: underline;
        }

        body {background-color:antiquewhite}

        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            text-decoration: underline;
            font-size: xx-large;
        }

        .auto-style4 {
            background-color: #00FFB7;
        }
        .auto-style5 {
            background-color: #00FFFF;
        }

        .auto-style6 {
            font-weight: bold;
             background-color: lightsteelblue;
        }

        .auto-style7 {
            background-color: #F07869;
        }

        </style>
</head>
    <h1 align="center" class="auto-style1">Domingo Roof Works</h1>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Navigate To Page:"></asp:Label>
            <br />
            <asp:Button ID="btnInvoice" runat="server" Text="Invoice" OnClick="btnInvoice_Click" BackColor="#00FDCF"/>
            <asp:Button ID="btnJobCardType" runat="server" Text="Job Card & Type" OnClick="btnJobCardType_Click" />
            <asp:Button ID="btnEmployee" runat="server" Text="Employee" OnClick="btnEmployee_Click" />
            <asp:Button ID="btnCustomer" runat="server" Text="Customer" OnClick="btnCustomer_Click" />

            <br />
            <br />
            <asp:Label ID="Label6" runat="server" Text="Click the button below to create a new invoice:"></asp:Label>
            <br />
            <asp:Button ID="btnCreateNewInvoice" runat="server" Text="Create New Invoice" OnClick="btnCreateNewInvoice_Click" CssClass="auto-style7" />

            <p class="auto-style2">
                    <strong>
            <asp:Label ID="Label2" runat="server" Text="Invoice" CssClass="auto-style3"></asp:Label>
                    </strong>
                        </p>
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label3" runat="server" Text="Enter a Customer ID to Retrieve an Invoice:"></asp:Label></td>
                </tr>
                <tr>
                    <td><asp:TextBox ID="txtCustomerID" runat="server" CssClass="auto-style4"></asp:TextBox></td>
                </tr>
                <tr>
                    <td><asp:Button ID="btnRetrieve" runat="server" Text="Retrieve Invoice" CssClass="auto-style5" OnClick="btnRetrieve_Click"/></td>
                </tr>
            </table>

            <br />
            <strong>

                <table>
                    <tr>
                        <td><asp:Label ID="Label4" runat="server" Text="Job Card No.:"></asp:Label></td>
                        <td><asp:TextBox ID="txtJobCard" runat="server" Enabled="false" CssClass="auto-style6"></asp:TextBox></td>
                    </tr>
                </table>
            
            <br />
                <br />
                <asp:Label ID="Label5" runat="server" Text="Customer Details:"></asp:Label>
                <br />
            <asp:GridView ID="gridCustomer" runat="server" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
                <br />
                <table>
                    <tr>
                        <td><asp:Label ID="Label7" runat="server" Text="Job Type:"></asp:Label></td>
                        <td><asp:TextBox ID="txtJobType" runat="server" Enabled="false" CssClass="auto-style6"></asp:TextBox></td>
                    </tr>
                &nbsp;
                    </table>
                <br />
            <asp:Label ID="Label8" runat="server" Text="Employees Allocated:"></asp:Label>
                <br />
            <asp:GridView ID="gridEmployeesAll" runat="server" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Equipment/Material:"></asp:Label>
            <br />
                <asp:GridView ID="gridEquipment" runat="server" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                    <AlternatingRowStyle BackColor="#DCDCDC" />
                    <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                    <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#0000A9" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>
            <br />
                </strong>
            <asp:Label ID="Label12" runat="server" Text="Click button to Calculate Costs:" CssClass="auto-style5"></asp:Label>
            <strong>

            <br />
            <asp:Button ID="btnCalculateCosts" runat="server" Text="Calculate Costs" CssClass="auto-style5" OnClick="btnCalculateCosts_Click" />
            <br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Costs:"></asp:Label>
            <br />
                <br />
            <asp:GridView ID="gridCost" runat="server" CellPadding="3" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#DCDCDC" />
                <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#0000A9" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#000065" />
            </asp:GridView>

                <br />


            </div>
    </form>
                </strong>
</body>
</html>
