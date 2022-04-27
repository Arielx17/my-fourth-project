<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/empty.Master" AutoEventWireup="true" CodeBehind="AddOrder.aspx.cs" Inherits="Retro_.ASPX.AddOrder" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" type="text/css" href="../CSS/Public.css" />
    <%--确认订单--%>
    <img src="../PIC/AddSure/Sure.png" style="float: left; margin-left: 40%; margin-top: 60px;" />
    <div class="clear"></div>
    <%--<input id="myCar" list="OrderGoods" />--%>
    <asp:DataList ID="test_u" runat="server">
        <ItemTemplate>
            <%--专辑图片--%>
            <div style="float: left; margin-left: 80px; margin-top: 150px;">
                <%--<img class="cover_img" src=<%# Eval("GPhoto4") %> />--%>
                <img src='<%# Eval("GPhoto1") %>' style="width: 194px; height: 212px; background: rgba(0, 0, 0, 0); opacity: 1;" />
            </div>
            <%--订单详情--%>
            <div class="inf_detail">
                <div style="margin-top: 150px; margin-left: 20px">
                    <p style="width: 700px; text-overflow: ellipsis; overflow: hidden; white-space: nowrap"><%# Eval("GName") %></p>
                    <p><%# Eval("GType") %></p>
                </div>
                <div style="margin-top: 150px;">
                    <p style="width: 100px; margin-left: 150px"><%# "￥"+Eval("GPrice") %></p>
                </div>
                <div style="margin-top: 150px; margin-left: 150px">
                    x1
                </div>
                <div style="margin-top: 150px; margin-left: 150px;">
                    <p><%# "￥"+Eval("GPrice") %></p>
                </div>
            </div>

            <%--分割线--%>
            <div style="height: 1px; border-bottom: solid 1px #DEDEDE; margin-top: 180px; margin-left: 80px; width: 100%;"></div>

            <p style="color: #995DFF; font-size: 30px; margin: 30px 0 0 80px;">支付方式</p>

            <%--支付方式--%>
            <div class="Payway">
                <div>
                    <img src="../PIC/AddSure/zfb.png" />
                </div>
                <div>
                    <img src="../PIC/AddSure/Wechat.png" />
                </div>
                <div>
                    <img src="../PIC/AddSure/Up.png" />
                </div>
            </div>

            <div class="Total_Price">
                <a style="margin-left: 350px; width: 200px; ">商品总价</a>

                <a style="font-size: 40px; margin-left: 350px;"><%# "￥"+Eval("GPrice") %></a>
            </div>
        </ItemTemplate>
    </asp:DataList>


    <style>
        .Address_Inf {
            color: #995DFF;
            font-size: 30px;
            float: left;
            margin-left: 40px;
            margin-top: -180px;
            display: flex;
            flex-direction: row;
        }

        .Address_details {
            color: #995DFF;
            font-size: 30px;
            float: left;
            margin-left: 40px;
            margin-top: -120px;
        }

        .inf_detail {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            font-size: 45px;
            color: #995DFF;
            width: 65%;
        }

        .Payway {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 200px;
            vertical-align: middle;
            align-items: center;
            margin-top: 20px;
            margin-left: 80px;
        }

        .Total_Price {
            float: right;
            color: #995DFF;
            font-size: 30px;
            margin-top: -120px;
            margin-right: 450px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 450px;
            text-overflow: ellipsis;
            white-space: nowrap;
        }
    </style>
</asp:Content>
