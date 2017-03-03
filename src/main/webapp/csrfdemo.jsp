<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <jsp:include page="header.jsp" >
    <jsp:param name="pageName" value="Overview" />
  </jsp:include>



<div class="container">
    <%
    String username = "guest";
    String comments = (String) request.getParameter("comments");

    if (request.getMethod().equals("POST") && comments != null) {
    		// Strip script tags, because that will make everything alright...
    		comments = comments.replace("<script>", "");
    		comments = comments.replace("</script>", "");
    		// And double quotes, just to make sure
    		comments = comments.replace("\"", "");

    		// ResultSet rs = null;

    		if (username == null) {
    			username = "Guest user";
    		}
    		out.println("<br/><p style=\"color:green\">Thank you for your feedback:</p><br/>");
    		out.println("<br/><center><table border=\"1\" width=\"80%\" class=\"border\">");
    		out.println("<tr><td>" + comments + "</td></tr>");
    		out.println("</table></center><br/>");
    } else {
    	// Display the message form
    %>
    <h3>Contact Us</h3>
    Please send us your feedback: <br/><br/>
    <form method="POST">
    	<input type="hidden" id="user" name="<%=username%>" value=""/>
    	<center>
    	<table>
    	<tr>
    		<td><textarea id="comments" name="comments" cols=80 rows=8></textarea></td>
    	</tr>
    	<tr>
    		<td><input id="submit" type="submit" value="Submit"></input></td>
    	</tr>
    	</table>
    	</center>
    </form>

    <%
    }
    %>

</div>

    <%@ include file="footer.jsp" %>
