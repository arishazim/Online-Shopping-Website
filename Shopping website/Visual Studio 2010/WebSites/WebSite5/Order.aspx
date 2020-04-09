<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage3.master" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Default7" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style18
    {
        width: 116%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style18">
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            &nbsp;</td>
    </tr>
    <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" 
                GridLines="Vertical" AutoGenerateEditButton="True" 
                onrowcancelingedit="GridView1_RowCancelingEdit" 
                onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                onselectedindexchanged="GridView1_SelectedIndexChanged" AllowPaging="True" 
                onpageindexchanging="GridView1_PageIndexChanging">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Order_ID" HeaderText="Order ID" ReadOnly="True" 
                        SortExpression="Order_ID" />
                    <asp:BoundField DataField="Order_Date" HeaderText="Order Date" ReadOnly="True" 
                        SortExpression="Order_Date" />
                    <asp:BoundField DataField="User_ID" HeaderText="User ID" ReadOnly="True" 
                        SortExpression="User_ID" />
                    <asp:BoundField DataField="Total_Amount" HeaderText="Total Amount" 
                        ReadOnly="True" SortExpression="Total_Amount" />
                    <asp:BoundField DataField="Shopping_Address" HeaderText="Shopping Address" 
                        ReadOnly="True" SortExpression="Shopping_Address" />
                    <asp:BoundField DataField="Order_Status" HeaderText="Order Status" 
                        SortExpression="Order_Status" />
                    <asp:BoundField DataField="Shopping_Details" HeaderText="Order Details" 
                        ReadOnly="True" SortExpression="Shopping_Details" />
                    <asp:BoundField DataField="Total_Item" HeaderText="Total Item" ReadOnly="True" 
                        SortExpression="Total_Item" />
                </Columns>
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
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

