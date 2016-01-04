<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Tutorial: Dojo Config!</title>
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
    		async:true
    	};
    </script>
    <!-- 加载 Dojo -->
    <script type="text/javascript" src="/dojo/dojo/dojo/dojo.js"></script>
    <!-- 
    <script src="/dojo/dojo/dojo/dojo.js"
        data-dojo-config="has:{'dojo-firebug': true}, parseOnLoad: false, foo: 'bar', async: 1">
	</script> 
	-->
    <script type="text/javascript">
    /*
     * 加载dojo相关模块，并进行回调
     */
    require([
        	'dijit/registry','dojo/parser','dojo/json','dojo/_base/config','dijit/Dialog','dojo/domReady!'    
    	],function(registry,parser,JSON,config){
    	parser.parse();
    	var dialog = registry.byId("dialog");
    	dialog.set("content","<pre>"+JSON.stringify(config,null,'\t')+"</pre>");
    	dialog.show();
    });
    </script>
</head>
<body>
    <div id="dialog" data-dojo-type="dijit/Dialog" data-dojo-props="title:'dojoConfig /dojo/_base/config'"></div>
</body>
</html>