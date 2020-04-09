<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="paymentoption.aspx.cs" Inherits="Default9" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style14
        {
            width: 1177px;
            text-align: center;
        }
        .style15
        {
            width: 1177px;
            text-align: center;
            color: #FF9933;
            background-color: #FFFFFF;
        }
        .style16
        {
            width: 1177px;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style11">
    <tr>
        <td class="style13">
            <h1 id="how-to-pay" class="style15" style="o囄">
                How would you like 
                to pay?</h1>
            <p>
                &nbsp;</p>
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style16">
            <asp:CheckBox ID="CheckBox1" runat="server" BackColor="#0066CC" 
                BorderColor="#FFFFCC" BorderStyle="Groove" Text="Credit card " />
&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            &nbsp;<asp:Image ID="Image28" runat="server" 
                ImageUrl="~/Images/credit-cards-sml._V138624620_.gif" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;We 
            accept domestic and international Visa and MasterCard. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
&nbsp;<asp:CheckBox ID="CheckBox2" runat="server" BackColor="#0066CC" 
                BorderColor="#FFFFCC" BorderStyle="Groove" Text="Cash on delivery" />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            <asp:Button ID="Button1" runat="server" BackColor="Aqua" BorderStyle="Groove" 
                Text="Continue" BorderColor="#000066" BorderWidth="1px" />
            &nbsp;<br />
        </td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td class="style14">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

