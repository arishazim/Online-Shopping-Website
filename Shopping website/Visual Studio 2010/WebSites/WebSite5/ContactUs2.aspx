<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ContactUs2.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style16
    {
        font-size: x-large;
    }
    .style17
    {
        width: 323px;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2" style="width: 535px">
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16" colspan="2" 
            style="text-align: center; font-style: italic; font-weight: 700; color: #000099">
            Contact Us</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            E-Mail ID</td>
        <td style="text-align: center" class="style17">
            <asp:TextBox ID="txtmail" runat="server" MaxLength="30" ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtmail" ErrorMessage="Entre your email-id" 
                ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            Enter Your Query</td>
        <td style="text-align: center" class="style17">
            <asp:TextBox ID="txtmsg" runat="server" MaxLength="100" ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtmsg" ErrorMessage="Enter your query" ForeColor="Red" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Submit" 
                ValidationGroup="grp" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center; font-style: italic">
            To ask more you can contact us in this number 1800 256 399</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td class="style17">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

