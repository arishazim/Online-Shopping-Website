<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AddProduct2.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style20
        {
            width: 200px;
        }
        .style17
    {
        width: 181px;
    }
        .style21
        {
            width: 200px;
            font-weight: bold;
            font-size: large;
        }
        .style22
        {
            color: #FF0000;
        }
        .style18
        {
            text-align: center;
        }
        .style25
        {
            width: 200px;
            font-weight: bold;
            font-size: large;
            height: 43px;
        }
        .style26
        {
            width: 181px;
            height: 43px;
        }
        .style27
        {
            width: 200px;
            font-weight: bold;
            font-size: large;
            height: 55px;
        }
        .style28
        {
            width: 181px;
            height: 55px;
        }
        .style29
        {
            width: 200px;
            font-weight: bold;
            font-size: large;
            height: 51px;
        }
        .style30
        {
            width: 181px;
            height: 51px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style3">
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" 
            style="font-weight: 700; font-size: large; color: #3333FF; text-align: center;">
            ADD PRODUCT</td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style29">
            Select Category</td>
        <td class="style30">
            <asp:DropDownList ID="ddlcategory" runat="server" Height="25px" 
                onselectedindexchanged="ddlcategory_SelectedIndexChanged" Width="163px" 
                AutoPostBack="True" ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlcategory" CssClass="style22" 
                ErrorMessage="Select Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style25">
            Select Brand</td>
        <td class="style26">
            <asp:DropDownList ID="ddlbrand" runat="server" Height="39px" Width="161px" 
                ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="ddlbrand" CssClass="style22" 
                ErrorMessage="Select Brand" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            Enter Product Name</td>
        <td class="style17">
            <asp:TextBox ID="txtprdctname" runat="server" Width="210px" 
                ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtprdctname" CssClass="style22" 
                ErrorMessage="Enter Product Name" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            Enter Product Details</td>
        <td class="style17">
            <asp:TextBox ID="txtdetails" runat="server" Width="210px" ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                ControlToValidate="txtdetails" CssClass="style22" 
                ErrorMessage="Enter Details" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style21">
            Enter Price</td>
        <td class="style17">
            <asp:TextBox ID="txtprice" runat="server" Height="25px" Width="207px" 
                ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="txtprice" ErrorMessage="Enter Price" 
                style="color: #FF0000" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            Enter Market Value</td>
        <td class="style17">
            <asp:TextBox ID="txtprice2" runat="server" Height="25px" Width="207px" 
                ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                ControlToValidate="txtprice2" ErrorMessage="Enter Price" 
                style="color: #FF0000" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style27">
            Enter Product Image</td>
        <td class="style28">
            <asp:FileUpload ID="FileUpload1" runat="server" Height="32px" Width="295px" />
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                ControlToValidate="FileUpload1" CssClass="style22" 
                ErrorMessage="Upload Image" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style18" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="32px" onclick="Button1_Click" 
                Text="Submit" Width="120px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td class="style20">
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19" colspan="2">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

