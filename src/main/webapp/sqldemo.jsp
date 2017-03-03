<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.waratek.spiracle.sql.util.Constants" %>


<!DOCTYPE html>
<html>
  <head>
      <style type="text/css">
        html {
          margin: 0;
          background: url('waratekstockimage.png');
          min-height : 100%;
          min-width : 100%;
          background-size:100% 100%;
          background-repeat:no-repeat;
        }
      </style>

      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css"
            href="css/bootstrap-theme.min.css">
      <link rel="stylesheet" type="text/css" href="css/style.css">
      <title>Spiracle SQL Demo</title>
  </head>

  <body>
        <div class="container">
            <%-- <h1>SQL Injection</h1> --%>
            <%-- <div class="panel panel-default">
                <div class="panel-heading">
                    <h5>Oracle C3P0 Connection Pool</h5>
                </div>
                <%
                    String oracleConnectionData = (String) application
                            .getAttribute(Constants.ORACLE_CONNECTION_DATA);
                    if (oracleConnectionData == null) {
                        oracleConnectionData = "";
                    }
                %>
                <div class="panel-footer">
                    Connection Information
                    <pre><%=oracleConnectionData%></pre>
                </div>
            </div> --%>
            <%-- <div class="panel panel-default">
                <div class="panel-heading">
                    <h5>MySQL C3P0 Connection Pool</h5>
                </div>
                <%
                    String mySqlConnectionData = (String) application
                            .getAttribute(Constants.MYSQL_CONNECTION_DATA);
                    if (mySqlConnectionData == null) {
                        mySqlConnectionData = "";
                    }
                %>
                <div class="panel-footer">
                    Connection Information
                    <pre><%=mySqlConnectionData%></pre>
                </div>
            </div> --%>

            <div class="panel panel-default">
                <div class="panel-heading">Injectable URLS</div>
                <div class="panel-body">
                    <h3>Oracle</h3>
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

                        </tbody>
                    </table>
                </div>
                <%-- <div class="panel-body">
                    <h3>MySQL</h3>
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
                </div> --%>
            </div>
        </div>



<!-- Bootstrap core JavaScript
================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
