<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoughtSingle_1.aspx.cs" Inherits="Retro_.ASPX.BoughtSingle_1" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="../CSS/Bought.css" type="text/css" />
    <link rel="stylesheet" href="../CSS/Public.css" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="Container">
            <%--歌单缩略图、详情、可交互按钮等--%>
            <div>
                <img src="../PIC/BoughtSingle/Album_TumbNail_1.png" class="Album_ThumbNail" />
                <div style="height: 50px"></div>
                <p class="ListName">
                     已购歌单
                </p>
                <%--按钮组--%>
                <div class="ActBtn_Group">
                    <button type="button" id="PlayAll"></button>
                    <button type="button" id="Love"></button>
                </div>
                <div class="ListIntro">
                    这里是所有已经购买的单曲哦
                </div>
            </div>

            <%--切换+搜索--%>
            <div class="Changing_Group">
                <input type="text" placeholder="要搜索什么歌曲呢？" class="Search" />
            </div>
            <div class="clear"></div>
            <div class="Type">

                <button id="Lp">黑胶</button>
                <button id="HQ">HQ</button>
            </div>

            <%--表格--%>
            <table style="width: 70%;" id="Songlist">
                <tr>
                    <td>&nbsp;</td>
                    <td>歌名</td>
                    <td>歌手</td>
                    <td>时长</td>
                    <td>专辑</td>
                    <td>&nbsp;</td>
                </tr>

                <tr>
                    <td>1</td>
                    <td>莫扎特：C大调奏鸣曲K.545</td>
                    <td>Amadeus Mozart</td>
                    <td>02:19</td>
                    <td>Mozart Classic</td>
                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button class="Btn_love" >
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>



                <tr>
                    <td>2</td>
                    <td>Blinding Lights</td>
                    <td>The Weeknd</td>
                    <td>03:20</td>
                    <td>Blinding Lights </td>
                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>

                <tr>
                    <td>3</td>
                    <td>Milonga for Three</td>
                    <td>Astor Piazzolla</td>
                    <td>06:22</td>
                    <td>The Lausanne Concert</td>

                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>

                <tr>
                    <td>4</td>
                    <td>Happy Together</td>
                    <td>Turtles</td>
                    <td>02:52</td>
                    <td>Happy Together</td>

                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>

                <tr>
                    <td>5</td>
                    <td>Yo soy Espanol!</td>
                    <td>The United States Coast Guard Band</td>
                    <td>02:36</td>
                    <td>Heritage of the March</td>

                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>



            </table>
        </div>
    </form>
</body>
</html>
