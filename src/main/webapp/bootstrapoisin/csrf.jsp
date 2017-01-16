<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>CSRF</title>

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
              </div>
            </div>
            <br>


            <div class="row">
              <div class="container">
                <div class="panel panel-info">
                  <div class="panel-heading">
                    Form tags for method attribute: post
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="container">
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method="post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method="POST"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="POST">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method="Post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="Post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method="pOSt"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="pOSt">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method='post'</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method='post'>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method=post</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method=post>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method &nbsp;&nbsp; ="post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method    ="post">
                  						<label>Name:</label>
                              <input type="text" name="name">
                  						<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method = "post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method = "post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: METHOD="post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" METHOD="post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="panel panel-info">
                  <div class="panel-heading">
                    Form tags for method attribute: get
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="container">
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method="get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="get">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method="GET"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="GET">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method="Get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="Get">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method="gEt"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="gEt">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method='get'</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method='get'>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method=get</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method=get>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>method attribute is: method &nbsp;&nbsp; ="get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method    ="get">
                  						<label>Name:</label>
                              <input type="text" name="name">
                  						<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: method = "get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method = "get">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>method attribute is: METHOD="get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" METHOD="get">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

            <div class="row">
              <div class="container">
                <div class="panel panel-info">
                  <div class="panel-heading">
                    Form tags for misc combinations of method attributes
                  </div>
                  <div class="panel-body">
                    <div class="row">
                      <div class="container">
                        <div class="col-md-4">
                          <p>
                  					<br/><i>Method attribute "post" is 1/1 attributes</i>
                  				</p>
                  				<form method="post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>Method attribute "post" is 2/2 attributes</i>
                  				</p>
                  				<form foo=bar method="post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>Method attribute "post" is 2/3 attributes</i>
                  				</p>
                  				<form foo=bar method="post" action=foobar>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>Method attribute "post" is 3/4 attributes</i>
                  				</p>
                  				<form foo=bar blah=blah method="post" action=foobar>
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>Method attribute for "post" then "get"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="post" method="get">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                  				<p>
                  					<br/><i>Method attribute for "get" then "post"</i>
                  				</p>
                  				<form id="csrfForm" action="CSRFServlet" method="get" method="post">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
                        <div class="col-md-4">
                          <p>
                  					<br/><i>No method attributes</i>
                  				</p>
                          <form id="csrfForm" action="CSRFServlet">
                  					<label>Name:</label>
                            <input type="text" name="name">
                  					<input type="submit" value=Submit class="btn btn-info">
                  				</form>
                        </div>
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
                    <div class="panel-heading">
                      a href tags
                    </div>
                    <div class="box">
                      <div class="panel-body">
                        <a href="index.jsp">a href="index.jsp"</a><br/>
                				<a href='index.jsp'>a href='index.jsp'</a><br/>
                				<a href=index.jsp>a href=index.jsp</a><br/>
                				<a href = "index.jsp">a href = "index.jsp"</a><br/>
                				<a HREF="index.jsp">A HREF="index.jsp"</a><br/>
                				<a href="http://www.google.com">a href="http://www.google.com"</a><br/>
                				<a href="google.com">a href="google.com"</a><br/>
                				<a href="#">a href="#"</a><br/>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-md-6">
                  <div class="panel panel-info">
                    <div class="panel-heading">
                      Parameter Pollution
                    </div>

                    <div class="box">
                      <div class="panel-body">
                        <p>
                					<br/><i>Form tag, method attribute is: method="post"</i>
                				</p>
                				<form id="csrfForm" action="CSRFServlet" method="post">
                					<label>Name:</label>
                          <input type="text" name="name">
                					<input type="submit" value=Submit class="btn btn-info">
                					<input type="hidden" name="_WARATEK_CSRF_TOKEN" value="notACsrfToken_onlyUsedForParamPollutionTest=" />
                				</form>
                      </div>
                    </div>
                  </div>
                </div>

              </div>
            </div>

          </div>
        </div>

        <div class="row">
          <div class="container">
            <div class="panel panel-info">
        			<div class="panel-heading">
                iframe tags
              </div>
        			<div class="panel-body">
        		  		<iframe src="index.jsp"></iframe>
        		  		<iframe src='index.jsp'></iframe>
        		  		<iframe src=index.jsp></iframe>
        		  		<iframe src = "index.jsp"></iframe>
        		  		<IFRAME src="index.jsp"></iframe>
        		  		<iframe src="http://www.google.com"></iframe>
        		  		<iframe src='http://www.google.com'></iframe>
        		  		<iframe src=http://www.google.com></iframe>
        		  		<iframe src = "http://www.google.com"></iframe>
        		  		<IFRAME src="http://www.google.com"></iframe>
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
