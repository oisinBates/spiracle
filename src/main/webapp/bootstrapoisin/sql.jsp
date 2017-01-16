<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>SQL</title>

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
                    <h1>SQL Injection</h1>
                  </div>
                  <p>Blurb about these tests</p>
                  <p>Connection pool tests. Injectable URLs for injection testing.</p>
                  <hr>
              </div>
            </div>


            <div class="container">
            <div class="tabbable">
              <ul class="nav nav-tabs">
                <li class="active"><a href="#tab1" data-toggle="tab">Connection Pool</a></li>
                <li><a href="#tab2" data-toggle="tab">Oracle</a></li>
                <li><a href="#tab3" data-toggle="tab">MySQL</a></li>
                <li><a href="#tab4" data-toggle="tab">MsSQL</a></li>
                <li><a href="#tab5" data-toggle="tab">IBM DB2</a></li>
              </ul>
              <div class="tab-content">
                <div class="tab-pane active" id="tab1">
                  <%-- <h3>Here's an example of a collapsible panel</h3>
                  <br> --%>
<%-- panels  --%>
                  <div class="row">
                    <div class="container">
                      <%-- <div class="col-md-12"> --%>

                      <div class="panel-group">
                        <h3>Here's an example of a collapsible panel</h3>
                        <br>
                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h4 class="panel-title">
                              <a data-toggle="collapse" href="#collapse1">Connection Pool Tests</a>
                            </h4>
                          </div>
                          <div id="collapse1" class="panel-collapse collapse">
                            <div class="panel-body">
                              <h5>
                                Oracle C3P0 Connection Pool
                              </h5>
                              <div class="alert alert-success">
                                <label>Connection Information</label>
                              </div>
                              <hr>

                              <h5>
                                MySQL C3P0 Connection Pool
                              </h5>
                              <div class="alert alert-success">
                                <label>Connection Information</label>
                              </div>
                              <hr>

                              <h5>
                                MsSQL C3P0 Connection Pool
                              </h5>
                              <div class="alert alert-success">
                                <label>Connection Information</label>
                              </div>
                              <hr>

                              <h5>
                                DB2 C3P0 Connection Pool
                              </h5>
                              <div class="alert alert-success">
                                <label>Connection Information</label>
                              </div>

                            </div>
                          </div>
                        </div>

                        <br>
                        <h3>Here's an example of a standard panel</h3>
                        <br>

                        <div class="panel panel-info">
                          <div class="panel-heading">
                            <h5>DB2 C3P0 Connection Pool</h5>
                          </div>
                            <div class="panel-body">
                              <div class="alert alert-success">
                                <label>Connection Information</label>
                              </div>
                            </div>
                          </div>
                        </div>

                      <%-- </div> --%>
                    </div>
                  </div>

<%-- /panels --%>

                </div>
                <div class="tab-pane" id="tab2">
                  <br>
                  <div class="container">
                    <div class="col-md-12">
                      <div class="panel panel-info">
                        <div class="panel-heading">Injectable URLs for Oracle SQL</div>
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
                                      <td><a href="Get_int?id=1">Get_int?id=1</a></td>
                                      <td><code>"SELECT * FROM users WHERE id = '" + id +
                                              "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_no_quote?id=1">Get_int_no_quote?id=1</a></td>
                                      <td><code>"SELECT * FROM users WHERE id = " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_orderby?id=name">Get_int_orderby?id=name</a></td>
                                      <td><code>"SELECT * FROM users ORDER BY '" + id +
                                              "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_groupby?id=name">Get_int_groupby?id=name</a></td>
                                      <td><code>"SELECT count(name), name FROM users GROUP
                                              BY " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_partialunion?id=1">Get_int_partialunion?id=1</a></td>
                                      <td><code>"SELECT * FROM users WHERE id = '" + id +
                                              "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_nooutput?id=1">Get_int_nooutput?id=1</a></td>
                                      <td><code>"SELECT * FROM users WHERE id = '" + id +
                                              "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_having?id=1">Get_int_having?id=1</a></td>
                                      <td><code>"SELECT MIN(name) from users GROUP BY id
                                              HAVING id = " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_int_inline?id=SELECT%20*%20FROM%20users">Get_int_inline?id=SELECT
                                              * FROM users</a></td>
                                      <td><code>id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_string?name=wu">Get_string?name=wu</a></td>
                                      <td><code>"SELECT * FROM users WHERE name = '" + name
                                              + "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_string_no_quote?name='wu'">Get_string_no_quote?name='wu'</a></td>
                                      <td><code>"SELECT * FROM users WHERE name = " + name;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_string_sanitised?name=wu">Get_string_sanitised?name=wu</a></td>
                                      <td><code>"SELECT * FROM users WHERE name = '" + name
                                              + "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_string_no_quote_sanitised?name='wu'">Get_string_no_quote_sanitised?name='wu'</a></td>
                                      <td><code>"SELECT * FROM users WHERE name = " + name;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Update_User?id=1&amp;name=Joe&amp;surname=Soap">Update
                                              User</a></td>
                                      <td><code>"UPDATE users SET name = '" + name + "',
                                              surname = '" + surname + "' WHERE id = " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Delete_User?id=1&amp;name=Joe">Delete User</a></td>
                                      <td><code>"DELETE FROM users WHERE id = " + id + " OR
                                              name = '" + name + "'";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a
                                              href="Insert_User?id=101&amp;name=Joe&amp;surname=Soap&amp;dob=01-Jan-1970&amp;credit_card=1111-1111-1111-1111&amp;cvv=999">Insert
                                              User</a></td>
                                      <td><code>"INSERT INTO users VALUES (" + id + ", '" +
                                              name + "', '" + surname + "', '" + dob + "', '" + credit_card +
                                              "', '" + cvv + "')";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_Implicit_Join?id=1">Get_Implicit_Join?id=1</a></td>
                                      <td><code>"SELECT * FROM users, address WHERE
                                              users.id = " + id + " AND users.id = address.id";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_Full_Outer_Join?id=1">Get_Full_Outer_Join?id=1</a></td>
                                      <td><code>"SELECT * FROM users FULL OUTER JOIN
                                              address ON users.id = address.id AND users.id = " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Get_Union?id=1">Get_Union?id=1</a></td>
                                      <td><code>"SELECT name, surname, TO_CHAR(dob) FROM
                                              users WHERE id = " + id + " UNION SELECT address_1, address_2,
                                              address_3 FROM address WHERE id = " + id;</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Insert_Raw_Text&amp;id=1;text=...">Insert_Raw_Text?id=1&amp;text=...</a></td>
                                      <td><code>"INSERT INTO TEXT_STORE VALUES (" + id + ",
                                              '" + text + "')";</code></td>
                                  </tr>
                                  <tr>
                                      <td><a href="Insert_Raw_Text_Sanitised?id=1&amp;text=...">Insert_Raw_Text_Sanitised?id=1&amp;text=...</a></td>
                                      <td><code>"INSERT INTO TEXT_STORE VALUES (" + id + ",
                                              '" + text + "')";</code></td>
                                  </tr>
                              </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="tab3">
                  <br>
                  <div class="container">
                    <div class="col-md-12">
                      <div class="panel panel-info">
                        <div class="panel-heading">Injectable URLs for MySQL</div>
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
                                    <td><a href="MySql_Get_int?id=1">MySql_Get_int?id=1</a></td>
                                    <td><code>"SELECT * FROM users WHERE id = '" + id + "
                                            '";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MySql_Get_string?name=wu">MySql_Get_string?name=wu</a></td>
                                    <td><code>"SELECT * FROM users WHERE name = '" + name
                                            + " '";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MySql_Get_Union?id=1">MySql_Get_Union?id=1</a></td>
                                    <td><code>"SELECT name, surname, dob FROM users WHERE
                                            id = " + id + " UNION SELECT address_1, address_2, address_3
                                            FROM address WHERE id = " + id;</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MySql_Get_Implicit_Join?id=1">MySql_Get_Implicit_Join?id=1</a></td>
                                    <td><code>"SELECT * FROM users, address WHERE
                                            users.id = " + id + " AND users.id = address.id";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MySql_Implicit_Join_Namespace?id=1">MySql_Implicit_Join_Namespace?id=1</a></td>
                                    <td><code>"SELECT * FROM test.users, test.address
                                            WHERE test.users.id = " + id + " AND test.users.id =
                                            test.address.id";</code></td>
                                </tr>
                            </tbody>
                        </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="tab4">
                  <br>
                  <div class="container">
                    <div class="col-md-12">
                      <div class="panel panel-info">
                        <div class="panel-heading">Injectable URLs for MsSQL</div>
                        <div class="panel-body">
                          <br>
                            <table class="table table-hover">
                              <thead>
                                  <tr>
                                      <th>Request</th>
                                      <th>SQL Statement</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <tr>
                                    <td><a href="MsSql_Get_int?id=1">MsSql_Get_int?id=1</a></td>
                                    <td><code>"SELECT * FROM users WHERE id = '" + id +
                                            "'";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MsSql_Get_string?name=wu">MsSql_Get_string?name=wu</a></td>
                                    <td><code>"SELECT * FROM users WHERE name = '" + name
                                            + "'";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MsSql_Get_Union?id=1">MsSql_Get_Union?id=1</a></td>
                                    <td><code>"SELECT name, surname, CONECRT(varchar(500), dod, 3)dob FROM users WHERE
                                            id = " + id + " UNION SELECT address_1, address_2, address_3
                                            FROM address WHERE id = " + id;</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MsSql_Get_Implicit_Join?id=1">MsSql_Get_Implicit_Join?id=1</a></td>
                                    <td><code>"SELECT * FROM users, address WHERE
                                            users.id = " + id + " AND users.id = address.id";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="MsSql_Implicit_Join_Namespace?id=1">MsSql_Implicit_Join_Namespace?id=1</a></td>
                                    <td><code>"SELECT * FROM dbo.users, dbo.address WHERE
                                            dbo.users.id = " + id + " AND dbo.users.id = dbo.address.id";</code></td>
                                </tr>
                              </tbody>
                          </table>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="tab-pane" id="tab5">
                  <br>
                  <div class="container">
                    <div class="col-md-12">
                      <div class="panel panel-info">
                        <div class="panel-heading">Injectable URLs for IBM DB2</div>
                        <div class="panel-body">
                          <br>
                            <table class="table table-hover">
                              <thead>
                                  <tr>
                                      <th>Request</th>
                                      <th>SQL Statement</th>
                                  </tr>
                              </thead>
                              <tbody>
                                <tr>
                                    <td><a href="Db2_Get_int?id=1">Db2_Get_int?id=1</a></td>
                                    <td><code>"SELECT * FROM SPIRACLE.USERS WHERE id = '" + id + "'";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Get_int_quote_id?id=1">Db2_Get_int_quote_id?id=1</a></td>
                                    <td><code>""SELECT * FROM \"SPIRACLE\".\"USERS\" WHERE id = '" + id + "'"</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Get_string?name=wu">Db2_Get_string?name=wu</a></td>
                                    <td><code>"SELECT * FROM spiracle.users WHERE name = '" + name + "'";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Get_string_quote_id?name=wu">Db2_Get_string_quote_id?name=wu</a></td>
                                    <td><code>"SELECT * FROM \"SPIRACLE\".\"USERS\" WHERE name = '" + name + "'";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Implicit_Join_Namespace?id=1">Db2_Implicit_Join_Namespace?id=1</a></td>
                                    <td><code>"SELECT * FROM SPIRACLE.USERS, SPIRACLE.ADDRESS where SPIRACLE.USERS.ID = " + id + " AND SPIRACLE.ADDRESS.ID = SPIRACLE.USERS.ID";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Implicit_Join_Namespace_quote_id?id=1">Db2_Implicit_Join_Namespace_quote_id?id=1</a></td>
                                    <td><code>"SELECT * FROM \"SPIRACLE\".\"USERS\", SPIRACLE.ADDRESS where SPIRACLE.USERS.ID = " + id + " AND SPIRACLE.ADDRESS.ID = SPIRACLE.USERS.ID";</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Get_Union?id=1">Db2_Get_Union?id=1</a></td>
                                    <td><code>"SELECT name, surname FROM spiracle.users WHERE id = " + id + " UNION SELECT address_1, address_2 FROM spiracle.address WHERE id = " + id;</code></td>
                                </tr>
                                <tr>
                                    <td><a href="Db2_Get_Union_quote_id?id=1">Db2_Get_Union_quote_id?id=1</a></td>
                                    <td><code>"SELECT name, surname FROM \"SPIRACLE\".\"USERS\" WHERE id = " + id + " UNION SELECT address_1, address_2 FROM spiracle.address WHERE id = " + id;</code></td>
                                </tr>
                              </tbody>
                          </table>
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
    <%-- <script src="js/tabs.js"></script> --%>
  </body>
</html>
