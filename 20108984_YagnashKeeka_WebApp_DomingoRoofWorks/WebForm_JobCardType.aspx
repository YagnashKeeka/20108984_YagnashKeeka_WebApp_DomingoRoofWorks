<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_JobCardType.aspx.cs" Inherits="_20108984_YagnashKeeka_WebApp_DomingoRoofWorks.WebForm_Domingo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
            font-size: medium;
            text-decoration: underline;
            color: #ff0000;
        }
        .auto-style2 {
            text-align: center;
            text-decoration: underline;
        }
        .auto-style3 {
            width: 266px;
            height: 71px;
            margin-left: 0px;
        }
        .auto-style4 {
            background-color: #00FFFF;
        }
        .auto-style6 {
            font-size: xx-large;
            text-decoration: underline;
        }
        .auto-style7 {
            background-color: #00FFB7;
        }
        /*Sets background colour*/
        body {background-color:antiquewhite}

        .auto-style8 {
            text-align: center;
            font-size: medium;
            text-decoration: underline;
            color: #000000;
        }
        .auto-style9 {
            color: #000000;
            font-size: large;
        }
        </style>
</head>
    <h1 class="auto-style2">Domingo Roof Works</h1>
<body>
    <form id="form1" runat="server">
        <asp:Label ID="Label4" runat="server" Text="Navigate To Page:"></asp:Label>
        <br />
        <asp:Button ID="btnJobCardType" runat="server" Text="Job Card & Type" BackColor="#00FDCF" OnClick="btnJobCardType_Click" />
        <asp:Button ID="btnEmployee" runat="server" Text="Employee" OnClick="btnEmployee_Click" />
        <asp:Button ID="btnCustomer" runat="server" Text="Customer" OnClick="btnCustomer_Click" />
        <asp:Button ID="btnInvoice" runat="server" Text="Invoice" OnClick="btnInvoice_Click" />
        <p class="auto-style2">
            <strong>
            <asp:Label ID="Label3" runat="server" Text="Job Card" CssClass="auto-style6"></asp:Label>
            </strong>
        </p>
        <br />
        <p>
            <table align="center">
                <tr>
                    <td class="auto-style8">Job Card No</td>
                    <td class="auto-style1">
                        <asp:TextBox ID="txtJobCard" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8">Number Of Days </td>
                    <td><asp:TextBox ID="txtJobDay" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8">Job Type </td>
                    <td><asp:TextBox ID="txtType" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8">Customer ID</td>
                    <td><asp:TextBox ID="txtCustomer" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnCreate" runat="server" Text="Create" OnClick="btnCreate_Click" CssClass="auto-style4"/></td>
                </tr>
            </table>

        </p>
        <asp:Label ID="Label1" runat="server" Text="Retrieve Job Card:" class="auto-style1" CssClass="auto-style9"></asp:Label>
        <br />
        <asp:TextBox ID="txtRetrieveCard" runat="server" CssClass="auto-style7"></asp:TextBox>
        <p>
            <asp:Button ID="btnRetrieve" runat="server" Text="Retrieve" OnClick="btnRetrieve_Click" CssClass="auto-style4" />
            <br />
            <asp:Button ID="btnAllRetrieve" runat="server" Text="Retrieve All Job Cards" OnClick="btnAllRetrieve_Click" CssClass="auto-style4" />
        </p>
        <p>
            <asp:GridView ID="gridJobCard" runat="server" Height="138px" Width="351px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
        <p class="auto-style2">
            <strong>
            <asp:Label ID="Label2" runat="server" Text="Job Type" CssClass="auto-style6"></asp:Label>
            </strong>
        </p>
        <p>
            <table>
                <tr>
                    <td class="auto-style8">Job Type Code</td>
                    <td><asp:TextBox ID="txtJobeCode" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8">Type of Job</td>
                    <td><asp:TextBox ID="txtJobType" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td class="auto-style8">Daily Rate</td>
                    <td><asp:TextBox ID="txtDailyRate" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnUpdate" runat="server" Text="Update" OnClick="btnUpdate_Click" CssClass="auto-style4"/></td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
