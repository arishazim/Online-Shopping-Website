<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AddBrand.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
    {
        width: 295%;
            background-color: #FFFFCC;
        }
    .style17
    {
        font-size: large;
        color: #3333FF;
    }
    .style18
    {
    }
    .style19
    {
        text-align: left;
    }
    .style20
    {
    }
    .style21
    {
        width: 757px;
    }
        .style22
        {
            color: #FF0000;
        }
        .style23
        {
            width: 757px;
            font-weight: bold;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style2">
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17" colspan="2">
            <strong>ADD BRAND</strong></td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
            Select Category&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td style="text-align: left">
            <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="182px" 
                ValidationGroup="grp">
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="DropDownList1" ErrorMessage="Select Category" 
                CssClass="style22" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style23">
            Enetr Brand Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td class="style19">
            &nbsp;&nbsp;<asp:TextBox ID="txtbrand" runat="server" ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtbrand" ErrorMessage="Enter Brand Name" 
                CssClass="style22" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18" colspan="2">
            <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
                Text="Submit" Width="102px" ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td class="style21">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style20" colspan="2">
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

