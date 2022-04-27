<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true" CodeBehind="M_Store_Search.aspx.cs" Inherits="Retro_.ASPX.StoreSearch_" %>

<asp:Content ID="body_script" ContentPlaceHolderID="head_script" runat="Server">
    <link rel="stylesheet" type="text/css" href="../CSS/public.css" />
    <link rel="stylesheet" type="text/css" href="../CSS/Store.css" />
    <script type="text/javascript">
        //var searchtag = document.getElementsById("searchtag");
        //if(event.keyCode==13)
        //{

        function search_tag() {
            window.location.href = "M_Store_List.aspx?GName=Radom";
            //window.location.href = "M_Store_List.aspx?GName=" + textContent;
        }
        function test() {
            alert("这是第一种点击方式");
        }
        //    return false; //取消回车默认DefaultButton
        //}
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">





    <!--    banner-->
    <img src="../PIC/Banner_8.png" class="Banner" />
    <!--    欢迎语-->
    <div class="welcom">
        欢迎光临

    </div>
    <div class="buywhat">
        今天想买点什么呢？
    </div>
    <!--    搜索框-->
    <div>
        <%--<h1>搜索</h1>--%>
        <img src="../PIC/Store-Search.png" class="search" />
        <img src="../PIC/Search.png" class="btn_search" style="top: 380px" onclick="test()" />
        <p>大声告诉我你要什么</p>
    </div>
    <!--    热搜-->
    <ul id="Search_ul" style="width: 583px; left: 130px; top: 590px;">
        <li>
            <h5 id="searchtag" onclick="search_tag()">Radom</h5>
        </li>
        <li>
            <h5>一步之遥-LP
            </h5>
        </li>
        <li>
            <h5>MM..Food</h5>
        </li>
        <li>
            <h5>Run With Me</h5>
        </li>
    </ul>

    <!--更多-商城主页-->
    <div>
        <a href="M_Store_List.aspx">
            <img src="../PIC/Down.png" class="more" /></a>
    </div>


</asp:Content>

