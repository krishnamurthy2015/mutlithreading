
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Thread Priorities</title>
	<meta name="keywords" content="Thread Priorities, different therad priorities in java, Explain about thread priorities in java,what are the thread priorities in java">
	<meta name="description" content="Every Thread in java having some priority.But the range of valid thread priorities is (1-10) (1 is least & 10 is Highest).">
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
		<h1 class="h1">Thread Priorities</h1>
		<p class="p">Every Thread in java having some priority.But the <b>range of valid thread priorities is (1-10)</b> (1 is least &amp; 10 is
Highest). Thread class defines the following constant for representing some standard priorities</p>
<ol class="p2">
	<li>Thread.MIN_PRIORITY(---&gt; 1 )</li>
	<li>Thread.NORM_PRIORITY(---&gt; 5 )</li>
	<li>Thread.MAX_PRIORITY(---&gt; 10 )</li>
</ol>
<p class="p">Thread scheduler use these priorities while allocating C.P.U. The Thread which is having <b>highest priority
will get chance first for execution</b>. If two threads having the same priority then which thread will get chance
first for execution is decided by Thread Scheduler, which is vendor dependent i.e <b>we can't expect exactly.</b></p>
<h1 class="h1">Default Priority</h1>
<p class="p">The default priority for the main thread is 5, but for all the remaining threads the priority will be
inherit from parent i.e what ever the parent has the same priority the child thread also will get.</p>
<p class="p">Thread class contains the following methods to set and get priorities of thread.</p>
<ol class="p1">
	<li>public final void setPriority(int priority)<br>
The priority should be from 1-10 other wise R.E: IllegalArgumentException.</li>
<li> public final int getPriority();</li>
</ol>
<pre class="h2">
Thread t=new Thread();
t.setPriority(5);
t.setPriority(10);
t.setPriority(100);//R.E: IllegalArgumentException.
</pre>
<h5>EXAMPLE:</h5>
<pre class="brush:java">
class MyThread extends Thread
{
	public void run()
	{
		for (int i=0; i&lt;10 ; i++ )
		{
			System.out.println("Child Thread");
		}
	}
}
class ThreadPriorityDemo
{
	public static void main(String arg[])
	{
		MyThread t = new MyThread();
		System.out.println(t.getPriority());
		t.setPriority(10);
		t.start();
		for(int i =0;i&lt;10;i++)
		{
			System.out.println("Main Thread");
		}
	}
}
</pre>
<h5>Explanation:</h5>
<p class="p">If we are commenting the line <b>t.setPriority(10)</b> then both main and child threads having the same Priority(5) and hence we cant't expect exact execution order and exact output</p>
<p class="p">If we are not commenting that then main thread has the priority 5 and child thread has the priority 10. Hence main thread executed first and then child thread executes.</p>
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