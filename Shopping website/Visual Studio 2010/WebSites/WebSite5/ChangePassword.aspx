<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style14
    {
        text-decoration: underline;
        color: #0000FF;
        font-size: large;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style3">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14" colspan="2">
            <em><strong>CHANGE PASSWORD</strong></em></td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Enter current password</td>
        <td>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtcurpassword" runat="server" MaxLength="10" 
                ontextchanged="TextBox3_TextChanged" TextMode="Password" 
                ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtcurpassword" ErrorMessage="Enter current password" 
                ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Enter New Password</td>
        <td>
            &nbsp;&nbsp;
            <asp:TextBox ID="txtnewpassword" runat="server" MaxLength="10" 
                TextMode="Password" ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtnewpassword" ErrorMessage=" Enter the new Password" 
                ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            Confirm Password</td>
        <td style="text-align: center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtcpassword" runat="server" MaxLength="10" 
                TextMode="Password" ValidationGroup="grp"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="txtcpassword" ErrorMessage="Enter the new password again" 
                ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="txtnewpassword" ControlToValidate="txtcpassword" 
                ErrorMessage="Password does not match" ForeColor="Red" 
                ValidationGroup="grp"></asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td colspan="2" 
            style="font-style: italic; text-decoration: underline; font-weight: 700; color: #0000FF">
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

