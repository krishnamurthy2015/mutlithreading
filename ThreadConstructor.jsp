
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Thread class Constructors</title>
	<meta name="keywords" content="Thread Constuctors, uses of thread Constructors, what are the thread constrcuctors">
	<meta name="description" content="This page explains the Thead Constructors">
	<meta name="author" content="krishna murthy">
	
	<!-- Mobile Specific Meta -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

	<!-- Stylesheets -->
	<link rel="stylesheet" href="/css/bootstrap.css" />
	<link rel="stylesheet" href="/css/bootstrap-responsive.css" />
	<link rel="stylesheet" href="/css/custom.css" />
	<link rel="stylesheet" href="/css/jquery.mobile-1.3.1.css"/>
	<link rel="shortcut icon" href="/images/TLC-logo.png" type="image/x-icon">	

	<!-- Synatax -->
	
	<link href='/css/shCore.css' rel='stylesheet' type='text/css'>
   <link href='/css/shThemeDefault.css' rel='stylesheet' type='text/css'>
   <link href='/css/shCoreDefault.css' rel='stylesheet' type='text/css'>
   <script src='/js/shCore.js' type='text/javascript'></script>
   <script src='/js/shAutoloader.js' type='text/javascript'></script>
   <script src='/js/shBrushJava.js' type='text/javascript'></script>
     <script type="text/javascript">
     SyntaxHighlighter.all()
    </script>
	
	<!--[if lt IE 9]>
		<script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
	<![endif]-->
		<!-- Google analytics -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-53799001-1', 'auto');
  ga('send', 'pageview');

</script>
</head>
<body>
<%@include file="/java/jheader.jsp" %>
<!-- Container -->
<div class="container">

<%@include file="/java/Jpageheader.jsp" %>

<div class="row">
	<div class="span2.1">
		<%@include file="/java/corejava/mutlithreading/M-LeftNav.jsp" %>
	</div>
	
	<div class="span9">	
	
		<div class="btn-group">
			<a href="" class="btn btn-success btn-danger">&laquo; Previous</a>
		</div>
		<div class="pull-right"> 
			<a href="" class="btn btn-success btn-danger">Next Chapter &raquo; </a>
		</div>
		<hr>
		<h1 class="h1">Thread Class Constructors</h1>
		<p class="p">The following Constructors are the Thread Class Constructors</p>
		<table class="reference">
			<tr><th width="400">Constructor</th><th>Description</th></tr>
			<tr><td>Thread()</td><td>Allocates a new Thread object.</td></tr>
			<tr><td>Thread(Runnable target)</td><td>Allocates a new Thread object.</td></tr>
			<tr><td>Thread(Runnable target, String name)</td><td>Allocates a new Thread object.</td></tr>
			<tr><td>Thread(String name)</td><td>Allocates a new Thread object.</td></tr>
			<tr><td>Thread(ThreadGroup group, Runnable target)</td><td>Allocates a new Thread object.</td></tr>
			<tr><td>Thread(ThreadGroup group, Runnable target, String name)</td><td>Allocates a new Thread object so that it has target as its run object, has the specified name as its name, and belongs to the thread group referred to by group.</td></tr>
			<tr><td>Thread(ThreadGroup group, Runnable target, String name, long stackSize)</td><td>Allocates a new Thread object so that it has target as its run object, has the specified name as its name, and belongs to the thread group referred to by group, and has the specified stack size.</td></tr>
			<tr><td>Thread(ThreadGroup group, String name)</td><td>Allocates a new Thread object.</td></tr>
		
		</table>
		<h5>Note:</h5>
		<p class="p">If you want more information about Constructors<a href="https://docs.oracle.com/javase/7/docs/api/java/lang/Thread.html"> please click the link</a></p>

		<hr>
			<div class="btn-group">
				<a href="" class="btn btn-success btn-danger">&laquo; Previous</a>
			</div>
			<div class="pull-right"> 
				<a href="" class="btn btn-success btn-danger">Next Chapter &raquo; </a>
			</div> 
	</div>

</div>

</div><!-- End of container -->

<%@include file="/footer.jsp" %>
</body>
</html>