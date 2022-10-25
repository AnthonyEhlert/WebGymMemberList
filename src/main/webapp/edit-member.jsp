<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Info Edit</title>
    <script type = "text/javascript">
    function validate() {
        
        if(document.editMemberForm.firstName.value == "") {
            alert ("Please provide a first name");
            document.editMemberForm.firstName.focus();
            return false;
        }if(document.editMemberForm.lastName.value == "") {
            alert ("Please provide a last name");
            document.editMemberForm.lastName.focus();
            return false;
        }if(document.editMemberForm.age.value == "" || document.editMemberForm.age.value < 1 || document.editMemberForm.age.value > 199) {
            alert ("Please provide a valid age");
            document.editMemberForm.age.focus();
            return false;
        }if(document.editMemberForm.waiverSigned.value.length < 1) {
        	alert ("Please select a waiver status");
        	return false;
        }
        return ( true );
    }
    </script>
</head>
<body>
    <h1>Please Edit Any Necessary Info, then Click "Save Member Info</h1>
    <form action = "editMemberServlet" name = "editMemberForm" method = "post" onsubmit = "return(validate())">
        First Name: <input type = "text" name = "firstName" value = "${memberToEdit.firstName}"><br><br>
        Last Name: <input type = "text" name = "lastName" value = "${memberToEdit.lastName}"><br><br>
        Age: <input type = "number" name = "age" value = "${memberToEdit.age}"><br>
        <h2> Current Waiver Status: ${memberToEdit.waiverSigned}</h2>
        Waiver Signed? True or False?:<br>
        <input type = "radio" id = "true" name = "waiverSigned" value = "True">
        <label for = "true">True</label><br><br>
        <input type = "radio" id = "false" name = "waiverSigned" value = "False">
        <label for = "false">False</label><br><br>
        <input type = "hidden" name = "id" value="${memberToEdit.id}">
        <input type = "submit" value="Save Member Info">
    </form>
</body>
</html>