<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" AutoEventWireup="true" CodeFile="CustomerLogin.aspx.cs" Inherits="Default6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style5
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
    }
    .style6
    {
        width: 496px;
        text-align: center;
    }
    .style7
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        font-size: x-large;
    }
    .style8
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 209px;
    }
    .style9
    {
        width: 496px;
        text-align: center;
        height: 209px;
    }
    .style10
    {
        height: 209px;
    }
    .style11
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 232px;
    }
    .style12
    {
        width: 496px;
        text-align: center;
        height: 232px;
    }
    .style13
    {
        height: 232px;
    }
    .style14
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 161px;
    }
    .style15
    {
        width: 496px;
        text-align: center;
        height: 161px;
    }
    .style17
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 240px;
    }
    .style18
    {
        width: 496px;
        text-align: center;
        height: 240px;
    }
    .style19
    {
        height: 240px;
    }
    .style20
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 13px;
        font-size: x-large;
    }
    .style23
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 18px;
    }
    .style24
    {
        width: 496px;
        text-align: center;
        height: 18px;
    }
    .style25
    {
        height: 18px;
    }
    .style27
    {
        width: 496px;
        text-align: center;
        }
    .style29
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        height: 5px;
        font-size: x-large;
    }
    .style30
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
        font-size: x-large;
        height: 18px;
    }
    .style32
    {
        height: 161px;
    }
    .style33
    {
        text-align: center;
        font-weight: 700;
        font-style: italic;
        color: #000066;
    }
        .style43
        {
            width: 305px;
        }
        .style42
        {
            width: 1038px;
        }
        .style35
        {
            margin-left: 120px;
            width: 305px;
        }
        .style40
        {
            text-align: center;
            font-weight: 700;
            width: 1038px;
        }
        .style36
        {
            font-weight: 700;
            width: 305px;
        }
        .style41
        {
            width: 1038px;
            text-align: right;
        }
        .style37
        {
            text-align: center;
            font-weight: 700;
            font-style: italic;
            color: #000066;
            width: 305px;
        }
        .style46
        {
            width: 399px;
            height: 188px;
        }
        .style48
        {
            height: 188px;
        }
        .style47
        {
            width: 934px;
            text-align: center;
            height: 161px;
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="style1" 
    
        style="height: 1030px; width: 67%; clip: rect(inherit, inherit, inherit, inherit); cursor: se-resize;" 
        align="center">
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
            <marquee style="width: 810px">
             
                <table class="style44">
                    <tr>
                        <td>
                            <asp:Image ID="Image42" runat="server" Height="199px" 
                                ImageUrl="~/Images/Menu/n1.jpeg" Width="142px" />
                        </td>
                        <td>
                            <asp:Image ID="Image39" runat="server" Height="198px" 
                                ImageUrl="~/Images/banner/321156978198_1.jpg" Width="163px" />
                        </td>
                        <td>
                            <asp:Image ID="Image43" runat="server" Height="192px" 
                                ImageUrl="~/Images/Menu/r2.jpeg" Width="164px" />
                        </td>
                        <td>
                            <asp:Image ID="Image41" runat="server" 
                                ImageUrl="~/Images/banner/mxKfepjwZChYo3ocAbwGObw.jpg" Width="166px" 
                                Height="187px" />
                        </td>
                        <td>
                            <asp:Image ID="Image37" runat="server" 
                                ImageUrl="~/Images/Menu/r.jpeg" Width="164px" Height="208px" />
                        </td>
                        <td>
                            <asp:Image ID="Image44" runat="server" Height="204px" 
                                ImageUrl="~/Images/category/51TowEmqf4L.jpg" Width="161px" />
                        </td>
                    </tr>
                </table></marquee>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="3">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46" style="text-align: center">
                <asp:ImageButton ID="ImageButton23" runat="server" Height="234px" 
                    ImageUrl="~/Images/Menu/adidas.jpeg" Width="229px" 
                    onclick="ImageButton23_Click" />
            </td>
            <td class="style42" style="text-align: center">
                <asp:ImageButton ID="ImageButton17" runat="server" Height="209px" 
                    ImageUrl="~/Images/Menu/shoe.jpeg" Width="409px" 
                    onclick="ImageButton17_Click" />
            </td>
            <td class="style48" style="text-align: center">
                <asp:ImageButton ID="ImageButton24" runat="server" Height="237px" 
                    ImageUrl="~/Images/Menu/nike.jpeg" Width="201px" 
                    onclick="ImageButton24_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="style36">
                <asp:ImageButton ID="ImageButton27" runat="server" Height="231px" 
                    ImageUrl="~/Images/Menu/kurti (2).jpeg" Width="230px" 
                    onclick="ImageButton27_Click" />
            </td>
            <td style="text-align: center" class="style41">
                <asp:ImageButton ID="ImageButton16" runat="server" Height="224px" 
                    ImageUrl="~/Images/Menu/ree.jpeg" Width="410px" 
                    onclick="ImageButton16_Click" />
            </td>
            <td style="text-align: center" class="style13">
                <asp:ImageButton ID="ImageButton26" runat="server" Height="229px" 
                    ImageUrl="~/Images/Menu/kurti.jpeg" Width="201px" 
                    onclick="ImageButton26_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="style20" GADGETS : MOBILE</td rowspan="2">
                <asp:ImageButton ID="ImageButton20" runat="server" Height="191px" 
                    ImageUrl="~/Images/Menu/canon.jpeg" Width="227px" 
                    onclick="ImageButton20_Click" />
        </tr>
        <tr>
            <td class="style47">
                <asp:ImageButton ID="ImageButton25" runat="server" Height="220px" 
                    ImageUrl="~/Images/Menu/s2.jpeg" Width="416px" 
                    onclick="ImageButton25_Click" />
            </td>
            <td style="text-align: center" class="style32">
                <asp:ImageButton ID="ImageButton19" runat="server" Height="188px" 
                    ImageUrl="~/Images/Menu/n1.jpeg" Width="224px" 
                    onclick="ImageButton19_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: center" class="style17">
                <asp:ImageButton ID="ImageButton22" runat="server" Height="257px" 
                    ImageUrl="~/Images/Menu/lumia.jpeg" Width="195px" 
                    onclick="ImageButton22_Click" />
            </td>
            <td class="style18">
                <asp:ImageButton ID="ImageButton14" runat="server" Height="224px" 
                ImageUrl="~/Images/category/LED-TV-Sony-KDL-52NX800.jpg" Width="296px" 
                    onclick="ImageButton14_Click" />
            </td>
            <td style="text-align: center" class="style19">
                <asp:ImageButton ID="ImageButton21" runat="server" Height="263px" 
                    ImageUrl="~/Images/Menu/galaxymega.jpeg" Width="162px" 
                    onclick="ImageButton21_Click" />
            </td>
        </tr>
    </table>
    <marquee style="height: 18px; width: 874px; color: #FF0000; font-size: large;">
    
        <table>
            <tr>
                <td>SELL !!!</td>
                <td>SELL !!!</td>
                <td>SELL !!!</td>
                <td>SELL !!!</td>

<td></td>
                <td></td>
             </tr>
        </table></marquee>
</asp:Content>

