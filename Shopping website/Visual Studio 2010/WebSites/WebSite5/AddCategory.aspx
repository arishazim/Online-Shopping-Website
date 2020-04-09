<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style16
        {
            width: 172px;
            height: 6px;
            background-color: #FFFFCC;
        }
        .style17
        {            text-align: center;
        }
        .style18
        {
            font-size: large;
            color: #000000;
        }
        .style19
        {
            color: #3333FF;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style3" style="color: #FFFFCC">
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <strong style="text-align: center">ADD CATEGORY</strong></td>
        </tr>
        <tr>
            <td class="style18">
                <strong>Enter the category</strong></td>
            <td>
                <asp:TextBox ID="txtname" runat="server" ForeColor="Black" 
                    ValidationGroup="grp"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style17" colspan="2">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="Entercategory name" 
                    style="color: #FF0000" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td style="text-align: left">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="122px" ValidationGroup="grp" />
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style17" colspan="2">
                <asp:Label ID="Label3" runat="server" style="color: #3333FF"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

