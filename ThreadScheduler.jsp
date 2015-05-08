
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Thread Scheduler</title>
	<meta name="keywords" content="Thread Scheduler, Mutlithreading Thread Scheduler,explain about Thread Scheduler">
	<meta name="description" content="Whenever multiple threads are waiting to get chance for execution which thread will get chance first is decided by Thread Scheduler whose behavior is JVM vendor dependent. ">
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
<h1 class="h1">Thread Scheduler</h1>
<p class="p">Whenever multiple threads are waiting to get chance for execution which thread will get chance first is decided by Thread Scheduler
whose behavior is JVM vendor dependent. Hence we can't expect exact execution order and hence exact output.
</p> <pre class="brush:java">
public class MyThread extends Thread{
	
	public void run()
	{
		for(int i=0;i&lt;10;i++)
		{
			System.out.println("parent thread");
		}
	}
	public static void main(String[] args) {
		MyThread mt=new MyThread();
		
		mt.start();
		for(int j=0;j&lt;10;j++)
		{
			
		System.out.println("main thread");
		}

	}

}
</pre>
<p class="p"> Thread Scheduler is the part of JVM, due to this unpredictable behavior of thread scheduler we can't expect exact output of the above program.The following are various possible Output's</p>
<img alt="multithreading schedular" src="/java/corejava/mutlithreading/mult-shedular.PNG" width="500"/>
<h4>Note:</h4>
<p class="p1">Whenever the situation come to Multithreading the gurantee in behaviour is very less. we can tell possible output  but not exact output.</p>		
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