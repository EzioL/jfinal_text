<html>
<head>
    <title>$Title$</title>
</head>
<body>
<form action="/blog/save" method="post">
    <input name="blog.title" type="text">
    <input name="blog.content" type="text">
    <input value="提交" type="submit">
</form>
<script>
    window.onload = function () {
        $.ajax({
            type: "POST",
            url: "/blog/find",
            data: {},
            success: function (data) {
                console.log(data);
            }
        })
    }
</script>
</body>
<script src="js/jquery.js"></script>
</html>
