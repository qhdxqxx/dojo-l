<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>dojo/_base_kernel</title>
    <script type="text/javascript">
    	/*
    	 * 配置dojo参数
    	 */
    	dojoConfig = {
    		has:{
    			//特性检验
    			"dojo-firebug":true
    		},
    		parseOnLoad:false,
    		foo:"bar",
    		async:true,
    		isDebug:true
    	};
    </script>
    <!-- 加载 Dojo -->
    <script type="text/javascript" src="/dojo/dojo/dojo/dojo.js"></script>
    <script type="text/javascript">
    /*
     * 加载dojo相关模块，并进行回调
     */
    require([
        	'dojo/_base/kernel'
    	],function(kernel){
    	kernel.deprecated("dijit.layout.SplitContainer","Use dijit.layout.BorderContainer instead","2.0");
    });
    </script>
</head>
<body>
</body>
</html>