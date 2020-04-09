<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EditProducts.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            width: 632px;
            color: #FFFFCC;
        }
        .style18
        {
            text-align: center;
        }
        .style19
        {
            height: 40px;
        }
        .style20
        {
            height: 73px;
        }
        .style21
        {
            color: #FF0000;
        }
        .style22
        {
            height: 73px;
            color: #000000;
        }
        .style23
        {
            height: 40px;
            color: #000000;
        }
        .style24
        {
            height: 57px;
            color: #000000;
        }
        .style25
        {
            height: 57px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style17">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-weight: 700; color: #0000FF; font-size: large" 
            class="style18">
            EDIT PRODUCTS</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
            Select Product</td>
        <td class="style19">
            <asp:DropDownList ID="ddlproduct" runat="server" AutoPostBack="True" 
                Height="28px" onselectedindexchanged="ddlproduct_SelectedIndexChanged" 
                Width="177px" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlproduct" ErrorMessage="Select product" 
                CssClass="style21" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Edit Product</td>
        <td>
            <asp:TextBox ID="txtproduct" runat="server" Height="22px" Width="184px" 
                ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtproduct" ErrorMessage="Set Product" 
                CssClass="style21" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22">
            Select Brand</td>
        <td class="style20">
            <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" 
                Height="23px" Width="179px" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                ControlToValidate="ddlbrand" CssClass="style21" ErrorMessage="Select Brand" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style24">
            Select Category</td>
        <td class="style25">
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                Height="16px" Width="176px" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                ControlToValidate="ddlcategory" CssClass="style21" 
                ErrorMessage="Select Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Set Description</td>
        <td>
            <asp:TextBox ID="txtdetails" runat="server" ValidationGroup="grp" Width="174px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="txtdetails" ErrorMessage="Set Description" 
                CssClass="style21" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style15">
            Set Price</td>
        <td>
            <asp:TextBox ID="txtprice" runat="server" MaxLength="10" Width="172px" 
                ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="Set price" CssClass="style21" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style15">
            Set Image</td>
        <td>
            <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="279px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="FileUpload1" ErrorMessage="Set an Image" 
                CssClass="style21" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

