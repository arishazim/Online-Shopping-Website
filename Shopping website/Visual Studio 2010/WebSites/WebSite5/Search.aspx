<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style11
        {
            width: 200px;
            height: 350px;
        }
        .style13
        {
            height: 25px;
        }
        .style15
        {
            height: 16px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style1" style="height: 113px; width: 92%">
    <tr>
        <td colspan="2" class="style13">
            </td>
        <td class="style13">
            </td>
    </tr>
    <tr>
        <td colspan="3" class="style6">
            <asp:DataList ID="DataList1" runat="server" CellPadding="4" 
                ForeColor="#333333" RepeatColumns="7" Height="500px" 
                RepeatDirection="Horizontal" Width="500px">
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
                                            <span class="style12">Rs-</span><asp:Label ID="Label4" runat="server" Text='<%# Eval("Product_Price") %>'></asp:Label>
                                            <span class="style12">/-only</span></td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("Product_Details") %>' 
                                                style="color: #000000"></asp:Label>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:HyperLink ID="HyperLink1" runat="server" 
                                                NavigateUrl='<%# "ViewDetails?pid="+Eval("Product_ID") %>'>Details</asp:HyperLink>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
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
        <td colspan="2" class="style6">
            </td>
        <td class="style6">
            </td>
    </tr>
    <tr>
        <td class="style15">
            <asp:HyperLink ID="lnkprev" runat="server">&lt;&lt; Prev</asp:HyperLink>
        </td>
        <td colspan="2" class="style15">
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

