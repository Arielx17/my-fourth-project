﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="M_Login.aspx.cs" Inherits="Retro_.ASPX.M_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="../CSS/Public.css" type="text/css" />
    <div style="height: 850px; width: 100%; overflow: hidden">
        <img src="../PIC/Login/BG_4.jpg" class="background" />
    </div>
    <div class="container">
        <div class="Pic_Side"></div>

        <div class="clear"></div>

        <div style="margin-left: -60px">
            <p class="Name">Retro</p>
            <%--控制两个输入框--%>
            <div style="display: flex; flex-direction: column;">
                <input runat="server" type="text" name="UserName" placeholder="请输入用户名" class="inputbox" id="UserName"/>
                <div style="height: 30px;"></div>
                <input runat="server" type="password" name="UserPwd" placeholder="请输入密码" class="inputbox" id="UserPwd"/>
            </div>

            <div class="Forget">忘记密码</div>

            <%--记住我+第三方登录--%>
            <div style="position: relative; top: 30px;">
                <asp:CheckBox ID="check" runat="server" class="Remenber" />
                <p style="color: black; font-size: 18px; position: relative; z-index: 4; left: 705px; top: -510px; font-weight: 400;">记住我</p>
                <%--第三方登录</div>--%>
                <div class="OtherLogin">
                    <div>微信</div>
                    <div>微博</div>
                    <div>Apple</div>
                </div>
            </div>
            <%--登录注册--%>
            <div style="display: flex; flex-direction: row;">

                <asp:Button ID="Log" runat="server" Text="登入" CssClass="btn_Log" OnClick="Log_Click" />
                <div style="width: 40px"></div>
                <button class="btn_Log">注册</button>
            </div>
        </div>

    </div>


    <style>
        .background {
            width: 100%;
            height: 100%;
            filter: blur(10px);
            z-index: 1;
            /*-webkit-filter: blur(10px);*/ /* chrome, opera */
            /*-moz-filter: blur(10px);*/
        }

        .container {
            height: 680px;
            width: 1200px;
            background-color: ghostwhite;
            z-index: 2;
            position: absolute;
            top: 50px;
            left: 400px;
            border-radius: 5px;
            box-shadow: 5px 5px rgba(191, 191, 191, 0.5);
            overflow: hidden;
        }

        .Pic_Side {
            height: 680px;
            width: 350px;
            background: url("../PIC/Login/BG_2.jpeg");
            z-index: 3;
            float: left;
        }

        .Name {
            font-family: "Glow Sans SC";
            font-size: 100px;
            position: absolute;
            z-index: 4;
            float: left;
            top: 20px;
            left: 670px;
            color: #995DFF;
        }

        .inputbox {
            width: 400px;
            height: 50px;
            border-radius: 5px;
            box-shadow: 2px 2px rgba(191, 191, 191, 0.5);
            position: relative;
            top: -500px;
            left: 650px;
            color: rgba(0,0,0,0.75);
            font-size: 20px;
            border: solid 2px gray;
        }

        .Remenber {
            zoom: 150%;
            position: relative;
            top: -320px;
            left: 450px;
        }

        .Forget {
            position: relative;
            top: -485px;
            left: 980px;
            font-size: 16px;
            color: gray;
        }

        .OtherLogin {
            display: flex;
            flex-direction: row;
            width: auto;
            position: relative;
            top: -530px;
            left: 900px;
            font-size: 18px;
        }

        .btn_Log {
            position: relative;
            top: -450px;
            left: 650px;
            width: 180px;
            height: 45px;
            background-color: rgb(98,0,238,0.5);
            color: rgb(255,255,255,0.75);
            font-family: "Global Serif";
            font-size: 18px;
            border: none;
            border-radius: 5px;
            box-shadow: 3px 6px 6px rgb(98,0,238,0.1);
        }
    </style>

</asp:Content>
