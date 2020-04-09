<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SignInPage.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            color: #FF0000;
        }
        .style16
        {
            color: #FF0000;
        }
        .style17
        {
            color: #FF0000;
            text-align: center;
            font-weight: 700;
            height: 31px;
        }
        .style18
        {
            color: #000000;
            font-weight: bold;
        }
        .style20
        {
            color: #FF0000;
            font-weight: 700;
        }
        .style21
        {
            font-weight: 700;
        }
        .style22
        {
            height: 71px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style16" style="background-color: #FFFFCC">
        <tr>
            <td class="style15">
                <span style="text-align: right"><strong>Name<span class="style20">*</span></strong></span></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtname" runat="server" MaxLength="50" Width="268px" 
                    ValidationGroup="grp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtname" ErrorMessage="You Have to enter Your name" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <strong style="text-align: right">Password<span style="text-align: right"><strong><span 
                    class="style20">*</span></strong></span></strong></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtpassword" runat="server" TextMode="Password" MaxLength="10" 
                    ValidationGroup="grp"></asp:TextBox>
                <asp:CompareValidator ID="CompareValidator2" runat="server" 
                    ControlToCompare="txtpassword" ControlToValidate="txtcpassword" 
                    ErrorMessage="Password does not match" ForeColor="Red"></asp:CompareValidator>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtpassword" 
                    ErrorMessage="You have to enter your password" ForeColor="Red" 
                    ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="font-weight: 700">
                <span class="style15">Confirm Password</span><span style="text-align: right"><strong><span 
                    class="style21">*</span></strong></span></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtcpassword" runat="server" MaxLength="10" 
                    TextMode="Password" ValidationGroup="grp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtcpassword" 
                    ErrorMessage="You have to write your Password Again to varify" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <strong>Email ID<span style="text-align: right"><span class="style20">*</span></span></strong></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtmail" runat="server" MaxLength="50" Width="271px" 
                    ValidationGroup="grp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="txtmail" ErrorMessage="You have to enter your Email ID" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtmail" ControlToValidate="txtcmail" 
                    ErrorMessage="Email ID does not match" ForeColor="Red"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style15">
                <strong>Confirm Email ID<span style="text-align: right"><span class="style20">*</span></span></strong></td>
            <td style="text-align: left">
                <asp:TextBox ID="txtcmail" runat="server" MaxLength="50" Width="271px" 
                    ValidationGroup="grp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="txtcmail" 
                    ErrorMessage="You have to enter your Emil ID again too verify" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style22">
                <b style="color: #000000">Your Security Question</b><span class="style16"><b>*</b></span></td>
            <td style="text-align: left" class="style22">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="29px" Width="315px" 
                    ValidationGroup="grp">
                    <asp:ListItem>Select Question</asp:ListItem>
                    <asp:ListItem>What is the name of your first school?</asp:ListItem>
                    <asp:ListItem>What is your mother&#39;s maiden name?</asp:ListItem>
                    <asp:ListItem>What is your favourite dish?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="DropDownList1" ErrorMessage="Select your question" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style18">
                Your Answer<span class="style17">*</span></td>
            <td style="text-align: left">
                <asp:TextBox ID="TextBox1" runat="server" Width="267px" ValidationGroup="grp"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Give your answer" 
                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="SignUp" 
                    ValidationGroup="grp" />
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

