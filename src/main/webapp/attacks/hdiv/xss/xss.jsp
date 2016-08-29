<%@ page contentType="text/html; charset=ISO-8859-1" language="java" errorPage="" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>

<html:html xhtml="true">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Simple form using ActionForm</title>
	<html:base/>
	<link rel="stylesheet" type="text/css" href="../../../css/example.css" />
</head>
<body> 
	<html:link action="/secure/attacks"> 
	  <html:img src="../../../images/return.gif" width="24" height="24" alt="Return to examples page" styleClass="icon" />
	</html:link>
	<h1>Simple form using ActionForm</h1>
	<hr noshade="noshade"/>
	
	<p>Enter information into the field below. Your entries will be displayed when you Submit the form.</p>
	<html:errors/>
	
	<html:form action="/secure/processXSS">
	
	<p><b>General Goal(s):</b></p>
	Insert the following string:<b>&lt;script&gt;alert('If you see this you have a potential vulnerability');&lt;/script&gt;</b>	
	<br>
	<p>HDIV will stop the attack due to data integrity.</p>
	<br>
		<p>Enter a message (you may use html tags):<br />
			<html:textarea property="message" cols="40" rows="6" />		
		</p>		
		<p>Enter a message (you may use html tags):<br />
			<html:text property="message2"  size="80" maxlength="80" />		
		</p>
		<hr noshade="noshade" />   
		<p>
		<html:submit>Submit</html:submit>
		</p>
	</html:form>
</body>
</html:html>
