<% /**
* NapoXir Login.jsp
* @author: Sir Xiradorn
*/
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% String pageName = "NapoXir - Login Form"; %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="widht=device-width, initial-scale=1">
    <title><% out.print(pageName); %></title>
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/css/nopoxir.custom.css" rel="stylesheet">
</head>
<body>

    <nav class="navbar navbar-inverse navbar-static-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}"><% out.print(pageName); %></a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="${pageContext.request.contextPath}/login.jsp">Login <span class="sr-only">(current)</span></a></li>
                    <li><a href="${pageContext.request.contextPath}/tables.jsp">Tables</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>

    <div class="content xir text-center">
        <form class="form-signin" action="user!login.action" method="post" onSubmit="return check()">
            <h2 class="form-signin-heading"><% out.print(pageName); %></h2>
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" name="loginUser.username" id="username" class="form-control">
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" name="loginUser.username" id="password" class="form-control">
            </div>

            <button type="submit" class="btn btn-primary">Submit</button>
            <button type="reset" class="btn btn-default">Reset</button>
        </form>
    </div>
    <div class="container text-center">
        <p class="copyright"><% out.print(pageName); %> <span class="glyphicon glyphicon-copyright-mark"></span> 2015</p>
    </div>

    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/jquery-1.11.3.min.js"></script>
    <script type="text/javascript" src="<%=request.getContextPath()%>/assets/js/user/login.js"></script>
</body>
</html>
