<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="DeleteCategory.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
    {
        width: 94%;
        background-color: #FFFFCC;
    }
    .style18
    {
        font-size: x-large;
        color: #0000FF;
            text-align: center;
        }
    .style19
    {
        font-size: medium;
            height: 56px;
        }
        .style20
        {
            height: 56px;
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
            <strong style="text-align: center">DELETE CATEGORY</strong></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style19">
            <strong>Select Category</strong></td>
        <td class="style20">
            <asp:DropDownList ID="ddlcategory" runat="server" Height="28px" Width="152px" 
                AutoPostBack="True" ValidationGroup="grp">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="ddlcategory" ErrorMessage="Select Category" 
                style="color: #FF0000" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Height="33px" onclick="Button1_Click" 
                Text="Submit" Width="141px" ValidationGroup="grp" />
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
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

