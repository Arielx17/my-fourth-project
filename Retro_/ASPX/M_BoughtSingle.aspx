<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/SideBar.Master" AutoEventWireup="true" CodeBehind="M_BoughtSingle.aspx.cs" Inherits="Retro_.ASPX.BoughtSingle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="../CSS/Bought.css" type="text/css" />
    <link rel="stylesheet" href="../CSS/Public.css" type="text/css" />

    <div class="Container">
        <%--歌单缩略图、详情、可交互按钮等--%>
        <div>

            <img src="../PIC/BoughtSingle/Album_ThumbNails.png" class="Album_ThumbNail" />
            <div style="height: 50px"></div>
            <p class="ListName">
                乱七八糟的歌单
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
                <td>BabyShark</td>
                <td>Pinkfong</td>
                <td>03:10</td>
                <td>BabyShark</td>
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
                <td>2</td>
                <td>Lemon</td>
                <td>米津玄师</td>
                <td>03:10</td>
                <td>Lemon</td>
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
                <td>Good Love Your Love</td>
                <td>Deep Squad</td>
                <td>03:47</td>
                <td>Good Love Your Love</td>

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
                <td>Yesterday</td>
                <td>小野丽莎</td>
                <td>03:09</td>
                <td>Pretty World</td>

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
                <td>Good Love Your Love</td>
                <td>Deep Squad</td>
                <td>03:47</td>
                <td>Good Love Your Love</td>

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


</asp:Content>
