<%@ page language="java" contentType="text/html; charset=US-ASCII"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/JavaScript">
	
</script>

</head>



<style>
.ui-menu {
	width: 180px;
}
</style>


<body>
	<!-- Builds Auth switches  -->
	<s:iterator value="groups">
		<s:if test="%{groupName.contains('Administrators')}">
			<s:set var="isAdmin" value="%{'true'}" />
		</s:if>
		<s:elseif test="%{groupName.contains('Tutors')}">
			<s:set var="isTutor" value="%{'true'}" />
		</s:elseif>
		<s:elseif test="%{groupName.contains('Users')}">
			<s:set var="isUser" value="%{'true'}" />
		</s:elseif>
		<s:elseif test="%{groupName.contains('Students')}">
			<s:set var="isStudent" value="%{'true'}" />
		</s:elseif>
	</s:iterator>

	<div style="position: relative; left: 0px; top: 0px; z-index: 10">
		<ul id="verticalMenu">
			<li onclick="window.location='coursesLink';">Courses</li>
			<li class="ui-state-disabled">Classes</li>
			<li onclick="window.location='tableLink';">Students</li>
			<li>-</li>
			<li onclick="window.location='welcomeLink';">Activities</li>
			<li onclick="window.location='calendarLink';">Agenda</li>
			<li>-</li>
			<s:if test="%{#isAdmin}">
				<li onclick="window.location='usersLink';">Users Management</li>
				<li onclick="window.location='filemanagerLink';">Docs Management</li>
			</s:if>
			<li>-</li>
			<li onclick="window.location='Logout.action';">Logout</li>
		</ul>
	</div>
	<script type="text/javascript">
		$(document).ready(function() {
			$("#verticalMenu").menu()
		});
	</script>
</body>
</html>