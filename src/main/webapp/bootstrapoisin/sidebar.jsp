<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>

  <!-- Sidebar -->
  <nav class="navbar navbar-inverse navbar-fixed-top" id="sidebar-wrapper" role="navigation">
      <ul class="nav sidebar-nav">
          <li class="sidebar-brand">
              <a href="index.jsp">
                 Spiracle
              </a>
          </li>
          <li>
              <a href="index.jsp">Overview</a>
          </li>
          <li class="dropdown">
            <a href="#" class="dropdown-toggle" data-toggle="dropdown">CSRF <span class="caret"></span></a>
            <ul class="dropdown-menu" role="menu">
              <li class="dropdown-header"></li>
              <li><a href="csrf.jsp">QA Tests</a></li>
              <li><a href="csrfdemo.jsp">Demo</a></li>
            </ul>
          </li>
          <li>
              <a href="file.jsp">File</a>
          </li>
          <li>
              <a href="network.jsp">Network</a>
          </li>

          <li>
              <a href="sql.jsp">SQL</a>
          </li>
          <li>
              <a href="xss.jsp">XSS</a>
          </li>
          <li>
              <a href="pathTraversal.jsp">Path Traversal</a>
          </li>
          <li>
              <a href="misc.jsp">Misc</a>
          </li>
      </ul>

      <footer class="footer">
        <div class="container">
          <ul class="list-unstyled">
            <li><a href="./LICENSE.html">License</a></li>
            <li><a href="https://github.com/waratek/spiracle">GitHub</a></li>
            <li><a href="https://github.com/waratek/spiracle/releases">Releases</a></li>
          </ul>
        </div>
      </footer>
  </nav>
  <!-- /#sidebar-wrapper -->

</html>
