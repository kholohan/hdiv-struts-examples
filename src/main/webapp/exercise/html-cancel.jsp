<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags/struts-bean" prefix="bean" %>
<%@ taglib uri="/tags/struts-html" prefix="html" %>
<%@ taglib uri="/tags/struts-logic" prefix="logic" %>

<html:html>
    <head>
        <title>
            <title>Test struts-html:cancel Tag</title>
        </title>
        <html:base/>
    </head>

    <body bgcolor="white">

    <p><strong>Cancel Not Allowed - Error Message</strong></p>

    <p>
        Pressing the Cancel button should display an error
        message, since Cancellable is not set for this Action
        but an Exception handler has been configured to handle
        the throw exception.
    </p>

    <logic:messagesPresent>
    <p>
        <font color="red"><strong>
            <html:messages id="msg">
                <bean:write name="msg"/>
            </html:messages>
         </strong></font>
    </p>
    </logic:messagesPresent>

    <p>
        <html:form action="/html-cancel-false">
            <html:submit property="submit"/>
            &#160;
            <html:reset/>
            <html:cancel/>
        </html:form>
    </p>

    <hr/>

    <p><strong>Cancel Not Allowed - Exception</strong></p>
    <p>
        Pressing this Cancel button should throw an 
        <code>org.apache.struts.action.InvalidCancelException</code>
        since Cancellable is not set for this Action and no exception
        handler was configured.
    </p>

    <p>
        <html:form action="/html-cancel-exception">
            <html:submit property="submit"/>
            &#160;
            <html:reset/>
            <html:cancel/>
        </html:form>
    </p>

    <hr/>

    <p><strong>Cancel Allowed  (Validate true)</strong></p>
    <p>
        Pressing this Cancel button should return to the Welcome page,
        as Cancellable is set to true for this Action.
    </p>

    <p>
        <html:form action="/html-cancel-true">
            <html:submit property="submit"/>
            &#160;
            <html:reset/>
            <html:cancel/>
        </html:form>
    </p>
    <hr/>

    <p><strong>Cancel Ignored (Validate false)</strong></p>
    <p>
        Pressing this Cancel button should return to the Welcome page,
        as validate is set to false for this Action.
    </p>

    <p>
        <html:form action="/html-cancel-novalidate">
            <html:submit property="submit"/>
            &#160;
            <html:reset/>
            <html:cancel/>
        </html:form>
    </p>

    </body>
</html:html>
