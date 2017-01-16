<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>File</title>

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
                    <h1>File</h1>
                  </div>
                  <p>Blurb about these tests</p>
              </div>
            </div>


            <div class="row">
              <div class="container">
                <div class="col-md-3">
                  <div class="panel panel-info">
                    <%
              				String textData = (String) session.getAttribute("fileContents");
              				if (textData == null) {
              					textData = "";
              				}
              			%>
                    <div class="panel-heading">File</div>
                      <div class="box">
                        <div class="panel-body">
                          <form id="fileForm" action="FileServlet" method="post">
                  					<label>Path: <label> <input type="text" name="filePath"><br>
                            <label>Read <input type="radio" name="fileArg" value="read" checked></label>
                  					<label>Write <input type="radio" name="fileArg" value="write"></label>
                  					<label>Delete <input type="radio" name="fileArg" value="delete"></label>
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                      </div>
                  </div>

                </div>
                <div class="col-md-9">
                  <div class="panel panel-info">
                    <div class="panel-heading">Text Data</div>
                      <div class="box">
                        <div class="panel-body">
                          <pre class="pre">
                  					<textarea form="fileForm" name="fileText"
                  						style="  width: 60em; height: 20em;"><%=textData%></textarea>
                  				</pre>
                        </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="col-md-4">
                  <div class="panel panel-info">
                    <div class="panel-heading">File URL</div>
                    <div class="panel-body">
                      <form id="fileUrlForm" action="FileUrlServlet" method="post">
              					<label>Path: <label>
                        <input type="text" name="filePath">
                        <input type="submit" value=Submit class="btn btn-info">
              				</form>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="panel panel-info">
                    <div class="panel-heading">File Resource Stream</div>
                    <div class="panel-body">
                      <form id="fileResourceStreamForm" action="FileResourceStreamServlet"
              					method="post">
              					<label>Path: <label><input type="text" name="filePath"> <input
              						type="submit" value=Submit class="btn btn-info">
              				</form>
                    </div>
                  </div>
                </div>
                <div class="col-md-4">
                  <div class="panel panel-info">
                    <div class="panel-heading">File Exec</div>
                    <div class="panel-body">
                      <form id="fileExec" action="FileExecServlet"
              					method="post">
              					<label>Path: <label><input type="text" name="cmd"> <input
              						type="submit" value=Submit class="btn btn-info">
              				</form>
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
