<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="BoughtSingel_MyLove.aspx.cs" Inherits="Retro_.ASPX.BoughtSingel" %>

<script src="https://cdn.bootcdn.net/ajax/libs/jquery/3.6.0/jquery.js"></script>

<script type="text/javascript">
    $(document).ready(function () {



    });

</script>

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

                <img src="../PIC/BoughtSingle/Album_ThumbNails.png" class="Album_ThumbNail" />
                <div style="height: 50px"></div>
                <p class="ListName">
                    我的收藏
                </p>
                <%--按钮组--%>
                <div class="ActBtn_Group">
                    <button type="button" id="PlayAll"></button>
                    <button type="button" id="Love"></button>
                </div>
                <div class="ListIntro">
                    这里是所有收藏的单曲哦
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
            <asp:GridView ID="gv_songlist" runat="server" Style="width: 70%;" CssClass="Songlist" AutoGenerateColumns="False" BorderStyle="None" CellPadding="0" GridLines="None" AlternatingRowStyle-BorderStyle="None" HorizontalAlign="Left">
                <Columns>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <%#Container.DataItemIndex+1%>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="SName" HeaderText="歌名" HeaderStyle-HorizontalAlign="Left"></asp:BoundField>
                    <asp:BoundField DataField="GSinger" HeaderText="歌手" HeaderStyle-HorizontalAlign="Left"></asp:BoundField>
                    <asp:BoundField DataField="SLength" HeaderText="时长" HeaderStyle-HorizontalAlign="Left"></asp:BoundField>
                    <asp:BoundField DataField="GName" HeaderText="专辑" HeaderStyle-HorizontalAlign="Left"></asp:BoundField>
                    <asp:TemplateField>
                        <ItemTemplate>
                            <button>
                                <img src="../PIC/BoughtSingle/Play.png" /></button>
                            <button>
                                <img src="../PIC/BoughtSingle/Add.png" /></button>
                            <button>
                                <img src="../PIC/BoughtSingle/Love_1.png" /></button>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <%--<table style="width: 70%;" id="Songlist">
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
                        <button class="Btn_love">
                            <img src="../PIC/BoughtSingle/Love_1.png" /></button>
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



            </table>--%>
        </div>
    </form>
</body>
</html>
