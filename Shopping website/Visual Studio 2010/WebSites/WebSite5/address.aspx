<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="address.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 90%;
        background-color: #FFFFCC;
    }
    .style12
    {
        width: 66%;
    }
        .style13
        {
            height: 36px;
        }
        .style14
        {
            width: 66%;
            height: 36px;
        }
        .style15
        {
            height: 57px;
        }
        .style16
        {
            width: 66%;
            color: #000000;
            height: 57px;
        }
        .style17
        {
            font-size: large;
            color: #3333FF;
        }
    </style>
    <script language="javascript" type="text/javascript">
// <![CDATA[

        function co_createaddr_addr1_onclick() {

        }

// ]]>
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellpadding="0" cellspacing="0" class="style3" 
        style="background-color: #FFFFCC">
        <tr>
            <td>
                <div class="style17">
                    <strong><em>Enter a new shipping address</em></strong></div>
                <div id="co_enter_addr">
                    <table align="left" style="height: 453px; width: 100%">
                        <tr class="co_addr_row">
                            <td class="fk-label" width="25%">
                                <label for="co_createaddr_name">
                                Name <span class="required">*</span></label></td>
                            <td class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtname" runat="server" style="text-align: center" 
                                    MaxLength="30" ValidationGroup="grp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Enter your name" style="text-align: right" 
                                    ControlToValidate="txtname" ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                <label for="co_createaddr_pincode">
                                Pincode <span class="required">*</span></label></td>
                            <td class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtpin" runat="server" style="text-align: center" 
                                    MaxLength="8" ValidationGroup="grp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="txtpin" ErrorMessage="Enetr pincode" ForeColor="Red" 
                                    ValidationGroup="grp"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                Address <span class="required">*</span></td>
                            <td class="style12">
                                &nbsp;<p id="co_addr1_note" class="co_note fk-hint">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:TextBox ID="txtaddress" runat="server" Height="48px" TextMode="MultiLine" 
                                        Width="132px" MaxLength="50" ValidationGroup="grp"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtaddress" ErrorMessage="Enter Adderss" 
                                        ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
                                </p>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="style13">
                                Landmark</td>
                            <td class="style14">
                                &nbsp;&nbsp;
                                <asp:TextBox ID="TextBox5" runat="server" MaxLength="50" ValidationGroup="grp"></asp:TextBox>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="style15">
                                State <span class="required">*</span></td>
                            <td class="style16">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                                    onselectedindexchanged="ddlstate_SelectedIndexChanged" 
                                    ValidationGroup="grp" Width="131px">
                                    <asp:ListItem Value="0">Select state</asp:ListItem>
                                    <asp:ListItem Value="1">West Bengal</asp:ListItem>
                                    <asp:ListItem Value="2">UtterPradesh</asp:ListItem>
                                    <asp:ListItem Value="3">Bihar</asp:ListItem>
                                    <asp:ListItem Value="4">Maharastra</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                    ControlToValidate="ddlstate" ErrorMessage="Enter State" ForeColor="Red" 
                                    ValidationGroup="grp"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                City<label for="co_createaddr_state">
                                <span class="required">*</span></label></td>
                            <td class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:DropDownList ID="ddlcity" runat="server" Height="16px" Width="129px" 
                                    ValidationGroup="grp">
                                </asp:DropDownList>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                    ControlToValidate="ddlcity" ErrorMessage="Enter City" ForeColor="Red" 
                                    ValidationGroup="grp"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                Country</td>
                            <td class="style12">
                                <b>India</b> <span class="co_note">(Service available only in India)</span></td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                Phone <span class="required">*</span></td>
                            <td class="style12">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtphone" runat="server" MaxLength="12" ValidationGroup="grp"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                    ControlToValidate="txtphone" ErrorMessage="Enter Phone No." 
                                    ForeColor="Red" ValidationGroup="grp"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label">
                                &nbsp;</td>
                            <td class="style12">
                                &nbsp;</td>
                        </tr>
                        <tr class="co_addr_row">
                            <td class="fk-label" colspan="2">
                                <asp:Button ID="Button1" runat="server" BackColor="Aqua" BorderColor="Black" 
                                    BorderStyle="Groove" BorderWidth="1px" style="text-align: justify" 
                                    Text="Click here to continue" onclick="Button1_Click" 
                                    ValidationGroup="grp" />
                            </td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

