<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="EditCategory.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 90%;
        background-color: #FFFFCC;
    }
    .style18
    {
        font-size: medium;
        width: 425px;
    }
    .style19
    {            text-align: center;
        }
    .style20
    {
        color: #FF0000;
    }
        .style21
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style17">
    <tr>
        <td class="style19">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="font-weight: 700; font-size: large; color: #0000FF" 
            class="style21">
            EDIT CATEGORY</td>
    </tr>
    <tr>
        <td class="style19">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            <strong>Select Category</strong></td>
        <td>
            <asp:DropDownList ID="ddlcategory" runat="server" AutoPostBack="True" 
                Height="16px" Width="131px" 
                onselectedindexchanged="ddlcategory_SelectedIndexChanged" 
                ValidationGroup="grp">
            </asp:DropDownList>
        </td>
    </tr>
    <tr>
        <td class="style19">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlcategory" CssClass="style20" 
                ErrorMessage="Select Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style18">
            <strong>Edit Category</strong></td>
        <td>
            <asp:TextBox ID="txtcategory" runat="server" ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="style19">
            &nbsp;</td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtcategory" CssClass="style20" 
                ErrorMessage="Set Category" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                Width="89px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td class="style19" colspan="2">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

