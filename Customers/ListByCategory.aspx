<%@Page Language="C#"  MasterPageFile="~/Site.Master"  AutoEventWireup="true" CodeBehind="ListByCategory.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Customers.ListByCategory" %>
<%@ OutputCache Location="Server" VaryByParam="None" Duration="20" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 104px;
        }
        .auto-style3 {
            width: 158px;
        }
    </style>
    </asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
   
        
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                </td>
                <td class="auto-style3"><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
                </td>
                <td>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Customers/ListByCategory.aspx">ListByCategory</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink1" runat="server">Furniture</asp:HyperLink>
                    </td>
                <td class="auto-style3">
                    <asp:DropDownList ID="ddlCategories" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlCategories_SelectedIndexChanged">
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink2" runat="server">Electronics</asp:HyperLink>
                    </td>
                <td class="auto-style3">
                    <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                    </asp:CheckBoxList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                        <asp:HyperLink ID="HyperLink3" runat="server">Camara</asp:HyperLink>
                    </td>
                <td class="auto-style3">
                    <asp:Button ID="Button1" runat="server" Text="Order" Width="108px" OnClick="Button1_Click" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:HyperLink ID="HyperLink4" runat="server">Home Needs</asp:HyperLink>
                </td>
                <td class="auto-style3">
                    <asp:Label ID="lblProducts" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">
                    <asp:Label ID="ProductCouunts" runat="server"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style3">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>

        
    </asp:Content>