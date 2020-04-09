﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="ShowData.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style9
        {
            width: 75%;
            background-color: #FFFFFF;
        }
        .style18
        {
            width: 707px;
        }
    .style20
    {
        width: 684px;
        height: 28px;
    }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;
    <table class="style9">
        <tr>
            <td colspan="2" 
                style="text-align: center; font-weight: 700; font-style: italic">
                Category Information</td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" BackColor="White" 
                    BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                    GridLines="None" PageSize="5" style="text-align: center" Width="700px" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                    onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowdeleting="GridView1_RowDeleting" 
                    onselectedindexchanging="GridView1_SelectedIndexChanging" 
                    onpageindexchanging="GridView1_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Category_ID" HeaderText="Category ID" 
                            SortExpression="Category_ID" ReadOnly="True" />
                        <asp:BoundField DataField="Category_Name" HeaderText="Category Name" 
                            SortExpression="Category_Name" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Brand_Table]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td colspan="2" 
                style="text-align: center; font-weight: 700; font-style: italic">
                Brand Information</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center">
                <asp:GridView ID="GridView2" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" BackColor="White" 
                    BackImageUrl="~/Images/Shopping-Bag-Pantene.jpg" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" 
                    Width="700px" PageSize="5" onrowcancelingedit="GridView2_RowCancelingEdit" 
                    onrowdeleting="GridView2_RowDeleting" onrowediting="GridView2_RowEditing" 
                    onrowupdating="GridView2_RowUpdating" Height="194px" 
                    onselectedindexchanging="GridView2_SelectedIndexChanging" 
                    onpageindexchanging="GridView2_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Brand_ID" HeaderText="Brand ID" ReadOnly="True" 
                            SortExpression="Brand_ID" />
                        <asp:BoundField DataField="Brand_Name" HeaderText="Brand Name" 
                            SortExpression="Brand_Name" />
                        <asp:BoundField DataField="Category_ID" HeaderText="Category ID" 
                            ReadOnly="True" SortExpression="Category_ID" />
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Category_Table]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: right">
                <asp:GridView ID="GridView3" runat="server" AllowPaging="True" 
                    AllowSorting="True" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" 
                    AutoGenerateEditButton="True" BackColor="White" BorderColor="#CCCCCC" 
                    BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None" 
                    Width="700px" PageSize="5" 
                    onrowcancelingedit="GridView3_RowCancelingEdit" 
                    onrowdeleting="GridView3_RowDeleting" onrowediting="GridView3_RowEditing" 
                    onrowupdating="GridView3_RowUpdating" 
                    onselectedindexchanging="GridView3_SelectedIndexChanging" 
                    onpageindexchanging="GridView3_PageIndexChanging">
                    <Columns>
                        <asp:BoundField DataField="Product_ID" HeaderText="Product_ID" ReadOnly="True" 
                            SortExpression="Product_ID" />
                        <asp:BoundField DataField="Brand_ID" HeaderText="Brand_ID" ReadOnly="True" 
                            SortExpression="Brand_ID" />
                        <asp:BoundField DataField="Category_ID" HeaderText="Category_ID" 
                            ReadOnly="True" SortExpression="Category_ID" />
                        <asp:BoundField DataField="Product_Name" HeaderText="Product_Name" 
                            SortExpression="Product_Name" />
                        <asp:BoundField DataField="Product_Details" HeaderText="Product_Details" 
                            SortExpression="Product_Details" />
                        <asp:BoundField DataField="Product_Price" HeaderText="Product_Price" 
                            SortExpression="Product_Price" />
                        <asp:TemplateField HeaderText="Product_Image">
                            <ItemTemplate>
                                <asp:Image ID="Image3" runat="server" Height="60px" 
                                    ImageUrl='<%# Eval("Product_Image") %>' Width="74px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                    <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F7F7F7" />
                    <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                    <SortedDescendingCellStyle BackColor="#E5E5E5" />
                    <SortedDescendingHeaderStyle BackColor="#242121" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Product_Table]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style20">
                &nbsp;</td>
        </tr>
    </table>
    </asp:Content>

