<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm_CreateNewInvoice.aspx.cs" Inherits="_20108984_YagnashKeeka_WebApp_DomingoRoofWorks.WebForm_CreateNewInvoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-weight: normal;
        }

        body {background-color:antiquewhite}

        .auto-style2 {
            text-align: center;
        }

        .auto-style3 {
            text-decoration: underline;
        }
        .auto-style4 {
            background-color: #00FFFF;
        }
        .auto-style5 {
            background-color: transparent;
        }

        .auto-style6 {
            font-size: large;
            color: #FF0000;
            text-decoration: underline;
        }

        .auto-style7 {
            height: 26px;
        }

    </style>
</head>
    <h1 align="center" class="auto-style1"><strong>Domingo Roof Works</strong></h1>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Navigate To Page:"></asp:Label>
            <br />
            <asp:Button ID="btnInvoice" runat="server" Text="Invoice" OnClick="btnInvoice_Click"/>
            <asp:Button ID="btnJobCardType" runat="server" Text="Job Card & Type" OnClick="btnJobCardType_Click" />
            <asp:Button ID="btnEmployee" runat="server" Text="Employee" OnClick="btnEmployee_Click" />
            <asp:Button ID="btnCustomer" runat="server" Text="Customer" OnClick="btnCustomer_Click" />

            <p class="auto-style2">
                    <strong>
            <asp:Label ID="Label2" runat="server" Text="Create New Invoice" CssClass="auto-style2" style="font-size: xx-large"></asp:Label>
                    </strong>
                        </p>

        </div>
        <p>
            <strong>
            <asp:Label ID="Label3" runat="server" Text="Note: Customer and Job Card details should be created first in order to create an Invoice." CssClass="auto-style6"></asp:Label>
            </strong>
        </p>
        <p>
            <table>
                <tr>
                    <td><asp:Label ID="Label4" runat="server" Text="Job Card No.:"></asp:Label></td>
                    <td><asp:TextBox ID="txtJobCardNo" runat="server"></asp:TextBox></td>
                </tr>
            </table>

        </p>
        <p>
            <strong>
            <asp:Label ID="Label5" runat="server" Text="Employees Allocated" CssClass="auto-style3"></asp:Label>
            </strong>
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label6" runat="server" Text="Employee No.:"></asp:Label></td>
                    <td><asp:TextBox ID="txtEmpNo" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnAllocateEmployee" runat="server" Text="Allocate Employee" class="auto-style4" OnClick="btnAllocateEmployee_Click"/></td>
                </tr>
            </table>
        </p>
        <p>
            <strong>
            <asp:Label ID="Label7" runat="server" Text="Equipment/Material" CssClass="auto-style3"></asp:Label>
            </strong>
            <br />
            <br />
            <asp:Label ID="Label8" runat="server" Text="Standard Floorboards:" CssClass="auto-style3"></asp:Label>
            <table>
                <tr>
                    <td><asp:Label ID="Label9" runat="server" Text="Material Quantity:"></asp:Label></td>
                    <td><asp:TextBox ID="txtFloorboardQuantity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnAddFloorboards" runat="server" Text="Add" CssClass="auto-style4" OnClick="btnAddFloorboards_Click"/></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Power Points:" CssClass="auto-style3"></asp:Label>
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label11" runat="server" Text="Material Quantity:"></asp:Label></td>
                    <td><asp:TextBox ID="txtPowerPointsQuantity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnAddPowerPoints" runat="server" Text="Add" CssClass="auto-style4" OnClick="btnAddPowerPoints_Click"/></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Standard Electrical Wiring" CssClass="auto-style3"></asp:Label>
            <br />
            <table>
                <tr>
                    <td><asp:Label ID="Label13" runat="server" Text="Material Quantity:"></asp:Label></td>
                    <td><asp:TextBox ID="txtWiringQuantity" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtMetres" runat="server" Text ="Metres" Enabled="false" CssClass="auto-style5" Width="44px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnAddWiring" runat="server" Text="Add" CssClass="auto-style4" OnClick="btnAddWiring_Click"/></td>
                </tr>
            </table>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Standard Stair Packs" CssClass="auto-style3"></asp:Label>
            <br />
            <table>
                <tr>
                    <td class="auto-style7"><asp:Label ID="Label15" runat="server" Text="Material Quantity:"></asp:Label></td>
                    <td class="auto-style7"><asp:TextBox ID="txtStairQuantity" runat="server"></asp:TextBox></td>
                    <td><asp:TextBox ID="txtPacks" runat="server" Text="Packs" Enabled ="false" CssClass="auto-style5" Width="44px"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td><asp:Button ID="btnAddStairs" runat="server" Text="Add" CssClass="auto-style4" OnClick="btnAddStairs_Click"/></td>
                </tr>
            </table>
            <br />
            <br />
            <asp:Button ID="btnCreateInvoive" runat="server" Text="Create Invoive" CssClass="auto-style4" OnClick="btnCreateInvoive_Click" />
        </p>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
