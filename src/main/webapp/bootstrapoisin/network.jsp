<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Network</title>

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
                    <h1>Network</h1>
                  </div>
                  <p>Blurb about these tests</p>
              </div>
            </div>


            <div class="row">
              <div class="container">
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">
                      Socket
                    </div>
                    <div class="box">
                      <div class="panel-body">
                        <%
                          String socketInfo = (String) session.getAttribute("socketInfo");
                          if (socketInfo == null) {
                            socketInfo = "";
                          }
                        %>
                        <form action="SocketServlet" method="post">
                          <p>
                            <i>Local Binding Address</i>
                          </p>

                          <label>Hostname: </label><input type="text" name="bindHost">
                          <label>Port: </label><input type="text" name="bindPort">

                          <p style="margin-top: 12px;">
                            <i>Remote Address</i>
                          </p>
                          <label>Hostname: </label><input type="text" name="remoteHost">
                          <label>Port: </label><input type="text" name="remotePort">

                          <br>
                          <input type="submit" value=Submit class="btn btn-info" style="margin-top: 12px;">
                        </form>

                        <br>
                        <div class="alert alert-success">
                          <strong>Connection Info: </strong> <%=socketInfo%>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">
                      Server Socket
                    </div>
                    <div class="box">
                      <div class="panel-body">
                        <%
                          String serverSocketInfo = (String) session
                              .getAttribute("serverSocketInfo");
                          if (serverSocketInfo == null) {
                            serverSocketInfo = "";
                          }
                        %>
                        <p>
                          <i>
                            Server Socket
                          </i>
                        </p>
                        <form action="ServerSocketServlet" method="post">
                          <label>Hostname: </label><input type="text" name="hostname">
                          <label>Port: </label><input type="text" name="port"> <input type="submit" value=Submit class="btn btn-info" style="margin-top: 12px;">
                        </form>

                        <br>
                        <div class="alert alert-success">
                          <strong>Connection Info: </strong> <%=serverSocketInfo%>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

            <div class="row">
              <div class="container">
                <div class="col-md-12">
                  <div class="panel panel-info">
                    <div class="panel-heading">URL</div>
                    <div class="panel-body">
                      <%
                        String urlData = (String) session.getAttribute("urlContents");
                        if (urlData == null) {
                          urlData = "";
                        }
                      %>
                      <form action="UrlServlet" method="post">
                        Url: <input type="text" name="urlPath"> <input
                          type="submit" value=Submit class="btn btn-info">
                      </form>

                      <br>
                      <div class="alert alert-success">
                        <label>Network Output</label>
                        <pre class="pre"><textarea readonly id="network_output" style="width: 100%; height: 20em"><%=urlData%></textarea></pre>
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


    <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script> --%>
    <script src="js/jquery.min.js"></script>
    <script src="js/jquery.matchHeight.js"></script>

    <script src="js/bootstrap.min.js"></script>
    <script src="js/sidebar.js"></script>

    <script>
    $( document ).ready(function() {
      $('.box').matchHeight();
    });
    </script>
  </body>
</html>
