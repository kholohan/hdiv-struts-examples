<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html:html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Test html:text Tag</title>
</head>
<body>
    <div align="center">
      <h1>Test struts-html text</h1>
    </div>
	<html:form action="/html-text-submit">
      <table border="0" width="100%">
		<tr>
			<td nowrap align="right" align="right">Test field</td>
			<td align="left"><html:text size="80" maxlength="80" property="stringProperty"/></td>
		</tr>
        <tr>
          <td>&#160;</td>
          <td align="right">
            <html:submit>Save</html:submit>
          </td>
          <td align="left">
            <html:reset>Reset</html:reset>
            <html:cancel>Cancel</html:cancel>
          </td>
          <td>&#160;</td>
        </tr>
	  </table>
	</html:form>

</body>
</html:html>