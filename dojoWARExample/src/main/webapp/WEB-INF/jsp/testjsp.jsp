<!DOCTYPE html>
<!--
	Dojo Mobile tutorial | Flickrview | Part I
-->
<html>
<head>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8"/>
	<meta name="viewport" content="width=device-width,initial-scale=1,maximum-scale=1,minimum-scale=1,user-scalable=no"/>
	<meta name="apple-mobile-web-app-capable" content="yes"/>
	<title>	Dojo Mobile tutorial | Flickrview | Part I | Sample1 </title>
	<!-- application stylesheet will go here -->
	<!-- dynamically apply native visual theme according to the browser user agent -->
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/dojo/1.9.1/dojox/mobile/deviceTheme.js"></script>
	<!-- dojo configuration options -->
	<script type="text/javascript">
		dojoConfig = {
			async: true,
			parseOnLoad: false
		};
	</script>
	<!-- dojo bootstrap -->
	<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/dojo/1.9.1/dojo/dojo.js"></script>
	<!-- dojo application code -->
	<script type="text/javascript">
		require([
			"dojox/mobile/parser",
			"dojox/mobile/compat",
			"dojo/domReady!",
			"dojox/mobile/View",
			"dojox/mobile/Heading",
			"dojox/mobile/RoundRectList",
			"dojox/mobile/ListItem",
			"dojox/mobile/Switch"
		], function (parser) {
			// now parse the page for widgets
			parser.parse();
		});
	</script>
</head>
<body style="visibility:hidden;">
	<!-- the view or "page"; select it as the "home" screen -->
	<div id="settings" data-dojo-type="dojox/mobile/View" data-dojo-props="selected:true">
		<!-- a sample heading -->
		<h1 data-dojo-type="dojox/mobile/Heading">"Homepage" View</h1>
		<!-- a rounded rectangle list container -->
		<ul data-dojo-type="dojox/mobile/RoundRectList">
			<!-- list item with an icon containing a switch -->
			<li data-dojo-type="dojox/mobile/ListItem" data-dojo-props='icon:"/images/icon-1.png"'>Airplane Mode
				<!-- the switch -->
				<div data-dojo-type="dojox/mobile/Switch"></div>
			</li>
			<!-- list item with an icon that slides this view away and then loads another page -->
			<li data-dojo-type="dojox/mobile/ListItem" data-dojo-props='icon:"/images/icon-2.png", rightText:"mac"'>Wi-Fi</li>
			<!-- list item with an icon that slides to a view called "general" -->
			<li data-dojo-type="dojox/mobile/ListItem" data-dojo-props='icon:"/images/icon-3.png", rightText:"AcmePhone", moveTo:"general"'>Carrier</li>
		</ul>
	</div>
</body>
</html>