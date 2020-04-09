<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DeleteBrand.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 85%;
    }
    .style18
    {
        }
    .style19
    {
        font-size: large;
        color: #000066;
    }
    .style20
    {
        width: 508px;
        font-weight: bold;
        font-size: large;
    }
        .style21
        {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style17">
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19" colspan="2">
            <strong>DELETE BRAND</strong></td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style20">
            Select Brand</td>
        <td>
            <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" 
                onselectedindexchanged="ddlbrand_SelectedIndexChanged" 
                ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlbrand" CssClass="style21" 
                ErrorMessage="Select brand" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style20">
            Select Category</td>
        <td>
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style18">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddlcategory" CssClass="style21" 
                ErrorMessage="Select Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="97px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td class="style18" colspan="2">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

