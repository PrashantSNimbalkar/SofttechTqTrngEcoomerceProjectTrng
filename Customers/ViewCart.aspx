<%@Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewCart.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Customers.ViewCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style type="text/css">
        .auto-style1 {
            margin-top: 8px;
        }
        .auto-style2 {
            width: 95%;
            margin-left: 2px;
        }
        .auto-style3 {
            width: 62px;
        }
        .auto-style4 {
            width: 163px;
        }
    </style>
    </asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <div>
            <asp:Image ID="Image1" runat="server" CssClass="auto-style1" Height="192px" ImageUrl="~/Images/banner.jpg" Width="701px" />
        </div>
        <p>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="15pt" Text="Your Cart Items"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server"  Width="154px">
                        </asp:CheckBoxList>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Label ID="lblMsg" runat="server" CssClass="auto-style2"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">
                        <asp:Button ID="btnDeleteProducts" runat="server" OnClick="btnDeleteProducts_Click" Text="Delete Products " Width="159px" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </p>
        <p>
            &nbsp;</p>
        <p>
                        <asp:HyperLink ID="HyperLink3" runat="server">Camara</asp:HyperLink>
                    <br />
                        <asp:HyperLink ID="HyperLink4" runat="server">Furniture</asp:HyperLink>
                    </p>
        <p>
                        <asp:HyperLink ID="HyperLink5" runat="server">Home Needs</asp:HyperLink>
                    </p>
       
   

    </asp:Content>