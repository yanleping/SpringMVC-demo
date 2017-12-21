<html>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"  %>
<head>
    <link href="css/index.css" rel="stylesheet" type="text/css" />
    <script>
        $(document).ready(function(){
            test();
        });
        function test(){
            /*ajax请求，并将数据显示在页面中*/
            $.ajax({
                type: "post",
                url: "/index",
                data:{
                },
                dataType:"index",//返回的是纯文本的json字符串
                success: function(result){
                    var resultObj = eval("("+result+")");//将json串按匹配规则转换成对象
                    if(resultObj.resCode == 0){
                        var dateStr = "";
                        $.each(resultObj.data, function() {
                            dateStr += "<tr><td>"  + this.id;
                            dateStr += "</td><td>" + this.name;//拼字符串，将对应的值显示在对应的列上
                        });
                        $("#data").append(dateStr);
                    }
                }
            });
        }
    </script>
</head>
<body>
<div id="body1">
    <h1 id="head1">语义相似度计算系统</h1>
    <div>
        <ul id="nav">
            <li><a href="http://www.divcss5.com/">词 语</a></li>
            <li><a href="http://www.divcss5.com/html/">短 语</a></li>
            <li><a href="http://www.divcss5.com/rumen/">句 子</a></li>
            <li><a href="http://www.divcss5.com/css-tool/">情感分析</a></li>
        </ul>
    </div>

    <table id="data">
        <tr>
            <th>Id</th>
            <th>name</th>
        </tr>
    </table>

    <a href="/jsp/login.jsp">跳转到登陆页面</a>
</div>

</body>
</html>
