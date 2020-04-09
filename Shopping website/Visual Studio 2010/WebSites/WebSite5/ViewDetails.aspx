<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 544px;
        }
        .style14
        {
            height: 8px;
        }
        .style15
        {
            height: 600px;
        }
        .style16
        {
            height: 14px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" style="height: 700px; width: 71%">
        <tr>
            <td class="style15">
                <asp:DataList ID="DataList1" runat="server" style="text-align: center; margin-right: 0px;" 
                    Height="500px" RepeatColumns="1" Width="700px">
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
                                                Rs-<asp:Label ID="Label5" runat="server" Font-Strikeout="True" 
                                                    Text='<%# Eval("Normal_Price") %>'></asp:Label>
                                                /-</td>
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
                                                Rs-<asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" 
                                                    Font-Names="Comic Sans MS" ForeColor="#3399FF" 
                                                    Text='<%# Eval("Product_Price") %>'></asp:Label>
                                                /-&nbsp; only</td>
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
            <td class="style16">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="51px" 
                    ImageUrl="~/Images/Button_Images/Add_To_Cart.jpg" Width="193px" 
                    onclick="ImageButton3_Click" />
            </td>
        </tr>
        <tr>
            <td class="style14">
                <asp:Label ID="Label12" runat="server"></asp:Label>
            </td>
        </tr>
        </table>
</asp:Content>

