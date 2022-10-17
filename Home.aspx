<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 74px;
        }
        .auto-style3 {
            width: 279px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
        <div>
&nbsp;&nbsp;<table class="auto-style1">
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Image ID="Image2" runat="server" ClientIDMode="Predictable" Height="134px" ImageUrl="~/Images/canon-camera.jpg" Width="144px" />
                        <asp:Label ID="Label1" runat="server" Text="Cannon Cmara "></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="Image5" runat="server" Height="141px" ImageUrl="~/Images/hp-printer.jpg" Width="182px" />
                        <asp:Label ID="Label3" runat="server" Text="Hp Printer"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">
                        <asp:Image ID="Image3" runat="server" Height="151px" ImageUrl="~/Images/lenovo-laptop.jpg" />
                        <asp:Label ID="Label2" runat="server" Text="Lenovo laptop 5000"></asp:Label>
                    </td>
                    <td>
                        <asp:Image ID="Image6" runat="server" Height="143px" ImageUrl="~/Images/canon-camera.jpg" />
                        <asp:Label ID="Label4" runat="server" Text="Cannon Camara 35000"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        &nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>
                        <asp:Label ID="lblvcount" runat="server"></asp:Label>
                    </td>
                </tr>
            </table>
        </div>


</asp:Content>