
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Multithreading</title>
	<meta name="keywords" content="Multithreading in java, Definition of Multithreading,Multitasking in java,what is  Multitasking, Process based Multi Tasking,Thread based Multitasking">
	<meta name="description" content="The process of executing multiple threads(programs) simultaneously and that threads(programs) are utilize the maximum CPU time, is called the Mutltithreading. ">
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
		<h1 class="h1">Introduction to Multithreading in java</h1>
				<p class="p">Back in the old days a computer had a single CPU, and was only capable of executing a single program at a time. Later came multitasking which meant that computers could execute multiple programs (AKA tasks or processes) at the same time. 
		It wasn't really "at the same time" though. The single CPU was shared between the programs. The operating system would switch between the programs running, executing each of them for a little while before switching.</p>
		<h1 class="h1">Multithreading</h1>

		<p class="p">The process of executing <b>multiple threads(programs) simultaneously</b> and that threads(programs) are utilize the maximum  CPU time, is called the Mutltithreading.
		<br><br><b>Benefits of Multithreading</b></p>
		<ol class="p">
		<li>Improved performance and concurrency</li>
		<li>Better resource utilization.</li>
		<li> It doesn't block the user because threads are independent and you can perform multiple operations at same time.</li>
		<li>Simultaneous access to multiple applications</li>
		<li> Threads are independent so it doesn't affect other threads if exception occur in a single thread.</li>		
		</ol>
		<h1 class="h1">Multitasking</h1>
		<p class="p">Executing <b>several tasks simultaneously</b> is called 'Multitasking', There are 2
types of multitasking.</p>
<p class="ol">1) Process based Multitasking.<br>
2) Thread based Multitasking.</p>
<h1 class="h1">1). Process based Multi Tasking</h1><p class="P">
Executing several tasks simultaneously where each task is a separate independent process is
called 'Process based Multitasking'.</p>

<p class="p">
Ex:
While writing java program in the editor we can run MP3 player. At the same time we
can download a file from the net. All these tasks are executing simultaneously and
independent of each other. Hence it is process based Multitasking. Process based
Multitasking is best suitable at O.S level.</p>

<h1 class="h1">2) Thread based Multitasking.</h1>
<p class="p">Executing several tasks simultaneously where each task is a separate independent part of the
same program is called Thread based Multitasking. <b>This type of multitasking is best suitable
at programmatic level.</b></p>

<p class="p">Java provides in built support for thread based multitasking by providing rich library (Thread,
ThreadGroup, Runnable ..etc)<br>
Whether it is Process based or Thread based the main objective of multitasking is to reduce
response time and improve performance of the system.<br><br>
The main application area of multithreading is video-games implementation, ,Multimedia graphics
..etc.</p>

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