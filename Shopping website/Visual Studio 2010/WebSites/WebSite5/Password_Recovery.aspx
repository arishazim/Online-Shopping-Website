<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Password_Recovery.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style16
    {
        color: #0000FF;
    }
    .style17
    {
        text-align: center;
    }
    .style18
    {
        text-align: center;
        height: 46px;
    }
    .style19
    {
        height: 46px;
        text-align: center;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style2">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16" colspan="2" 
            style="text-align: center; font-weight: 700; font-style: italic">
            Forgot Password ??</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            Enter Your Email ID</td>
        <td style="text-align: center">
            <asp:TextBox ID="txtmail" runat="server" MaxLength="20" AutoPostBack="True" 
                ontextchanged="txtmail_TextChanged" ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="text-align: center">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="txtmail" ErrorMessage="Enetr mail id" ForeColor="Red" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="style17">
            Your Security Question</td>
        <td style="text-align: center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtquestion" runat="server" ReadOnly="True" Width="238px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style17">
            Answer</td>
        <td style="text-align: center">
            <asp:TextBox ID="txtanswer" runat="server" MaxLength="20" ValidationGroup="grp"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td style="text-align: center">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ControlToValidate="txtanswer" ErrorMessage="Enter Answer" ForeColor="Red" 
                ValidationGroup="grp"></asp:RequiredFieldValidator>
        </td>
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
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style18">
            Your Password</td>
        <td class="style19">
            <asp:TextBox ID="txtpassword" runat="server" Visible="False" ReadOnly="True"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td colspan="2" style="text-align: center">
            <asp:Label ID="Label1" runat="server" style="text-align: center"></asp:Label>
        </td>
    </tr>
</table>
</asp:Content>

