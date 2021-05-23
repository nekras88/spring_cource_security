<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>

<html>
<body>

<h3>Information for all employees</h3>
<br><br>
<security:authorize access="hasRole('HR')">
<input type="button" value="salary"
onclick="window.location.href = 'hr_info'">
Only for HR Staff
</security:authorize>
<br><br>

<security:authorize access="hasRole('MANAGER')">
<h3>Information for all employees</h3>
<input type="button" value="Performance"
       onclick="window.location.href = 'manager_info'">
Only for Manager
</security:authorize>

</body>
</html>