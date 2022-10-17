<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup ="true" CodeBehind="ManageRoles.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Admin.ManageRoles" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 357px;
        }
        .auto-style3 {
            width: 224px;
        }
    </style>


    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">Enter Role</td>
                    <td class="auto-style3">
                        <asp:TextBox ID="txtRole" runat="server" Width="162px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="btnAddRole" runat="server" OnClick="btnAddRole_Click" Text="Add Role" Width="84px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Select User</td>
                    <td class="auto-style3">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="166px">
                        </asp:DropDownList>
                    </td>
                    <td>
                        <asp:Button ID="btnAddUserToRole" runat="server" OnClick="btnAddUserToRole_Click" Text="Add User To Role" Width="134px" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style3">
                        <asp:Label ID="lblMsg" runat="server" Font-Bold="True"></asp:Label>
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
