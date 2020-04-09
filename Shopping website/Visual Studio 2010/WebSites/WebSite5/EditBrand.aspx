<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EditBrand.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 90%;
        height: 253px;
            background-color: #FFFFCC;
        }
        .style20
        {
            width: 976px;
        }
    .style21
    {
        font-size: medium;
        height: 54px;
        width: 342px;
    }
        .style23
        {
            width: 976px;
            height: 16px;
        }
        .style25
        {
            width: 342px;
            height: 16px;
        }
        .style26
        {
            width: 342px;
        }
        .style27
        {
            text-align: center;
        }
        .style28
        {
            color: #FF0000;
        }
        .style29
        {
            width: 342px;
            height: 61px;
        }
        .style30
        {
            width: 976px;
            height: 61px;
        }
        .style31
        {
            width: 342px;
            height: 21px;
        }
        .style32
        {
            width: 976px;
            height: 21px;
        }
        .style33
        {
            width: 976px;
            height: 54px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style17">
    <tr>
        <td class="style26">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-weight: 700; color: #0000FF; font-size: large" 
            class="style27">
            EDIT BRAND</td>
    </tr>
    <tr>
        <td class="style26">
            &nbsp;</td>
        <td class="style20">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="font-weight: 700; font-size: medium" class="style29">
            Select Brand</td>
        <td class="style30">
            <asp:DropDownList ID="ddlbrand" runat="server" AutoPostBack="True" 
                Height="28px" onselectedindexchanged="ddlbrand_SelectedIndexChanged" 
                Width="180px" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style26">
            &nbsp;</td>
        <td class="style20">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlbrand" ErrorMessage="Select Brand" 
                CssClass="style28" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td style="font-size: medium" class="style26">
            <strong>Edit Brand</strong></td>
        <td class="style20">
            <asp:TextBox ID="txtbrand" runat="server" Width="185px" ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style31">
            </td>
        <td class="style32">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtbrand" ErrorMessage="Set Brand" CssClass="style28" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            <strong>Select Category</strong></td>
        <td class="style33" width="924">
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                Height="27px" Width="182px" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style26">
            &nbsp;</td>
        <td class="style20">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="ddlcategory" ErrorMessage="Select Category" 
                CssClass="style28" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="91px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td class="style25">
            </td>
        <td class="style23">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

