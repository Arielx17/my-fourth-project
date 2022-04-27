<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="M_AlumbIntro.aspx.cs" Inherits="Retro_.ASPX.M_AlumbIntro" %>

<asp:Content ID="Content2" ContentPlaceHolderID="head_script" runat="server">
    <script type="text/javascript">
        <%--function LOrB(obj) {
            var id = obj.getAttribute("id");
            var btn_lorb = document.getElementById(id);
            var src = btn_lorb.getAttribute("src");
            if (src == "../PIC/Buy.png") {
                window.location.href = "AddOrder.aspx?"
            }
            else {
                window.location.href = "M_AlumbIntro.aspx?GId=" + <% = Goods.GId %> + "&SId=" + id;
            }
        }--%>
        function PlayAll() {

            document.getElementById("PlayAll").style.background = "rgb(98,0,238,0.5)";
            document.getElementById("AddToList").style.background = "rgb(255,255,255,0.5)";
            document.getElementById("CollectAlbum").style.background = "rgb(255,255,255,0.5)";

        }
        function AddToList() {

            document.getElementById("PlayAll").style.background = "rgb(255,255,255,0.5)";
            document.getElementById("AddToList").style.background = "rgb(98,0,238,0.5)";
            document.getElementById("CollectAlbum").style.background = "rgb(255,255,255,0.5)";

        }
        function CollectAlbum() {

            document.getElementById("PlayAll").style.background = "rgb(255,255,255,0.5)";
            document.getElementById("AddToList").style.background = "rgb(255,255,255,0.5)";
            document.getElementById("CollectAlbum").style.background = "rgb(98,0,238,0.5)";

        }
<%--代替 js--%>
        var cart = document.getElementById("cart"); //购物车按钮的id
        var popout = document.getElementById("popout"); //弹窗图片的id
        cart.onclick = function () {
            popout.style.display = "block";
            setTimeout(function () {
                popout.style.display = "none";
            }, 1000);
        }
<%--代替 js 换了位置--%>
</script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/Public.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/Album.css" />

    <%--代替 弹窗 换照片--%>
    <img id="popout" src="../PIC/Album_Intro/popout.png" style="position: fixed; display: none; z-index: 10000" />
    <%--代替--%>

    <%--空间预留分割条--%>
    <div style="height: 35px;"></div>
    <%--封面缩略图--%>
    <img src="<% = Goods.GPhoto1 %>" class="Album_CoverThumbnail" />

    <%--专辑标题--%>
    <p class="P_Title">《<% = Goods.GName %>》</p>
    <%--专辑类型--%>
    <div style="margin-left: 20px; position: absolute; left: 1000px; top: 300px;">
        <img class="icon_type" src="../PIC/Album_Intro/商城.png" />
        <p class="P_Type">线上音源/黑胶在贩</p>
    </div>
    <div class="clear"></div>

    <%--专辑介绍--%>
    <div class="P_AlbumIntro">
        <p>
            坂本龙一作曲的电影原声精选集《Ryuichi Sakamoto - Music For Film》，收录了自1983年来其创作的经典电影原声。
        </p>
        <div style="height: 50px"></div>
        <p>
            包含大热单曲《Merry Christmas Mr. Lawrence 》与电影末代皇帝中的《Rain》
        </p>
    </div>

    <%--控制底部播放列表、歌手信息部分--%>

    <div class="Buttom_Summary">
        <p class="P_Title_small"><% = Goods.GName %></p>
        <img src="../PIC/Album_Intro/Icon_Singer.png" class="icon_Singer" />
        <p id="SingerName" class="SingerName"><% = Goods.GSinger %></p>
        <%--可操作ICON组--%>
        <ul id="Actional_Group">
            <li id="PlayAll" onclick="PlayAll()">
                <img src="../PIC/Album_Intro/Icon_Play.png" />
                <p>播放全部</p>
            </li>

            <li id="AddToList" onclick="AddToList()">
                <img src="../PIC/Album_Intro/Icon_Add.png" />
                <p>加入歌单</p>
            </li>
            <li id="CollectAlbum" onclick="CollectAlbum()">
                <img src="../PIC/Album_Intro/Icon_Love.png" />
                <p>收藏专辑</p>
            </li>
        </ul>
        <%--播放列表--%>
        <asp:GridView ID="gv_songlist" runat="server" OnRowCommand="Songlist_RowCommand" CssClass="PlayList" Style="width: 130%; color: white; margin-top: 80px; border-spacing: 0px; border: none" AutoGenerateColumns="False" BorderStyle="None" CellPadding="0" GridLines="None" AlternatingRowStyle-BorderStyle="None">
            <Columns>
                <asp:TemplateField InsertVisible="False">
                    <ItemTemplate>
                        <%#Container.DataItemIndex+1%>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SName" HeaderText="歌名"></asp:BoundField>
                <asp:TemplateField HeaderText="歌手">
                    <ItemTemplate>
                        <% = Goods.GSinger %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="SLength" HeaderText="时长"></asp:BoundField>
                <asp:TemplateField>
                    <ItemTemplate>
                        <%--根据获取到的SListen（是否已购买），若已购买，则放置播放icon，若未购买则放置购买icon--%>
                        <asp:ImageButton ID="img_LOrB" runat="server" ImageUrl='<%# IsListen(Eval("SListen").ToString()) %>' CommandName="LOrB" CommandArgument='<%# Eval("SId") %>' />
                        <%--<img src="<%# IsListen(Eval("SListen").ToString()) %>" onclick="LOrB(this)" id=<%# Eval("SId") %> class="btn_lorb" />--%>
                        <%--<asp:Image ID="Image1" runat="server" src="<%# IsListen(Eval("SListen").ToString()) %>"/>--%>
                        <img src="../PIC/Album_Intro/List-Add.png" />
                        <img src="../PIC/Album_Intro/List-Love.png" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <%--作者简介--%>
        <%--第一行--%>
        <div>
            <img src="<% = Goods.GPhoto2 %>" class="Singer_ThumbNail" />
            <div class="Singer_intro">
                <div style="left: 50px; top: 30px; position: relative; width: 90%;">
                    <p>
                        坂本龙一，1952年1月17日出生于日本东京都中野区，日本作曲家、音乐制作人、歌手、演员、钢琴家，东京艺术大学音乐系作曲专业学士、音响研究科硕士。
                    1983年，主演战争剧情电影《圣诞快乐，劳伦斯先生》，并为其配乐，该配乐获得了第37届英国电影学院奖-最佳配乐奖
                    </p>
                </div>

            </div>
        </div>
        <div class="clear"></div>

        <%--第二行--%>
        <div>

            <div class="Singer_intro" style="left: -20px;">
                <div style="left: 50px; top: 30px; position: relative; width: 90%;">
                    <p>
                        坂本龙一，1952年1月17日出生于日本东京都中野区，日本作曲家、音乐制作人、歌手、演员、钢琴家，东京艺术大学音乐系作曲专业学士、音响研究科硕士。
                    1983年，主演战争剧情电影《圣诞快乐，劳伦斯先生》，并为其配乐，该配乐获得了第37届英国电影学院奖-最佳配乐奖
                    </p>
                </div>
                <img src="<% = Goods.GPhoto3 %>" class="Singer_ThumbNail2" />
            </div>
            <%--  最底下待售专辑--%>

            <div>
                <img src="../PIC/Album_Intro/Album_ThumbNali.png" class="Album_CoverThumbnail_bottom" />
            </div>

            <%--暂时代替的按钮--%>
            <div style="cursor: pointer;">

                <img id="cart" style="width: auto; height: auto; font-size: 39px; margin-top: -550px; float: left; margin-left: 1000px;" src="../PIC/Album_Intro/AddCar_.png" />
            </div>
            <div class="clear"></div>
            <div>

                <%--这里要补跳转的地址--%>   <a href="#">
                    <img id="Buyit" style="width: auto; height: auto; font-size: 39px; margin-top: -350px; float: left; margin-left: 1000px;" src="../PIC/Album_Intro/BuyIt_.png" /></a>
            </div>
            <div class="clear"></div>
            <%--分割下面 以上是代替--%>

            <div class="Icon_price">
                <img src="../PIC/Album_Intro/Icon_Price.png" />
                <p><% = Goods.GPrice %></p>

                <img src="../PIC/Album_Intro/Icon_Post.png" style="position: relative; left: 200px" />
                <p><% = Goods.GPost %></p>
            </div>
        </div>
        <div class="clear"></div>
    </div>

</asp:Content>
