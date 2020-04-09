﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style11
    {
        width: 90%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table cellspacing="0" class="style11">
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                AutoGenerateDeleteButton="True" CellPadding="4" ForeColor="#333333" 
                GridLines="None" onpageindexchanging="GridView1_PageIndexChanging" 
                onrowdeleting="GridView1_RowDeleting" 
                style="text-align: right; margin-left: 0px;" Width="753px">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:BoundField DataField="Product_ID" HeaderText="Product ID" ReadOnly="True" 
                        SortExpression="Product_ID" />
                    <asp:BoundField DataField="Product_Name" HeaderText="Product Name" 
                        ReadOnly="True" SortExpression="Product_Name" />
                    <asp:BoundField DataField="Brand_Name" HeaderText="Brand Name" ReadOnly="True" 
                        SortExpression="Brand_Name" />
                    <asp:BoundField DataField="Category_Name" HeaderText="Category Name" 
                        ReadOnly="True" SortExpression="Category_Name" />
                    <asp:BoundField DataField="Item_Number" HeaderText="No. Of Item" 
                        ReadOnly="True" SortExpression="Item_Number" />
                    <asp:BoundField DataField="Price" HeaderText="Price" ReadOnly="True" 
                        SortExpression="Price" />
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image28" runat="server" Height="100px" 
                                ImageUrl='<%# Eval("Image") %>' Width="100px" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
        </td>
    </tr>
    <tr>
        <td>
            <asp:Label ID="Label4" runat="server"></asp:Label>
        </td>
        <td>
            <asp:Label ID="Label3" runat="server"></asp:Label>
        </td>
    </tr>
    <tr>
        <td colspan="2">
            <asp:ImageButton ID="ImageButton3" runat="server" Height="56px" 
                ImageUrl="~/Images/Button_Images/depositphotos_1982894-Next-icon-button.jpg" 
                onclick="ImageButton3_Click" Width="150px" />
        </td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>
