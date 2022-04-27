<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="M_GoodsDetail.aspx.cs" Inherits="Retro_.ASPX.GoodsDetail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/public.css" />

    <script>
       function bigpic(i) {
           if (i == "1") {
               document.getElementById("Big_Picimg").src ="<% = Goods.GPhoto1 %>";
           }
           else if (i == "2") {
               document.getElementById("Big_Picimg").src ="<% = Goods.GPhoto2 %>";
           }
            else if (i == "3") {
               document.getElementById("Big_Picimg").src ="<% = Goods.GPhoto3 %>";
           }
   }
   </script> 
    <%--缩略图--%>
    <div id="ThumbNails_List" class="Thumnails">
        <ul style="display: flex; flex-direction: column; width: 100px;">
            <li>
                <img src=<% = Goods.GPhoto1 %> style="height:91px;width:83px" onclick="bigpic(1)" />
            </li>
            <li>
                <img src=<% = Goods.GPhoto2 %> style="height:91px;width:83px"  onclick="bigpic(2)"/>
            </li>
            <li>
                <img src=<% = Goods.GPhoto3 %> style="height:91px;width:83px" onclick="bigpic(3)" />

            </li>
        </ul>

    </div>

    <%--大图--%>
    <div id="Big_Pic">
        <img src=<% = Goods.GPhoto1 %>  id="Big_Picimg" />
    </div>
   
    

    <%--简介--%>
    <div class="Alumb_Intro">
        <% = Goods.GIntro %>
    </div>

    <%--标题Alumb_Title--%>
    <h1 id="Alumb_Title"><% = Goods.GName %></h1>

    <div class="Alumb_Type">
        <img src="../PIC/Goods/Icon_Online.png" />
        <div style="width: 30px"></div>
        <img src="../PIC/Goods/Icon_Real.png" />
    </div>

    <%--价格--%>
    <div class="Alumb_Price">
        <img src="../PIC/Goods/Money.png" style="height: 100%" />
        <p><% = Goods.GPrice %></p>
    </div>

    <%--数量--%>
    <div class="Account">
        <ul>
            <li>
                <img src="../PIC/Goods/Add.png" /></li>
            <li style="color: #995DFF; font-size: 46px; margin-left: 35%;" id="Album_Price">100</li>
            <li style="margin-left: 35%; margin-top: -2px;">
                <img src="../PIC/Goods/subtraction.png" /></li>
        </ul>
    </div>

    <%--操作--%>



    <%--歌曲列表--%>
    <div class="Song_List">
        <p>歌曲列表</p>   
        <ol>
            <asp:DataList ID="dl_AlbumSong" runat="server">
                <ItemTemplate>
                    <li><%# Eval("SName") %></li>
                </ItemTemplate>
            </asp:DataList>
        </ol>
    </div>
   
    <ul class="Act_Group">
        <li>
            <img src="../PIC/Goods/LoveAlumb.png" /></li>
        <li>
            <img src="../PIC/Goods/AddCar.png" /></li>
        <li>
            <img src="../PIC/Goods/BuyIt.png" /></li>

    </ul>



    <style>
        .Thumnails ul li {
            margin-top: 20px;
        }

        .Thumnails {
            width: 100px;
        }

        #Big_Pic {
            margin-top: -330px;
            margin-left: 150px;
            width: 700px;
        }

        .Alumb_Intro {
            color: white;
            font-size: 25px;
            margin-left: 150px;
            margin-top: 0px;
            width: 450px;
        }

        h1 {
            color: white;
            font-size: 96px;
            position: absolute;
            top: 0;
            left: 1035px;
        }

        .Alumb_Type {
            display: flex;
            flex-direction: row;
            width: 400px;
            position: absolute;
            top: 140px;
            left: 1050px;
        }

        .Alumb_Price {
            display: flex;
            flex-direction: row;
            position: absolute;
            top: 220px;
            left: 1050px;
            color: #995DFF;
            font-size: 68px;
            vertical-align: middle;
            align-items: center;
        }

            .Alumb_Price p {
                margin-left: 20px;
            }

        .Account {
            width: 800px;
            border-top: solid 1px #DEDEDE;
            border-bottom: solid 1px #DEDEDE;
            position: absolute;
            top: 330px;
            left: 1050px;
            height: 80px;
            display: flex;
            flex-direction: row;
            vertical-align: middle;
            align-items: center;
        }

            .Account ul {
                display: flex;
                width: 100%;
                list-style: none;
                flex-direction: row;
                vertical-align: middle;
                align-items: center;
            }

        .Act_Group {
            display: flex;
            flex-direction: row;
            vertical-align: middle;
            align-items: center;
            list-style: none;
            position: absolute;
            top: 450px;
            left: 900px;
        }

            .Act_Group li {
                width: auto;
                margin-left: 20%;
            }

        .Song_List {
            position: absolute;
            top: 580px;
            left: 1050px;
        }

            .Song_List p {
                color: #995DFF;
                font-size: 35px;
            }

            .Song_List ol {
                padding: 0;
                margin-left: 27px;
                margin-top: 20px;
                font-size: 25px;
                color: rgb(225,225,225,0.75);
                text-align:left;
            }
    </style>
</asp:Content>
