<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery实现的很炫很酷的弹出层效果-聚合分享效果演示www.juheweb.com</title>
<link rel="stylesheet" href="css/common.css" type="text/css" />
<style type="text/css">
.zxx_list_title{background:#eeeeee; border:1px solid #cccccc; padding:1em;}
.zxx_list_content{padding:1em;}
#tinybox{position:absolute; display:none; padding:10px; background:#ffffff url(image/preload.gif) no-repeat 50% 50%; border:10px solid #e3e3e3; z-index:2000;}
#tinymask{position:absolute; display:none; top:0; left:0; height:100%; width:100%; background:#000000; z-index:1500;}
#tinycontent{background:#ffffff; font-size:1.1em;}
</style>
<script type="text/javascript" src="js/tinybox.js"></script>
</head>

<body>
	<div class="zxx_out_box">
    	<div class="zxx_in_box">
        	
            <h3 class="zxx_title">jQuery实现很炫很酷的弹出层效果</h3>
            <div class="tr mb10"><a href="http://www.juheweb.com/js/tc/82.html" class="zxx_btn"><span>实例下载.zip 12.5K</span></a></div>
            <div class="zxx_main_con">
                <div class="zxx_list_title"><b>图片</b><a class="ml20" href="#zhangxinxu" id="click_test2">效果预览</a></div>
              <div class="zxx_list_content">用酷酷的浮动层显示图片</div>
                <div class="zxx_list_title"><b>显示flash</b><a class="ml20" href="#zhangxinxu" id="click_test3">效果预览</a></div>
                <div class="zxx_list_content">用酷酷的浮动层显示flash</div>
                <div class="zxx_list_title"><b>自动隐藏</b><a class="ml20" href="#zhangxinxu" id="click_test4">效果预览</a></div>
              <div class="zxx_list_content">层显示一段时间后自动隐藏，当作操作提示用是个很不错的选择</div>
</div>
            <div class="zxx_footer">
	<script type="text/javascript">
        T$('click_test1').onclick = function(){TINY.box.show('blank-for-test.html',1,300,150,1)}
        var content2 = "<img width='640' height='466' src='http://image.zhangxinxu.com/image/study/s/mm10.jpg' />";
        T$('click_test2').onclick = function(){TINY.box.show(content2,0,0,0,1)}
        var content3 = "<object classid='clsid:D27CDB6E-AE6D-11cf-96B8-444553540000' width='550' height='400'><param name='movie' value='flash/as3_clock_2.swf' /><param name='quality' value='high' /><param name='wmode' value='opaque' /><embed height='400' width='550'  src='flash/as3_clock_2.swf' type='application/x-shockwave-flash'></embed></object>";
        T$('click_test3').onclick = function(){TINY.box.show(content3,0,0,0,1)}
        var content4 = "该浮动层将在3秒钟内消失。";
        T$('click_test4').onclick = function(){TINY.box.show(content4,0,0,0,0,3)}
    </script>
           <!--代码结束，以下不做为效果代码 -->
	       <div style="clear:both; text-align:center; margin:20px 0;"><script type="text/javascript">    var cpro_id = "u1706615";</script><script src="http://cpro.baidustatic.com/cpro/ui/c.js" type="text/javascript"></script></div>
<div class="d_foot_o" style="clear:both; text-align:center; margin:20px 0;">标题：<a title="" href="http://www.juheweb.com/js/tc/82.html">jQuery实现很炫很酷的弹出层效果</a>&nbsp;&nbsp;&nbsp;栏目分类：<a class="lm" title="弹出提示" target="_blank" href="http://www.juheweb.com/js/tc/">弹出提示</a>&nbsp;&nbsp;&nbsp;素材整理：<a href="http://www.juheweb.com">聚合分享</a>&nbsp;&nbsp;&nbsp;下载：<a title="立即下载" href="http://www.juheweb.com/js/tc/82.html">立即下载</a></div>            	
            </div>
        </div>
    </div>

    
</body>
</html>
