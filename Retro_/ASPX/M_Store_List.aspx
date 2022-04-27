<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="M_Store_List.aspx.cs" Inherits="Retro_.ASPX.M_Store_List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/Public.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/Store.css" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <div style="overflow-y:hidden;">

        <!--侧边list-->
            <div class="SideList">
                <ul id="Sidebar_ul">
                    <li></li>
                    <li style="opacity:0.5;">
                      <a href="M_Store_List.aspx"><img src="../PIC/ElectricAlbum.png" /></a>
                        电子专辑
                    </li>
                    <li>
                     <a href="M_Store_List_STLP.aspx"><img src="../PIC/RealAlbum.png" /></a>
                        实体黑胶
                    </li>
                    <li>
                      <img src="../PIC/Player.png" />
                        播放设备
                    </li>
                 <li></li>
                </ul>
            </div>

        <div style="clear: both;"></div>

    <!--商品列表-->
    <%--一个li一个商品--%>
    <%--第一行--%>
        <ul class="Store-list">
            <asp:DataList ID="G_list" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" OnItemCommand="Goods_ItemCommand">
                <ItemTemplate>
                    <div style="margin-top:150px;margin-left:50px;">
                        <%--商品--%>
                            <li style="margin-top: -12px;">
                                <a href="#"><img src=<%# Eval("GPhoto4") %> class="cover_img" /></a>

                                <div style="margin-top: -250px; margin-left: 0px;">
                                    <h1><%# Eval("GName") %></h1>
                                    <h2><%# Eval("GSinger") %></h2>
                                    <img src="../PIC/Price.png" class="icon_Price" />
                                    <h3><%# "￥"+Eval("GPrice") %></h3>
                                    <img src="../PIC/ResourceType.png" class="icon_Type" />
                                    <h4><%# Eval("GType") %></h4>

                                <%--点赞、加入购物车、购买图标组--%>
                                    <div class="icon_Group">
                                        <ul style="position:absolute;">
                                            <li>
                                                <img src="../PIC/Heart_1_G.png" style="margin-top: -18px;margin-left:30px; " />
                                            </li>
                                            <li>
                                                <asp:ImageButton ID="buy" runat="server" style="margin-left:5px;" src="../PIC/Buy.png" CommandName="buy"/>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </li>
                        </div>
                    </ItemTemplate>
            </asp:DataList>
        </ul>
   <a href="javascript:scroll(0,0)"><img src="../PIC/BackToTop.png" class="btn_BackToTop"/></a>
     </div>
</asp:Content>
