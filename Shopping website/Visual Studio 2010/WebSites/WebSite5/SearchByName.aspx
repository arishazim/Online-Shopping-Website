<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SearchByName.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style1">
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="3" style="text-align: center">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                ForeColor="#333333" RepeatColumns="6" Height="500px" Width="500px">
                <AlternatingItemStyle BackColor="White" />
                <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="#EFF3FB" />
                <ItemTemplate>
                    <table cellpadding="0" cellspacing="0" class="style11">
                        <tr>
                            <td>
                                <table cellspacing="0" class="style4">
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("Product_Name") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Image ID="Image28" runat="server" Height="125px" 
                                                ImageUrl='<%# Eval("Product_Image") %>' Width="144px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            Rs-<asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_Price") %>' 
                                                ForeColor="#3333FF"></asp:Label>
                                            /-only</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Product_Details") %>'></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                                NavigateUrl='<%# "ViewDetailsByGuest.aspx?pid="+Eval("Product_ID") %>'>Details</asp:HyperLink>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            </asp:DataList>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td style="text-align: center">
            <asp:HyperLink ID="lnkprev" runat="server">&lt;&lt; Prev</asp:HyperLink>
        </td>
        <td colspan="2" style="text-align: center">
            <asp:HyperLink ID="lnknext" runat="server">Next &gt;&gt;</asp:HyperLink>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

