<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DeleteProduct.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 101%;
        background-color: #FFFFCC;
    }
    .style18
    {
        font-size: large;
        color: #0000FF;
            text-align: center;
        }
        .style19
        {
            color: #FF0000;
        }
        .style20
        {
            height: 55px;
        }
        .style21
        {
            height: 59px;
        }
        .style22
        {
            height: 48px;
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
        <td class="style18" colspan="2">
            <strong>DELETE PRODUCTS</strong></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style20">
            Select Product</td>
        <td class="style20">
            <asp:DropDownList ID="ddlproduct" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlproduct_SelectedIndexChanged" Height="28px" 
                ValidationGroup="grp" Width="148px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlproduct" CssClass="style19" 
                ErrorMessage="Select Product" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            Select Brand</td>
        <td class="style21">
            <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlbrand_SelectedIndexChanged" Height="28px" 
                ValidationGroup="grp" Width="150px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddlbrand" CssClass="style19" 
                ErrorMessage="Select Brand" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style22">
            Select Category</td>
        <td class="style22">
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                Height="28px" ValidationGroup="grp" Width="152px">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="ddlcategory" CssClass="style19" 
                ErrorMessage="Select Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="132px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

