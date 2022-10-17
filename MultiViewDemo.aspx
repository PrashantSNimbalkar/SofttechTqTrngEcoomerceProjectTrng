<%@Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup ="true" CodeBehind="MultiViewDemo.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.MultiViewDemo" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div>
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">C#</asp:LinkButton> |
            <asp:LinkButton ID="LinkButton2" runat="server" OnClick="LinkButton2_Click">ASP.NET</asp:LinkButton> |
            <asp:LinkButton ID="LinkButton3" runat="server" OnClick="LinkButton3_Click">MVC</asp:LinkButton>
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
            <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Customers/ListByCategory.aspx">ListByCategory</asp:HyperLink>
        </div>
        <div>
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="20pt" Text="C#"></asp:Label>
                    <span style="color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                    <br />
                    C# is a general-purpose, multi-paradigm programming language. C# encompasses static typing, strong typing, lexically scoped, imperative, declarative, functional, generic, object-oriented, and component-oriented programming disciplines.</span></asp:View>
                <asp:View ID="View2" runat="server"><span style="color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                    <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="20pt" Text="ASP.NET"></asp:Label>
                    <br />
                    ASP.NET is an open-source, server-side web-application framework designed for web development to produce dynamic web pages. It was developed by Microsoft to allow programmers to build dynamic web sites, applications and services. The name stands for Active Server Pages Network Enabled Technologies.</span></asp:View>
                <asp:View ID="View3" runat="server"><span style="color: rgb(77, 81, 86); font-family: arial, sans-serif; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255); text-decoration-thickness: initial; text-decoration-style: initial; text-decoration-color: initial; display: inline !important; float: none;">
                    <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="20pt" Text="MVC"></asp:Label>
                    <br />
                    Model–view–controller is a software architectural pattern commonly used for developing user interfaces that divide the related program logic into three interconnected elements. This is done to separate internal representations of information from the ways information is presented to and accepted from the user.</span></asp:View>
            </asp:MultiView>
        </div>
</asp:Content>