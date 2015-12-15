<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/redmond/jquery-ui.css" rel="stylesheet" type="text/css" />
<link href="css/redmond/theme.css" rel="stylesheet" type="text/css" />
<link href="css/jTable/jtable_basic.css" rel="stylesheet" type="text/css" />
<link href="css/style.css" rel="stylesheet" type="text/css" />

<!-- jQuery script file. -->
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/jquery-ui.min.js" type="text/javascript"></script>


<title><tiles:insertAttribute name="title" ignore="true" /></title>

<script type="text/javascript">

	function stickyFooter() {
		var bodyHeight = $("body").height();
		var vwptHeight = $(window).height();
		if (vwptHeight > bodyHeight) {
			$("footer#footer").css("position", "absolute").css("bottom", 0);
		} 
		else {
			$("footer#footer").css("position", "").css("bottom", "");
		}
	}
	$(document).ready(function() {
		stickyFooter();
	});
	$(window).resize(function() {
		stickyFooter();
	});
	$(window).scroll(function() {
		stickyFooter();
	});
</script>
<style>
body {
    background-image: url("images/fresh_snow.png");
   	margin: 0;
    padding: 0;
}
    
header, footer {
        float:left;
		padding:1px 0;
		min-width:100%;
}

</style>
</head>
<body>
<header><tiles:insertAttribute  name="header" /></header>
		<table width="100%" align="center">
			<tr valign="top">
				<td style="width:192px;"><tiles:insertAttribute name="menu" /></td>
				<td align="center"><tiles:insertAttribute name="body" /></td>
			</tr>
		</table>
		
<footer class="ui-widget-content" id="footer"><center>
		&copy;2015 - Alberto Mognoni for   
		<a href="http://www.5020.it" target="_new">5020-cinquantaventi</a></center>
</footer>
</body>
</html>