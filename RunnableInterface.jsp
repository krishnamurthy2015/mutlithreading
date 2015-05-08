
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Runnable Interface</title>
	<meta name="keywords" content="implementing runnable interface, Thread creation by implementing runnable interface,">
	<meta name="description" content="We can define a Thread by implementing runnable interface also. Runnable interface available in java.lang package and contains only one method public void run();">
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
 <h1 class="h1">By Implementing Runnable Interface</h1>
 <p class="p">We can define a Thread by implementing runnable interface also. Runnable interface available in
<b>java.lang</b> package and contains only one method
<b>public void run();</b></p>
<pre class="brush:java">
class MyRunnable implements Runnable
{
	public void run()
	{
		for(int i = 0;i&lt;=10;i++)
		{
			System.out.println("Child Thread");
		}
	}
}
class ThreadDemo
{
public static void main(String arg[]){
	MyRunnable r = new MyRunnable();
	Thread t = new Thread(r);
	t.start();
	for(int i = 0;i&lt;=10;i++)
	{
		System.out.println("Main Thread");
	}
}
}
</pre> 

<h1 class="h1">Case Study:</h1>
<pre class="p2">
MyRunnable r = new MyRunnable();
Thread t1 = new Thread();
Thread t2 = new Thread(r);

</pre>
<h1 class="h1">Case Study Analysis:</h1>		
<p class="p2">Case1:</p>
<p class="p1">t1.start();</p>
<p class="p">A new thread will be created which is responsible executes thread class run() method(Which is having empty
implementation).</p>
<p class="p2">Case2:</p>
<p class="p1">t1.run();</p>
<p class="p"><b>No new thread will be created</b> and thread class run() method will be executed just like a
normal method call.</p>
<p class="p2">Case3:</p>
<p class="p1">t2.start();</p>
<p class="p">A new thread will be created and responsible for execution of MyRunnable run method.</p>
<p class="p2">Case4:</p>
<p class="p1">t2.run();</p>
<p class="p">No new thread will be created and MyRunnable run method will be executed just like a
normal method call.</p>
<p class="p2">Case5:</p>
<p class="p1">r.run();</p>
<p class="p">No new thread will be created and MyRunnable run method will be executed just like a
normal method call.</p>
<p class="p2">Case6:</p>
<p class="p1">r.start();</p>
<p class="p">Compiler Error: MyRunnable doesn't contain start method.</p>		
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