﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderFinishi_Real.aspx.cs" Inherits="Retro_.ASPX.OrderFinishi_Real" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>

 <body style="background-color:black;">
<!--背景Banner-->
<div class="Banner"></div>
  
    <div style="margin-left:136px">
<ul>
    <li class="title_box title_word">
        感谢惠顾
    </li>
    <li class="title_box title_word" style="margin-top:128px;">
     订单整装待发，愿与您早日见面
    </li>
</ul>

<!--返回按钮组-->
<ul class="btn_group">
    <li>
        回到首页
    </li>
    <li>
        继续逛逛
    </li>
    <li>
        查看订单
    </li>
</ul>
    </div>
<!--倒计时返回首页-->
<div class="time">
    <span id="ShowTime"></span>秒后将自动跳回首页
</div>

    <style>
    * {
        margin: 0;
    }


    ul {
        display: flex;
        flex-direction: row;
        justify-content: space-between;
    }

    .btn_group li
    {
        width:128px;
        position: relative;
        margin-left: 20px;      
        text-align: center;
        line-height: 37px;
        color: rgb(255,255,255,0.75);
        font-size: 16px;
        background-image:url("../PIC/OrderFinish/ChoseBG.png");
    }
    .time
    {
        width: auto;
        height:auto;
        color: white;
        font-size: small;
        position: fixed;
        z-index: 2;
        bottom: 0;
    }
    .btn_group
    {
        color: white;
        width: auto;
        height: 39px;
        position: fixed;
        top:529px;
        z-index: 2;
        list-style: none;
    }
   
    .Banner {
        height:100%;
        width:100%;
        background-size:cover;
       /* vertical-align: center;*/
        background-image:url(../PIC/OrderFinish/RealFinish.png);
        position: fixed;
        z-index: 1;
        border: solid 2px black;
        color: azure;
    }

    .title_word {
        font-size: 70px;
        color: #995DFF;
        letter-spacing: 9px;
        line-height: 24px;
        list-style: none;
    }

    .title_box {
        position: fixed;
        z-index: 2;
        height: 24px;
        top: 257px;

    }
</style>
</body>
    <script type="text/javascript">
        function coutndown() {

            var second = document.getElementById("ShowTime");
            var sec = 6;

            var sa = setInterval(function () {

                --sec;
                //alert(second);
                second.innerHTML = sec;
                if (sec == 0) {
                    clearInterval(sa);
                    alert("BYE");
                }

            }, 1000);

            // setInterval(--second,1000);


        }

        window.onload = function () {
            coutndown();
        }


    </script>

</html>
