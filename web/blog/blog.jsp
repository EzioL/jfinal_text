<html>
<head>
    <title>Title</title>
</head>
<body>
<h1 >hello</h1 >
<h1 id="hello">hello</h1 >
<%--<form action="/blog/save" method="post">--%>
<form  method="post">
    <input name="blog.title" type="text">
    <input name="blog.content" type="text">
    <input value="提交" type="submit" onclick="return submit2()">
</form>

<script>
//    window.onload = function () {
//        $.ajax({
//            type: "POST",
//            url: "/blog/find",
//            data: {},
//            success: function (data) {
//                console.log(data);
//                $("h1#hello").html(data.title)
//            }
//        })
//    };

    function submit2() {
        $.ajax({
            type: "POST",
            url: "/blog/find",
            data: {
                "name": $("h1#hello").val()
            },
            success: function (data) {
                console.log(data);
                $("h1#hello").html(data)
            }
        });
        return false;
    }
</script>
</body>
<script src="../js/jquery.js"></script>
</html>
