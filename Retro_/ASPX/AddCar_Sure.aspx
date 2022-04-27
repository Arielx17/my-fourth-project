<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddCar_Sure.aspx.cs" Inherits="Retro_.ASPX.AddCar_Sure_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>结算</title>
</head>
<body>
    <link rel="stylesheet" type="text/css" href="../CSS/Public.css" />

    <div style="position: absolute; top: 50px; left: 80px">
        <div class="Address">
            <img src="../PIC/AddSure/AddDress.png" />
        </div>

        <img src="../PIC/AddSure/edit.png" style="float: left; margin-left: 720px; margin-top: -170px;" />

        <div class="Address_Inf">
            <a>收件人:</a>
            <a name="addressee">林三三</a>
            <div style="width: 150px"></div>
            <a>手机号:</a>
            <a name="Phone">13333333333</a>
        </div>
        <div class="Address_details">
            <p>详细地址</p>
            <div style="height: 10px"></div>
            <p>中国 广东省 珠海市 xx区 乱力怪神研究专所</p>
            <div class="clear"></div>
        </div>

    </div>

    <%--确认订单--%>
    <img src="../PIC/AddSure/Sure.png" style="float: left; margin-left: 80%; margin-top: 60px;" />
    <div class="clear"></div>

    <%--专辑图片--%>

    <img src="../PIC/AddSure/Cover.png" style="float: left; margin-left: 80px; margin-top: 150px;" />
    <%--订单详情--%>
    <div class="inf_detail">
        <div style="margin-top: 150px; margin-left: 20px">
            <p>MM..Food?</p>
            <p>电子专辑</p>
        </div>
        <div style="margin-top: 150px;">
            ￥50
        </div>
        <div style="margin-top: 150px;">
            x1
        </div>
        <div style="margin-top: 150px;">
            ￥50
        </div>
    </div>

    <%--分割线--%>
    <div style="height: 1px; border-bottom: solid 1px #DEDEDE; margin-top: 180px; margin-left: 80px; width: 90%;"></div>

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
        <a>商品总价</a>
       
        <a style="font-size:40px">￥50</a>
    </div>



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
            margin-right:450px;
              display: flex;
            flex-direction: row;
            justify-content: space-between;
            width:450px;
        }
    </style>
</body>
</html>
