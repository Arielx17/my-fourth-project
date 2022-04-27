<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Retro_.ASPX.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script>
        window.onload = function () {
            //首先要获取元素
            var banner = document.getElementsByClassName("banner");
            var img = document.getElementById("bannerimg");
            var num = 0;
            var timer = null;
            //图片位置
            var arrUrl = ["../PIC/Main/Banner_4.png", "../PIC/Main/Banner_5.png"];
            setTimeout(autoPlay(), 0);//延迟1秒执行自动切换



            ////鼠标移入清除定时器，鼠标移出恢复

            //img.onmouseover = function () {

            //    clearInterval(timer);

            //};

            //img.onmouseout = autoPlay;



            //图片切换函数

            function changeImg() {

                img.src = arrUrl[num];//改变图片src位置
            }

            //设置定时器

            function autoPlay() {

                timer = setInterval(function () {

                    num++;

                    num %= arrUrl.length;

                    changeImg();

                }, 4000);

            }
        }

    </script>

     <div class="division">
        <div class="banner">
            <img id="bannerimg" src="../PIC/Main/Banner_4.png" style="height:1080px;width:100%" />
        </div>
        <asp:Image ID="divisionimg" runat="server" ImageUrl="~/PIC/Main/分割.png" Width="100%" Height="1325px" />

        <div class="new">
            <img src="../PIC/Main/新专速递.png"/>
            <p>新专速递</p>
        </div>
    </div>
   
    <div class="fourE">
        <asp:DataList ID="dl_new" runat="server" RepeatColumns="4" RepeatLayout="Flow">
            <ItemTemplate>
                 <a href="M_AlumbIntro.aspx?GId=<%# Eval("GId") %>"><div class="fourEdiv">
                     <img class="E" src=<%# Eval("GPhoto5") %> />
                    <img class="love" src="../PIC/Main/Favorite.png" />
                    <img class="shop" src="../PIC/Main/AddCar.png" />
                </div>
                     </a>
            </ItemTemplate>
        </asp:DataList>
       
    </div>

    <div class="division">
        <div class="banner">
            <asp:Image ID="Image1" runat="server" Height="1080px" Width="100%" ImageUrl="~/PIC/Main/Week_Big.png" />
        </div>
        <asp:Image ID="Image2" runat="server" ImageUrl="~/PIC/Main/分割.png" Width="100%" Height="1325px" />
        <div class="week">
            <img src="../PIC/Main/周榜单.png"/>
            <p>周榜单</p>
        </div>
    </div>
   
    <div class="fourE">
        <asp:DataList ID="dl_week" runat="server" RepeatColumns="4" RepeatLayout="Flow">
            <ItemTemplate>
                <div class="fourEdiv">
                    <img class="E" src=<%# Eval("GPhoto5") %> />
                    <img class="love" src="../PIC/Main/Favorite.png" />
                    <img class="shop" src="../PIC/Main/AddCar.png" />
                </div>
            </ItemTemplate>
        </asp:DataList>
        <%--<div><img class="E" src="../PIC/Main/Week1.png" />
            <img class="love" src="../PIC/Main/Favorite.png" />
            <img class="shop" src="../PIC/Main/AddCar.png" />
        </div>
        <div><img class="E" src="../PIC/Main/Week2.png" />
            <img class="love" src="../PIC/Main/Favorite.png" />
            <img class="shop" src="../PIC/Main/AddCar.png" />
        </div>
        <div><img class="E" src="../PIC/Main/Week3.png" />
            <img class="love" src="../PIC/Main/Favorite.png" />
            <img class="shop" src="../PIC/Main/AddCar.png" />
        </div>--%>
        <%--<div>
            <a href="Album_Intro.aspx"><img class="E" src="../PIC/Main/Week4.png" /></a>
            <img class="love" src="../PIC/Main/Favorite.png" />
            <img class="shop" src="../PIC/Main/AddCar.png" />
        </div>--%>
    </div>

    <div class="article">
        <img src="../PIC/Main/文章推荐.png" />
        <p>文章推荐</p>
    </div>
    <div class="articlelist">
        <img src="../PIC/Main/A1.png" />
    </div>
</asp:Content>
