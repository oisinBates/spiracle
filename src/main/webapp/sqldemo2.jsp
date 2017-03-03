<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.waratek.spiracle.sql.util.Constants" %>
<%@page import="java.util.Collections"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
  <head>
      <link rel="stylesheet" type="text/css" href="css/onepagedemo.css">

      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css"
            href="css/bootstrap-theme.min.css">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <title>Waratek Demo</title>
  </head>

  <body>
        <div class="container">

              <div class="panel panel-info" style="margin-top: 360px;">
                <div class="panel-heading">SQLi Demo</div>
                <div class="panel-body">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Request</th>
                                <th>SQL Statement</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                              <tr>
                                  <td><a href="Get_int_no_quote?id=1">Get_int_no_quote?id=1</a></td>
                                  <td><code>"SELECT * FROM users WHERE id = " + id;</code></td>
                              </tr>
                        </tbody>
                    </table>
                </div>
              </div>

              <%-- XSS demo  --%>
              <%
                  List<String> attrList = new ArrayList<String>();
                  Enumeration<String> attrs = request.getParameterNames();
                  for (String str : Collections.list(attrs)) {
                      String buf = (String) request.getParameter(str);
                      if (buf != null) {
                          attrList.add(buf);
                      }
                  }
                  pageContext.setAttribute("attrList", attrList);
              %>
              <div class="panel panel-info">
                  <div class="panel-heading">
                      XSS Demo (Reflected Parameters)
                  </div>
                  <div class="panel-body">
                      <table class="table">
                          <%-- <thead>
                              <tr>
                                  <th>Payload</th>
                              </tr>
                          </thead> --%>
                          <tbody>
                              <c:forEach var="attr" items="${attrList}" varStatus="status">
                                  <tr>
                                      <td>${attr}</td>
                                  </tr>
                              </c:forEach>
                          </tbody>
                      </table>
                  </div>
              </div>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
