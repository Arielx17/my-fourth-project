<%@ Page Title="" Language="C#" MasterPageFile="~/MASTER/HeadAFoot.Master" AutoEventWireup="true"  Inherits="Retro_.ASPX.AddCar_Settle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" type="text/css" href="../CSS/Public.css" />
    <ul class="Item" style="width:90%">
        <li>
            <input type="checkbox" class="Check" id="AllCheck" onclick="quanxuan()" /></li>
        <li style="margin-left: -300px;">全选</li>
        <li>产品</li>
        <li>价格</li>
        <li>数量</li>
        <li>总计</li>

    </ul>

    <ul class="Item_details" style="width:90%">
        <asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                <li>
                    <input type="checkbox" class="Check" name="Check" onclick="fanxuan()" />

                </li>
                <li style="margin-left: -300px;"></li>
 
                <li>￥260</li>
                <li>
                    <div class="count">
                        <div style="margin-top: -10px;">
                            <img src="../PIC/AddCar_Settle/subtraction.png" />
                        </div>
                        <a name="Account">1</a>
                        <div>
                            <img src="../PIC/AddCar_Settle/Add.png" />
                        </div>

                    </div>
                </li>
                <li>￥283</li>  
            </ItemTemplate>       
        </asp:DataList>
    </ul>

    <%--总价--%>
    <div class="Account_Price" style="width:300px">
        <a>商品总价</a>
        <div style="width: 50px;"></div>
        <a>￥283</a>
    </div>

    <%--立即购买--%>

    <img src="../PIC/AddCar_Settle/Buy.png" class="Buyit" />




    <style>
        .Item {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 90%;
            height: 80px;
            border-bottom: solid 1px #DEDEDE;
            border-top: solid 1px #DEDEDE;
            margin-left: 5%;
            position: absolute;
            top: 20px;
            font-size: 30px;
            color: #995DFF;
            list-style: none;
            vertical-align: central;
            text-align: center;
        }

            .Item li {
                margin-top: 20px;
                width: 95%;
            }

        .Check {
            width: 20px;
            height: 20px;
            margin-right: 15px;
            position: relative;
            z-index: 999;
        }

        .Item_details {
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            width: 90%;
            height: auto;
            border-bottom: solid 1px #DEDEDE;
            margin-left: 5%;
            position: absolute;
            top: 100px;
            font-size: 30px;
            color: #995DFF;
            list-style: none;
            vertical-align: central;
            text-align: center;
            align-items: center;
        }

            .Item_details li {
                margin-top: 20px;
                width: 95%;
            }

                .Item_details li:nth-child(3) {
                    margin-left: -200px;
                }

        .mess {
            float: right;
            color: #995DFF;
            font-size: 30px;
            margin-top: -170px;
            margin-left: 380px;
            text-align: left;
            height: 200px;
        }

        .count {
            height: 40px;
            width: 240px;
            border-top: solid 1px #DEDEDE;
            border-bottom: solid 1px #DEDEDE;
            position: relative;
            left: 80px;
            display: flex;
            flex-direction: row;
            justify-content: space-between;
            flex-shrink: 0;
            vertical-align: middle;
            align-items: center;
        }

        .Account_Price {
            color: #995DFF;
            font-size: 30px;
            position: relative;
            top: 400px;
            left: 1590px;
            width: 400px;
            display: flex;
            flex-direction: row;
        }

        .Buyit {
            position: relative;
            top: 600px;
            left: 1500px;
            width: 400px;
            display: flex;
            flex-direction: row;
        }

        
    </style>
    <script type="text/javascript " src="js/jquery-1.7.2.js"></script>

    <script>
        function quanxuan() {
            var arr = document.getElementsByName("Check");
            var all = document.getElementById("AllCheck");
            for (var i = 0; i < arr.length; i++) {
                arr[i].checked = true;
            }


        }
        function fanxuan() {
            var arr = document.getElementsByName("Check");
            var all = document.getElementById("AllCheck");
            for (var i = 0; i < arr.length; i++) {
                arr[i].checked = false;
            }
        }
    </script>
</asp:Content>
