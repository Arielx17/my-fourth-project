<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoughtSingel_2.aspx.cs" Inherits="Retro_.ASPX.BoughtSingel_2" %>

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
                <img src="../PIC/BoughtSingle/Album_TumbNail_2.png" class="Album_ThumbNail" />
                <div style="height: 50px"></div>
                <p class="ListName">
                    八八八号大兄弟
                </p>
                <%--按钮组--%>
                <div class="ActBtn_Group">
                    <button type="button" id="PlayAll"></button>
                    <button type="button" id="Love"></button>
                </div>
                <div class="ListIntro">
                    八の専属歌謡曲ですね！
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
                    <td>Lemon</td>
                    <td>米津玄师</td>
                    <td>04:15</td>
                    <td>Lemon</td>
                    <td>
                        <button>
                            <img src="../PIC/BoughtSingle/Play.png" /></button>
                        <button>
                            <img src="../PIC/BoughtSingle/Add.png" /></button>
                        <button class="Btn_love">
                            <img src="../PIC/BoughtSingle/Love.png" /></button>
                    </td>
                </tr>



                <tr>
                    <td>2</td>
                    <td>Uchiagehanabi</td>
                    <td>米津玄师</td>
                    <td>04:54</td>
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
                    <td>Loser</td>
                    <td>米津玄师</td>
                    <td>04:06</td>
                    <td>Uchiagehanabi</td>

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
                    <td>灰色と青</td>
                    <td>米津玄师</td>
                    <td>05:37</td>
                    <td>BOOTLEG</td>

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
                    <td>Kanden</td>
                    <td>米津玄师</td>
                    <td>04:25</td>
                    <td>STRAY SHEEP</td>

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
                    <td>6</td>
                    <td>ピースサイン</td>
                    <td>米津玄师</td>
                    <td>04:0 5</td>
                    <td>ピースサイン</td>

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
