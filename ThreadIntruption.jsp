
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>interruption of Thread </title>
	<meta name="keywords" content="Interrupting a thread, how to interrupt a executing thread?, Thread Interruption in java,Example program for Thread Interruption, interrupt() method in java,how to implement thread interruption concept in multithreading?">
	<meta name="description" content="we can interrupt a sleeping or waiting thread by using interrupt() method of thread class. ">
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
		<h1 class="h1">Interrupting a thread</h1>
		<p class="p"><b>we can interrupt a sleeping or waiting thread by using interrupt() method of thread class.</b> interrupt method is as follows.</p>
		<pre class="p2">
			public void interrupt();		
		</pre>
		<p class="p">when ever we are calling interrupt() the target thread may not be effected immediately. At the time
of calling interrupt if the target thread is not in sleeping or in waiting state interrupt call will wait
until target thread entered into sleeping or waiting state.</p>
<h5>Example Program:</h5>
<pre class="brush:java">
class MyThread extends Thread
{
	public void run()
	{
		try
		{
			for (int i = 0;i&lt;10;i++)
			{
				System.out.println("This is Lazy Method");
				Thread.sleep(3000); 
			}
			
		}
		catch (InterruptedException e)
		{
			System.out.println(e);
		}
	}
}
class InterruptDemo
{
	public static void main(String arg[])throws InterruptedException
	{
		MyThread t = new MyThread();
		t.start();
		t.interrupt();
		System.out.println("Main Thread");
	}
}

</pre>
		
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