<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MainForm.aspx.cs" Inherits="Project_Shopping.MainForm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 90%;
        }
        .style2
        {
            width: 162px;
        }
        .style3
        {
            width: 100%;
        }
        .style4
        {
            width: 568px;
            text-align: center;
        }
        .style5
        {
            text-align: center;
        }
        .style7
        {
            text-align: center;
            color: #000000;
            font-weight: bold;
        }
        .style8
        {
            text-decoration: underline;
            width: 259px;
        }
        .style9
        {
            text-align: center;
            font-weight: bold;
        }
        .style10
        {
            width: 259px;
        }
        .style6
        {
            height: 20px;
        }
        .style11
        {
            width: 47%;
        }
        .style12
        {
            width: 99px;
        }
        .style13
        {
            width: 44px;
        }
        .style14
        {
            width: 51px;
        }
    </style>
</head>
<body background="Images/WoodBackground.jpg" style="background-color: #0066CC">
    <form id="form1" runat="server">
    <div>
    
        <table align="center" class="style1">
            <tr>
                <td class="style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                        ImageUrl="~/Images/Amazon-logo.jpg" />
                </td>
                <td class="style4">
                    <table cellpadding="0" cellspacing="0" class="style11" rules="cols" 
                        
                        style="font-family: 'Adobe Garamond Pro'; font-size: medium; font-weight: lighter; font-style: inherit; font-variant: normal; text-transform: capitalize; color: #000000; text-decoration: blink">
                        <tr>
                            <td class="style12">
                                <asp:ImageButton ID="ImageButton6" runat="server" 
                                    ImageUrl="~/Images/Button/Untitled.jpg" Width="102px" />
                            </td>
                            <td class="style13">
                                <asp:ImageButton ID="ImageButton7" runat="server" Height="27px" 
                                    ImageUrl="~/Images/Button/Untitled1.jpg" />
                            </td>
                            <td class="style14">
                                <asp:ImageButton ID="ImageButton8" runat="server" Height="27px" 
                                    ImageUrl="~/Images/Button/Untitled2.jpg" Width="61px" />
                            </td>
                            <td style="text-align: left">
                                <asp:ImageButton ID="ImageButton9" runat="server" Height="27px" 
                                    ImageUrl="~/Images/Button/Untitled3.jpg" style="margin-left: 0px" 
                                    Width="123px" />
                            </td>
                        </tr>
                    </table>
                </td>
                <td class="style10">
                    <table class="style3">
                        <tr>
                            <td class="style7">
                                USERNAME</td>
                            <td>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style7">
                                PASSWORD</td>
                            <td>
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style5">
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style5" colspan="2">
                                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
                                    ImageUrl="~/Images/LoginButtonPlain.jpg" Width="100px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td class="style8" style="text-align: center">
                    <strong>NEW MEMBER ??</strong></td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    <asp:TextBox ID="TextBox3" runat="server" Height="34px" 
                        style="text-align: center" Width="410px" 
                        ontextchanged="TextBox3_TextChanged">Search your reruired item</asp:TextBox>
                    <asp:ImageButton ID="ImageButton5" runat="server" Height="21px" 
                        ImageUrl="~/Images/search-button-png-i6.jpg" style="text-align: justify" 
                        ToolTip="Search" Width="23px" />
                </td>
                <td style="text-align: center" class="style10">
                    <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" 
                        ImageUrl="~/Images/SignupButton.jpg" Width="110px" 
                        onclick="ImageButton4_Click" />
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td style="text-align: center" class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Image ID="Image1" runat="server" 
                        ImageUrl="~/Images/HRS1795_Home_Side-2_Puma-50-Off-EOSS_25-June_H1236.jpg" />
                </td>
                <td class="style4">
                    <asp:Image ID="Image2" runat="server" Height="332px" 
                        ImageUrl="~/Images/HSL1771_Home_Slider-1_Men-shoes-EOSS_24-June_H1223.jpg" 
                        style="margin-left: 3px" Width="700px" />
                </td>
                <td style="text-align: left" class="style10">
                    <asp:Image ID="Image3" runat="server" Height="300px" 
                        ImageUrl="~/Images/HSL1785_Home_Slider-3_Casio-EOSS_24-June_H1227.jpg" 
                        Width="254px" />
                </td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td style="text-align: center" class="style10">
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style2">
                    &nbsp;</td>
                <td class="style4">
                    &nbsp;</td>
                <td style="text-align: center" class="style10">
                    &nbsp;</td>
            </tr>
            </table>
    
    </div>
    <table align="center" class="style1">
        <tr>
            <td>
                <h2>
                    About Us</h2>
                <p>
                    <em>Our vision, at Amazon, is to be Earth&#39;s most customer centric company; to build 
                    a place where people can come to find and discover virtually anything they want 
                    to buy online. With Amazon.in, we endeavour to build that same destination in 
                    India by giving customers more of what they want – vast selection, low prices, 
                    fast and reliable delivery, and a trusted and convenient experience – and 
                    provide sellers a world-class e-commerce platform.
                </em>
                </p>
                <p>
                    <em>Customers can now
                    </em>
                    <a href="http://www.amazon.in/gp/help/customer/display.html/ref=gw_swc?ie=UTF8&amp;nodeId=201083470&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>shop with confidence</em></a><em> from any seller on Amazon.in and benefit from a safe 
                    and secure online ordering experience, convenient electronic payments and cash 
                    on delivery, easy returns, Amazon’s customer service with 24x7 support, and a 
                    globally recognised and comprehensive purchase protection provided by Amazon’s 
                    A-to-Z guarantee.
                </em>
                </p>
                <p>
                    <em>We launched with
                    </em>
                    <a href="http://www.amazon.in/Books/b/ref=gw_sbooks?ie=UTF8&amp;node=976389031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Books</em></a><em> and
                    </em>
                    <a href="http://www.amazon.in/movies-tv-shows/b/ref=gw_smovies?ie=UTF8&amp;node=976416031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Movies &amp; TV</em></a><em> and have expanded our offerings to include the Kindle family of
                    </em>
                    <a href="http://www.amazon.in/gp/product/B007HCFU90/ref=gw_sereaders?pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>E-Readers</em></a><em>,
                    </em>
                    <a href="http://www.amazon.in/gp/product/B0085Z96S4/ref=gw_stablets?pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Tablets</em></a><em> and
                    </em>
                    <a href="http://www.amazon.in/ebooks-kindle/b/ref=gw_sebooks?ie=UTF8&amp;node=1634753031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>eBooks</em></a><em>;
                    </em>
                    <a href="http://www.amazon.in/mobiles-accessories/b/ref=gw_smobile?ie=UTF8&amp;node=1389401031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Mobiles &amp; Accessories</em></a><em>;
                    </em>
                    <a href="http://www.amazon.in/camera-photography/b/ref=gw_scamera?ie=UTF8&amp;node=1388977031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Cameras &amp; Photography</em></a><em> and
                    </em>
                    <a href="http://www.amazon.in/mp3-media-players/b/ref=gw_smedplayer?ie=UTF8&amp;node=1389433031&amp;pf_rd_m=A1VBAL9TL5WCBF&amp;pf_rd_s=center-8&amp;pf_rd_r=0RYX3N2BMVTE5S9CJ32P&amp;pf_rd_t=101&amp;pf_rd_p=410222827&amp;pf_rd_i=1320006031">
                    <em>Portable Media Players</em></a><em>. </em>It is still “Day 1” and we will relentlessly focus 
                    on expanding selection and raising the bar for customer experience in India.
                </p>
                <p>
                    <strong><em>Our Sponcers</em></strong></p>
            </td>
        </tr>
        <tr>
            <td>
                <table class="style3">
                    <tr>
                        <td>
                            <asp:Image ID="Image4" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/1-1adidas.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image5" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/10-1fcuk.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image6" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/11-1proline_color_2.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image7" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/12-1allensolly_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image8" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/13-1biba_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image9" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/14-1W_color.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td class="style6">
                            <asp:Image ID="Image10" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/15-1Elle.jpg" />
                        </td>
                        <td class="style6">
                            <asp:Image ID="Image11" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/16-1VeroModa.jpg" />
                        </td>
                        <td class="style6">
                            <asp:Image ID="Image12" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/17-1Hidesign_color.jpg" />
                        </td>
                        <td class="style6">
                            <asp:Image ID="Image13" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/18-1casio_color.jpg" />
                        </td>
                        <td class="style6">
                            <asp:Image ID="Image14" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/19-1phosphorous_color.jpg" />
                        </td>
                        <td class="style6">
                            <asp:Image ID="Image15" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/2-1nike_color.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image16" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/20-1bombay-dyeing_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image17" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/22-1RayBan.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image18" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/23-1levis_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image19" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/3-1puma_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image20" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/4-1woodland_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image21" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/5-1fila_color.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image23" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/9-1wrangler.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image24" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/8-1lee.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image25" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/7-1u-s-polo_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image22" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/6-1ucb_color.jpg" />
                        </td>
                        <td>
                            <asp:Image ID="Image26" runat="server" Height="50px" 
                                ImageUrl="~/Images/brands/gas.jpg" />
                        </td>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
    </form>
    <p style="text-align: center">
        &nbsp;</p>
</body>
</html>
