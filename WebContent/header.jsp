<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE h2 PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>
<body>
	<div class="ui-widget-content" style="position:relative;">
		<h2>
		<span>
			<a href="home.action">class<span class="light">Action</span></a>
		</span>
		<span>
			<a href="profileLink"> <s:property value="user.userFirstname"></s:property>
				<s:property value="user.userLastname"></s:property>
			</a>
		</span>
		</h2>
	</div>
</body>
</html>