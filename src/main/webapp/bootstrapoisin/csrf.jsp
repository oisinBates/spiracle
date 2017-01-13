<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>XSS</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/sidebar.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>

    <div id="wrapper">
        <div class="overlay"></div>

        <!-- Sidebar -->
        <%@ include file="sidebar.jsp" %>
        <!-- /#sidebar-wrapper -->

        <!-- Page Content -->
        <div id="page-content-wrapper">
            <button type="button" class="hamburger is-closed" data-toggle="offcanvas">
                <span class="hamb-top"></span>
    			      <span class="hamb-middle"></span>
				        <span class="hamb-bottom"></span>
            </button>

            <div class="row">
              <div class="container">
                  <div class="page-header">
                    <h1>Cross-Site Request Forgery(CSRF)</h1>
                  </div>
                  <p>Blurb about these tests</p>
                    <p>###########################THIS PAGE IS A PLACEHOLDER, DUMMY CONTENT FROM XSS TESTS. NEED TO INTEGRATE CSRF CODE</p>
              </div>
            </div>
            <br>

            <div class="row">
              <div class="container">
                <div class="col-md-12">
                  <div class="panel panel-info">
                    <div class="panel-heading">Reflected Parameters</div>
                    <div class="panel-body">
<%-- ############################################add this back in when compiling --%>
                      <%-- <%
                          List<String> attrList = new ArrayList<String>();
                          Enumeration<String> attrs = request.getParameterNames();
                          for (String str : Collections.list(attrs)) {
                              String buf = (String) request.getParameter(str);
                              if (buf != null) {
                                  attrList.add(buf);
                              }
                          }
                          pageContext.setAttribute("attrList", attrList);
                      %> --%>

                      <table class="table">
                        <thead>
                          <tr>
                            <th>Payload</th>
                          </tr>
                        </thead>
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
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="col-md-12">
                  <div class="panel panel-info">
                    <div class="panel-heading">Trapped Methods</div>
                    <div class="panel-body">

                      <div class="row">
                        <div class="container">
                          <div class="col-md-6">
                            <form method="get" action="XSSWebAppHSRPW">
                                <label>HttpServletResponse PrintWriter</label>
                                <br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                            <form method="get" action="XSSWebAppHSRPWDelay">
                                <label>HttpServletResponse PrintWriter with a 10 second delay</label>
                                <br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                          </div>

                          <div class="col-md-6">
                            <form method="get" action="XSSWebAppHSRSOS">
                              <label>HttpServletResponse ServletOutputStream</label>
                              <br/>
                              <input name="taintedtext" size=50>
                              <input type="submit" value="submit" class="btn btn-info">
                            </form>
                            <form method="get" action="XSSWebAppHSRSOSDelay">
                              <label>HttpServletResponse ServletOutputStream with a 10 second delay</label>
                              <br/>
                              <input name="taintedtext" size=50>
                              <input type="submit" value="submit" class="btn btn-info">
                            </form>
                          </div>

                        </div>
                      </div>

                      <br>
                      <br>

                      <div class="row">
                        <div class="container">
                          <div class="col-md-6">
                            <form method="get" action="XSSWebAppSRPW">
                                ServletResponse PrintWriter<br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                            <form method="get" action="XSSWebAppSRPWDelay">
                                ServletResponse PrintWriter with a 10 second delay<br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                          </div>

                          <div class="col-md-6">
                            <form method="get" action="XSSWebAppSRSOS">
                                ServletResponse ServletOutputStream<br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                            <form method="get" action="XSSWebAppSRSOSDelay">
                                ServletResponse ServletOutputStream with a 10 second delay<br/>
                                <input name="taintedtext" size=50>
                                <input type="submit" value="submit" class="btn btn-info">
                            </form>
                          </div>
                        </div>
                      </div>

                      <br>
                      <br>
<%-- no size class for input on these last forms. Is there a reason for this??? --%>
                      <div class="row">
                        <div class="container">
                          <div class="col-md-6">
                            <form action="print.jsp" method="GET">
                                JspWriter PrintWriter<br/>
                                <input name="taintedtext" name="param" size="50"/>
                                <input type="submit" value="Submit" class="btn btn-info"/>
                            </form>
                            <form action="printDelay.jsp" method="GET">
                                JspWriter PrintWriter with a 10 second delay<br/>
                                <input name="taintedtext" name="param" size="50"/>
                                <input type="submit" value="Submit" class="btn btn-info"/>
                            </form>
                          </div>

                          <div class="col-md-6">
                            <form action="write.jsp" method="GET">
                                JspWriter PrintWriter.write(...)<br/>
                                <input name="taintedtext" name="param" size="50"/>
                                <input type="submit" value="Submit" class="btn btn-info"/>
                            </form>
                            <form action="writeDelay.jsp" method="GET">
                                JspWriter PrintWriter.write(...) with a 10 second delay<br/>
                                <input name="taintedtext" name="param" size="50"/>
                                <input type="submit" value="Submit" class="btn btn-info"/>
                            </form>
                          </div>

                        </div>
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /#page-content-wrapper -->
    </div>
    <!-- /#wrapper -->


    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    <script src="js/sidebar.js"></script>
  </body>
</html>
