<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebpartDemo.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Customers.WebpartDemo" %>

<%@ Register Src="~/Customers/Calculation.ascx" TagPrefix="uc1" TagName="Calculation" %>
<%@ Register Src="~/Customers/Calender.ascx" TagPrefix="uc1" TagName="Calender" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 871px;
        }
        .auto-style2 {
            width: 866px;
        }
        .auto-style3 {
            width: 631px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:WebPartManager ID="WebPartManager1" runat="server">
    </asp:WebPartManager>
    <div>
        <table>
            <tr>
                <td class="auto-style3">
                    
                    <asp:LinkButton ID="lbCatalog" runat="server" OnClick="lbCatalog_Click">Catalog Mode</asp:LinkButton>
&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbEditor" runat="server" OnClick="lbEditor_Click">Editor Mode</asp:LinkButton>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:LinkButton ID="lbDesign" runat="server" OnClick="lbDesign_Click">Design Mode</asp:LinkButton>
                    
                </td>
                <td>

                    <asp:EditorZone ID="EditorZone1" runat="server">
                        <ZoneTemplate>
                            <asp:AppearanceEditorPart ID="AppearanceEditorPart1" runat="server" />
                            <asp:BehaviorEditorPart ID="BehaviorEditorPart1" runat="server" />
                            <asp:LayoutEditorPart ID="LayoutEditorPart1" runat="server" />
                        </ZoneTemplate>
                    </asp:EditorZone>

                </td>
                <td>

                    <asp:CatalogZone ID="CatalogZone1" runat="server">
                        <ZoneTemplate>

                            <asp:PageCatalogPart ID="PageCatalogPart1" runat="server" />
                            <asp:DeclarativeCatalogPart ID="DeclarativeCatalogPart1" runat="server">
                                <WebPartsTemplate>
                                    <uc1:Calculation runat="server" id="Calculation" title="Calculator"/>
                                    <uc1:Calender runat="server" id="Calender" title="Calender" />
                                </WebPartsTemplate>
                            </asp:DeclarativeCatalogPart>

                        </ZoneTemplate>
                    </asp:CatalogZone>

                </td>
            </tr>
             <tr>
                <td class="auto-style3">
                    
                    <asp:WebPartZone ID="WebPartZone1" runat="server">
                    </asp:WebPartZone>
                    
                </td>
                <td>

                    <asp:WebPartZone ID="WebPartZone2" runat="server">
                    </asp:WebPartZone>

                </td>
                <td>

                    <asp:WebPartZone ID="WebPartZone3" runat="server">
                    </asp:WebPartZone>

                </td>
            </tr>
             <tr>
                <td class="auto-style3">
                    
                    <asp:WebPartZone ID="WebPartZone4" runat="server">
                    </asp:WebPartZone>
                    
                </td>
                <td>

                    <asp:WebPartZone ID="WebPartZone5" runat="server">
                    </asp:WebPartZone>

                </td>
                <td>

                    <asp:WebPartZone ID="WebPartZone6" runat="server">
                    </asp:WebPartZone>

                </td>
            </tr>
        </table>
    </div>
</asp:Content>
