
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Thread Life Cycle</title>
	<meta name="keywords" content="states of the thread?,what are the different states of thread scheduler,Multithreading in java, Definition of Multithreading,Multitasking in java,what is  Multitasking, Process based Multi Tasking,Thread based Multitasking">
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
		<h1 class="h1">What is Thread </h1>
		<p class="p"><b>A thread is a lightweight sub process, a smallest unit of processing. It is a separate path of execution</b>.<br>

Threads are independent, if there occurs exception in one thread, it doesn't affect other threads. It shares a common memory area.</p>
<h1 class="h1">Life Cycle of a thread</h1> 
<p class="p">Commonly thread life Cycle can be classified into one of the following state.</p>
<ol class="p1">
	<li>New born state</li>
	<li>Runnable</li>
	<li>Running state</li>
	<li>Blocked state</li>
	<li>Dead state</li>
</ol>
<p class="p">The following diagram explains you how to execute the threads in the CPU.</p>
<img alt="thread" src="/java/corejava/mutlithreading/ThreadLifeCycle.PNG" width="500">
<h1 class="h1">1. New born state</h1>
<p class="p">In <b>New born state</b>, the thread object is created, occupies memory but is inactive.Once we create a thread Object<br> (<b>Thread t1=new Thread();</b>)<br> t1 thread is created but is not eligible for microprocessor time as it is inactive.To make the thread active, call start() method on the thread object as <b>t1.start().</b>
 This makes the thread active and now eligible for processor time slices. </p>
 <p class="p">If start( ) method is called then the thread goes to ready to run mode(Runnable). If the stop( ) method is called then the thread goes to dead state.</p>
<h1 class="h1">2. Runnable State:</h1>
<p class="p">When we call start() Method on Thread object, it's state is changed to Runnable and the control is given to Thread scheduler.But the thread scheduler has not selected it to be the running thread.<br><br>
All the Threads are waiting for the processor are queued up in the ready to run mode and are served in FIFO manner or priority scheduling.</p>


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