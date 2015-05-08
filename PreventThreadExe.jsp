
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Preventing Thread Execution</title>
	<meta name="keywords" content="Preventing Thread Execution in java, What are the ways to prevent the thread in java ?, how to prevent Thread execution?,Example programs for preventing the thread execution?,different ways to prevent thread execution?">
	<meta name="description" content="We can prevent a thread from execution by using the following methods. yield(), join(), sleep()">
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
		<h1 class="h1">Preventing Thread Execution</h1>
		<p class="p">We can prevent a thread from execution by using the following methods.</p>
		<ol class="h3">
		<li> yield()</li>
		<li>join()</li>
		<li>sleep()</li>
		</ol>
		<h1 class="h1">1. yield() Method</h1>
		<p class="p">The thread which is called yield() method <b>temporarily pause the execution</b> to give the chance for
remaining threads of <b>same priority.</b> If there is no waiting thread or all waiting threads having low
priority. Then the same thread will get the chance immediately for the execution.</p>
<p class="p1">The signature of yield() is </p>
<pre class="p2">
public static native void yield(); 
</pre>
<p class="p"><b>The following Example explains yield() execution</b></p>
<img alt="yield thread prevention" src="/java/corejava/mutlithreading/yiled.png">
<p class="p">The Thread which is yielded, when it will get chance once again for execution is decided by ThreadScheduler and we con't expect exactly.</p>
<h5>Example:</h5>
<pre class="brush:java">
package com.java.Threads;

public class MyThread extends Thread{
	
	public void run()
	{
		for(int i=0;i&lt;4;i++)
		{
			System.out.println("child thead");
			Thread.yield();
		}
	}
	public static void main(String[] args) {
		MyThread mt=new MyThread();		
		mt.start();
		for(int j=0;j&lt;4;j++)
		{
			
		System.out.println("main thread");
		}
	}
}
</pre>
<p class="p">In this case main thread will get chance more no of times for execution. Because child thread
intentionally calling "yield()" method. As the yield method is native method some Operating system
may not provide the support for this</p>
<h1 class="h1">2. join() Method</h1>
<p class="p"><b>If a thread wants to wait until some other thread completion then we should go for join method.</b><br><br>If a thread t1 executes t2.join(), then t1 will be entered into waiting state until t2
completion.</p>
<h5>Methods of join()</h5>
<pre class="p1">
public final void join() throws InterruptedException
public final void join(long ms) throws InterruptedException
public final void join(long ms, int ns) throws InterruptedException
</pre>
<p class="p">join() method is overloaded and every join() throws InterruptedException. Hence, when ever we are using join() compulsory we should handle InterruptedException, either by try-catch or by throws otherwise we will get compile time error.</p>
<h4>The following Example explains join() execution</h4>
<img alt="multithread" src="/java/corejava/mutlithreading/multithreadjoin.PNG">  
<pre class="brush:java">
class MyThread extends Thread
{
	public void run()
	{
		for (int i=0; i&lt; 10 ; i++ )
		{
			System.out.println("Child Thread");
			try
			{
			Thread.sleep(1000);
			}
			catch (InterruptedException e)
			{
			e.printStackTrace();
			}
		}
	}
}
class JoinDemo
{
	public static void main(String arg[])throws InterruptedException
	{
		MyThread t = new MyThread();
		t.start();
		t.join();
		
		for(int i =0;i&lt;10;i++)
		{
			System.out.println("Main Thread");
		}
	}
}

</pre>
<p class="p1">Here the main thread will wait until child thread excecution completes.</p>

<h1 class="h1">3. sleep() method</h1>
<p class="p">If a method has to wait some predefined amount of time with out execution then we should go for
sleep() method.</p>
<pre class="p2">
public static void sleep(long ms)throws InterruptedException
public static void sleep(long m, int m)throws InterruptedException
</pre>
<p class="p">whenever we are using sleep() method, we should handle the interrupted exception. Otherwise we will get compile time exception.</p>
<img alt="sleepmethod" src="/java/corejava/mutlithreading/sleep.PNG">
<h5>Example program:</h5>
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
				Thread.sleep(1000);
			}
		}
		catch (InterruptedException e)
		{
		System.out.println(e);
		}
	}
}
class SleepDemo
{
	public static void main(String arg[])throws InterruptedException
	{
		MyThread t = new MyThread();
		t.start();
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