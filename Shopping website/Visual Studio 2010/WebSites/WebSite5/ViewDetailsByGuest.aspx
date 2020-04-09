<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ViewDetailsByGuest.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style17
        {
            height: 379px;
        }
        .style18
        {
            height: 27px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 439px; width: 84%">
    <tr>
        <td class="style17">
            <asp:DataList ID="DataList1" runat="server" Height="16px" 
                RepeatDirection="Horizontal" Width="584px" RepeatColumns="1" 
                style="text-align: center">
                <ItemTemplate>
                    <table cellspacing="0" class="style4" style="width: 101%">
                        <tr>
                            <td class="style11">
                                <asp:Image ID="Image28" runat="server" Height="257px" 
                                        ImageUrl='<%# Eval("Product_Image") %>' Width="255px" />
                            </td>
                            <td>
                                <table class="style4">
                                    <tr>
                                        <td colspan="2">
                                            <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Names="Constantia" 
                                                    ForeColor="Blue" Height="50px" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Underline="True" 
                                                    Text="BRAND"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label4" runat="server" Font-Bold="True" 
                                                    Text='<%# Eval("Brand_Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Underline="True" 
                                                    Text="MARKET PRICE"></asp:Label>
                                        </td>
                                        <td>
                                                Rs--<asp:Label ID="Label5" runat="server" Font-Strikeout="True" 
                                                    Text='<%# Eval("Normal_Price") %>'></asp:Label>
                                                /--</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Italic="False" 
                                                    Font-Underline="True" ForeColor="Black" Text="OUR PRICE"></asp:Label>
                                        </td>
                                        <td>
                                                Rs--<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                                                    Font-Names="Comic Sans MS" ForeColor="#3399FF" 
                                                    Text='<%# Eval("Product_Price") %>'></asp:Label>
                                                /-&nbsp; onlyy</td>
                                    </tr>
                                    <tr>
                                        <td colspan="2">
                                                &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Underline="True" 
                                                    Text="DETAILS"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label7" runat="server" Text='<%# Eval("Product_Details") %>'></asp:Label>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td style="text-align: center" class="style18">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="61px" 
                    ImageUrl="~/Images/Button_Images/Add_To_Cart.jpg" Width="182px" 
                    onclick="ImageButton3_Click" ValidationGroup="grp" />
            </td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:Label ID="Label12" runat="server" ForeColor="Red"></asp:Label>
        </td>
    </tr>
    </table>
</asp:Content>

