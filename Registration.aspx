<%@Page Language="C#"  MasterPageFile ="~/Site.Master"   AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="ECOMMERCEDEMPSNIM.Registration" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 159px;
        }
        .auto-style3 {
            width: 159px;
            height: 19px;
        }
        .auto-style4 {
            height: 19px;
        }
        .auto-style5 {
            width: 140px;
        }
        .auto-style6 {
            width: 140px;
            height: 19px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   
            <table class="auto-style1">
                <tr>
                    <td class="auto-style2">
            <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/Customers/ListByCategory.aspx">ListByCategory</asp:HyperLink>
                    </td>
                    <td class="auto-style5">
            <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/Home.aspx">Home</asp:HyperLink>
                    </td>
                    <td><asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/Registration.aspx">Registration</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label1" runat="server" Text="User Sign Up"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label2" runat="server" Text="Enter First Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtfirst" runat="server" OnTextChanged="TextBox2_TextChanged" Width="145px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txtfirst" ErrorMessage="Name is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label10" runat="server" Text="Enter Last Name"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtlast" runat="server" OnTextChanged="TextBox2_TextChanged" Width="151px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txtlast" ErrorMessage="LAST NAME IS REQUIRED" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label11" runat="server" Text="Enter Email Id"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtemail" runat="server" OnTextChanged="TextBox2_TextChanged" Width="148px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txtemail" ErrorMessage="Email id is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txtemail" ErrorMessage="email id should be in proper format" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label12" runat="server" Text="Enter Contact Number"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="TxtContact" runat="server" OnTextChanged="TextBox2_TextChanged" Width="148px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TxtContact" ErrorMessage="contact no required" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="check" ControlToValidate="TxtContact" ErrorMessage="Enter contact no properly" ForeColor="Red">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label13" runat="server" Text="Enter Address"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtaddress" runat="server" Width="129px"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txtaddress" ErrorMessage="Address is required" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label14" runat="server" Text="Enter Age"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtage" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="Txtage" ErrorMessage="enter the age" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="Txtage" ErrorMessage="add age between 18 to 60" ForeColor="Red" MaximumValue="60" MinimumValue="18" Type="Integer">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Label ID="Label15" runat="server" Text="Enter Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        <asp:TextBox ID="Txtpassword" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style4">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txtpassword" ErrorMessage="password is required" ForeColor="#FF0066">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="Txtconfirmpassword" ControlToValidate="Txtpassword" ErrorMessage="password dose not match" ForeColor="Red">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">
                        <asp:Label ID="Label16" runat="server" Text="Enter Confirm Password"></asp:Label>
                    </td>
                    <td class="auto-style5">
                        <asp:TextBox ID="Txtconfirmpassword" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Txtconfirmpassword" ErrorMessage="Both password should be same" ForeColor="Red">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" Width="131px" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">
                        <asp:Image ID="Image2" runat="server" />
                        <asp:FileUpload ID="FileUpload1" runat="server" />
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        
     <script type="text/javascript">
         function check(sender, data) {
             if (isNaN(data.Value)) { // isNaN (is not a number)
                 data.IsValid = false;
             }
             else {
                 data.IsValid = true;
             }
         }
    </script>
  

    </asp:Content>
