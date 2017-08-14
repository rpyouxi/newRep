<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="/Housing/common/uploadify3.2.1/uploadify.css">
<script type="text/javascript" src="/Housing/common/uploadify3.2.1/jquery.uploadify.js"></script>
</head>
    <script type="text/javascript">
    $(document).ready(function () {
        $("#uploadify").uploadify({
            'swf':'/Housing/common/uploadify3.2.1/uploadify.swf',
            'uploader': '/Housing/common/uploadify3.2.1/uploadify.swf', //uploadify.swf文件的路径
            'script': 'UploadHandler.ashx', //处理文件上传的后台脚本的路径
            'cancelImg': '/Housing/common/uploadify3.2.1/cancel.png',
            'folder': '123', //上传文件夹的路径
            'queueID': 'fileQueue', //页面中，你想要用来作为文件队列的元素的id
            'auto': false, //当文件被添加到队列时，自动上传
            'multi': true, //设置为true将允许多文件上传
            'fileExt': '*.jpg;*.gif;*.png', //允许上传的文件后缀
            'fileDesc': 'Web Image Files (.JPG, .GIF, .PNG)', //在浏览窗口底部的文件类型下拉菜单中显示的文本
            'sizeLimit': 102400,  //上传文件的大小限制，单位为字节 100k
            'onCancel': function (event, ID, fileObj, data) { //当从上传队列每移除一个文件时触发一次
                alert('The upload of ' + fileObj.name + ' has been canceled!');
            },
            'onComplete': function (event, ID, fileObj, response, data) { //每完成一次文件上传时触发一次
                alert('There are ' + data.fileCount + ' files remaining in the queue.');
            },
            'onAllComplete': function (event, data) { //当上传队列中的所有文件都完成上传时触发
                alert(data.filesUploaded + ' files uploaded successfully!');
            }
        });
    });
    </script>
    <body>
   <form id="form1" runat="server">
    <div>

    </div>
    </form>

    <div id="fileQueue"></div>
    <input type="file" name="uploadify" id="uploadify" />
    <p>
        <a href="javascript:$('#uploadify').uploadifyUpload()">上传1</a>| 
        <a href="javascript:$('#uploadify').uploadifyClearQueue()">取消上传</a>
    </p>
</body>
</html>