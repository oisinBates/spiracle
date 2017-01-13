<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Path Traversal</title>

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
                    <h1>Path Traversal</h1>
                  </div>
                  <p>Blurb about these tests</p>
              </div>
            </div>
            <br>

            <div class="row">
              <div class="container">
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">File</div>
                    <div class="panel-body">
                      <%
                          String outputFile = (String) session.getAttribute("outputFile");
                          if (outputFile == null) {
                              outputFile = "";
                          }
                      %>

                      <form id="FormFile01" action="FileServlet01" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation01:</label>
                              <input type="text" id="File01" name="File01" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormFile02" action="FileServlet02" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation02:</label>
                              <input type="text" id="File02" name="File02" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormFile03 "action="FileServlet03" method="post" class="form-inline">
                          <div>
                              <label>Operation03:</label>
                              <input type="text" id="File03" name="File03" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>
                      <br>

                      <div class="alert alert-success">
                        <strong>outputFile: </strong> <%=outputFile%>
                      </div>

                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">FileInputStream</div>
                    <div class="panel-body">
                      <%
                          String outputFileInputStream = (String) session.getAttribute("outputFileInputStream");
                          if (outputFileInputStream == null) {
                              outputFileInputStream = "";
                          }
                      %>
                      <form id="FormFileInputStream01" action="FileInputStreamServlet01" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation01:</label>
                              <input type="text" id="FileInputStream01" name="FileInputStream01" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormFileInputStream02" action="FileInputStreamServlet02" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation02:</label>
                              <input type="text" id="FileInputStream02" name="FileInputStream02" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormFileInputStream03 "action="FileInputStreamServlet03" method="post" class="form-inline">
                          <div>
                              <label>Operation03:</label>
                              <input type="text" id="FileInputStream03" name="FileInputStream03" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>
                      <br>

                      <div class="alert alert-success">
                        <strong>outputFileInputStream: </strong> <%=outputFileInputStream%>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">FileOutputStream</div>
                    <div class="panel-body">
                      <%
                          String outputFileOutputStream = (String) session.getAttribute("outputFileOutputStream");
                          if (outputFileOutputStream == null) {
                              outputFileOutputStream = "";
                          }
                      %>

                      <form id="FormFileOutputStream01" action="FileOutputStreamServlet01" method="post" class="form-inline form-padding-btm">
                        <div>
                          <label>Operation01:</label>
                          <input type="text" id="FileOutputStream01" name="FileOutputStream01" value="FileName"</input>
                          <input type="submit" value="Get File" class="btn btn-info"/>
                        </div>
                      </form>

                      <form id="FormFileOutputStream02" action="FileOutputStreamServlet02" method="post" class="form-inline form-padding-btm">
                        <div>
                          <label>Operation02:</label>
                          <input type="text" id="FileOutputStream02" name="FileOutputStream02" value="FileName"</input>
                          <input type="submit" value="Get File" class="btn btn-info"/>
                        </div>
                      </form>

                      <form id="FormFileOutputStream03 "action="FileOutputStreamServlet03" method="post" class="form-inline">
                        <div>
                          <label>Operation03:</label>
                          <input type="text" id="FileOutputStream03" name="FileOutputStream03" value="FileName"</input>
                          <input type="submit" value="Get File" class="btn btn-info"/>
                        </div>
                      </form>
                      </br>

                      <div class="alert alert-success">
                        <strong>outputFileOutputStream: </strong> <%=outputFileOutputStream%>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">RandomAccessFile</div>
                    <div class="panel-body">
                      <%
                          String outputRandomAccessFile = (String) session.getAttribute("outputRandomAccessFile");
                          if (outputRandomAccessFile == null) {
                              outputRandomAccessFile = "";
                          }
                      %>

                      <form id="FormRandomAccessFile01" action="RandomAccessFileServlet01" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation01:</label>
                              <input type="text" id="RandomAccessFile01" name="RandomAccessFile01" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormRandomAccessFile02" action="RandomAccessFileServlet02" method="post" class="form-inline form-padding-btm">
                          <div>
                              <label>Operation02:</label>
                              <input type="text" id="RandomAccessFile02" name="RandomAccessFile02" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>

                      <form id="FormRandomAccessFile03 "action="RandomAccessFileServlet03" method="post" class="form-inline">
                          <div>
                              <label>Operation03:</label>
                              <input type="text" id="RandomAccessFile03" name="RandomAccessFile03" value="FileName"</input>
                              <input type="submit" value="Get File" class="btn btn-info"/>
                          </div>
                      </form>
                      <br>
                        
                      <div class="alert alert-success">
                        <strong>outputRandomAccessFile: </strong> <%=outputRandomAccessFile%>
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
