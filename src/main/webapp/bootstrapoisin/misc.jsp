<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Misc</title>

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
                    <h1>Miscellanious</h1>
                  </div>
                  <p>Blurb about these tests</p>
              </div>
            </div>

            <%
                String methodReturn = (String) session.getAttribute("methodReturn");
                if (methodReturn == null) {
                    methodReturn = "";
                }
            %>

            <div class="row">
              <div class="container">
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">HttpServletRequest Method Return</div>
                    <div class="panel-body">
                      <form action="HttpRequestMethod" method="post" class="form-inline">
                          <select name="method" class="form-control">
                              <option value="getHeader">getHeader()</option>
                              <option value="getHeaders">getHeaders()</option>
                              <option value="getMethod">getMethod()</option>
                              <option value="getPathInfo">getPathInfo()</option>
                              <option value="getPathTranslated">getPathTranslated()</option>
                              <option value="getQueryString">getQueryString()</option>
                              <option value="getRequestURI">getRequestURI()</option>
                              <option value="getRequestURL">getRequestURL()</option>
                              <option value="getServletPath">getServletPath()</option>
                              <option value="getComment">getComment()</option>
                              <option value="getName">getName()</option>
                              <option value="getDomain">getDomain()</option>
                              <option value="getPath">getPath()</option>
                              <option value="getValue">getValue()</option>
                          </select>

                          <div class="form-group">
                            <input type="text" name="arg">
                          </div>

                        <input type="submit" class="btn btn-info">
                      </form>

                      <br>

                      <div class="alert alert-success">
                        <strong>Return Value: </strong> <%=methodReturn%>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-danger">
                    <div class="panel-heading">Crash JVM</div>
                    <div class="panel-body">
                      <form action="CrashJvm" method="post" class="text-center">
                          <input type="submit" class="btn btn-danger btn-lg active" title="This will crash your JVM" value="Danger!">
                      </form><br>

                      <div class="alert alert-warning">
                        <strong>Warning!</strong> Use sun.misc.It is unsafe to directly address internal JVM address space and hard crash the JVM.
                      </div>

                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="col-md-6">
                  <div class="panel panel-danger">
                    <div class="panel-heading">Thread Terminate</div>
                    <div class="panel-body">

<%-- ############################################# need to compil to test this code --%>

                      <%-- <%
                        Set<Thread> threadSet = Thread.getAllStackTraces().keySet();
                        Thread[] threadArray = threadSet.toArray(new Thread[threadSet.size()]);
                        List<Thread> threadList = new ArrayList<Thread>(Arrays.asList(threadArray));
                        pageContext.setAttribute("threadList", threadList);
                      %>
                      <form action="ThreadKill" method="post">
                        <select name="threadNames" multiple size="10">
                          <c:forEach var="thread" items="${threadList}">
                            <option value="${thread.name}">${thread.name}</option>
                          </c:forEach>
                        </select>
                        </br>
                        <input type="submit" class="btn btn-danger active" title="This might crash your application, server or the JVM itself." value="Submit">
                      </form>
 --%>

                      <div class="alert alert-warning">
                        <strong>Warning!</strong> May cause application server to become unresponsive or crash JVM.
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">Thread Stack Inspector</div>
                    <div class="panel-body">

                      <form action="GetThreadStack" method="post" class="form-inline">
                          <select name="threadName" class="form-control">
                              <c:forEach var="thread" items="${threadList}">
                                  <option value="${thread.name}">${thread.name}</option>
                              </c:forEach>
                          </select>
                          <input type="submit" value="Submit" class="btn btn-info">
                      </form>
                      <br>
                      <%
                          String threadName = (String) session.getAttribute("threadName");
                          if (threadName == null) {
                              threadName = "";
                          }
                      %>
                      <c:if test="${not empty threadName}">
                          <label>Selected Thread: <%=threadName%></label>
                          <select multiple size="10" class="form-control">
                              <c:forEach var="stackElement" items="${stackTrace}">
                                  <option value="${stackElement}">${stackElement}</option>
                              </c:forEach>
                          </select>
                      </c:if>

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
