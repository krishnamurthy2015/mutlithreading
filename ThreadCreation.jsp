
<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->

<head>
	<meta charset="utf-8">
	<title>Thread Creation</title>
	<meta name="keywords" content="what is thread?, how many ways to create a Thread,The difference between t.start() and t.run(),By extending Thread Class,Importance of Thread Class start() method, not overriding run() ">
	<meta name="description" content="We can define instantiate and starting a thread by using the following 2- ways.
1) By extending Thread Class.
2) By implementing Runnable interface">
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
<div id="impcontents">
<h5 class="h1">Contents Explains this page</h5>
		<ul>
		<li><a href="#">By extending Thread Class.</a></li>
		<li><a href="#">Thread Scheduler</a></li>
		<li><a href="#">The difference between t.start() and t.run():</a></li>
		<li><a href="#">Importance of Thread Class start() method:</a></li>
		<li><a href="#">If we are not overriding run() method:</a></li>
		<li><a href="#">Overloading of run()</a></li>
		<li><a href="#">If we are overriding start() method</a></li>
		</ul>
</div>
		<p class="p"><b>A thread is a lightweight sub process, a smallest unit of processing. It is a separate path of execution</b>.<br>
Threads are independent, if there occurs exception in one thread, it doesn't affect other threads. It shares a common memory area.</p>
<h1 class="h1">Ways to Define, Instantiating, and starting a new Thread:</h1>


<p class="p1">We can define instantiate and starting a thread by using the following 2- ways.<br>
1) By extending Thread Class.<br>
2) By implementing Runnable interface<br></p>
<h1 class="h1">1. By extending Thread Class:</h1>
<h5>Example:</h5>
<pre class="brush:java">
package com.java.Threads;

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
<h5>Explanation of the Above Program:</h5>
<h5 class="h1">CASE1:</h5><h5 class="p1">Thread Scheduler</h5>
<p class="p">Whenever multiple threads are waiting to get chance for execution which thread will get chance first is decided by Thread Scheduler
whose behavior is JVM vendor dependent. Hence we can't expect exact execution order and hence exact output.
</p> 
<p class="p"> Thread Scheduler is the part of JVM, due to this unpredictable behavior of thread scheduler we can't expect exact output of the above program.The following are various possible Output's</p>
<img alt="multithreading schedular" src="/java/corejava/mutlithreading/mult-shedular.PNG" width="500"/>
<h4>Note:</h4>
<p class="p1">Whenever the situation come to Multithreading the gurantee in behaviour is very less. we can tell possible output  but not exact output.</p>
<h5 class="h1">CASE2:</h5>
<h5 class="p1">The difference between t.start() and  t.run():</h5>   
<p class="p">In the case of t.start() a new thread will be created and which is responsible for the execution
of run()</p>
<p class="p">But in the case of t.run() no new thread will be created and run() method will be
executed just like a normal method by the main thread.
Hence in the above program if we are replacing t.start() with t.run() then the O/P is like normal out.</p>
<h5 class="h1">CASE3:</h5>
<h5 class="p1"> Importance of Thread Class start() method:</h5>
<p class="p">After creating thread object compulsory we should perform registration with the thread scheduler.
This will take care by start() of Thread class, So that the programmers has to concentrate on only job.<br> With out executing Thread class <b>start() method there is no chance of
start a new Thread in java.</b></p>
<pre class="brush:java">
class Thread{
	start(){
		1. Register with Thread Scheduler and performs the initialization Activity
		
		2. call the run() method.
	}
}
</pre>
<h5 class="h1">CASE4:</h5>
<h5 class="p1">If we are not overriding run() method:</h5>

<p class="p">If we are not overriding run() method. Then the thread class run() method will be executed which has <b>empty implementation.</b>
<pre class="brush:java">
class MyThread extends Thread
{
}
class ThreadDemo
{
	public static void main(String arg[])
	{
		MyThread t = new MyThread();
		t.start();
	}
}
O/P:- no output
</pre>
<h5 class="h1">CASE5:</h5>
<h5 class="p1">Overloading of run()</h5>
<p class="p">Overloading of run() method is possible, but thread class start() will always call no argument run() method only. but the other run() we have to call explicitly just like a normal method call.</p>
<pre class="brush:java">
class MyThread extends Thread
{
	public void run(){
		System.out.println("run() method");
	}
	public void run(int i){
	System.out.println("run(int i)");
	}
	class ThreadDemo
	{
		public static void main(String[] args)
		{
			MyThread t=new MyThread();
			t.start();
			}
		}
</pre> 
<h5>Output</h5>
<pre class="p1">
run() method
</pre>
<h5 class="h1">CASE6:</h5>
<h5  class="p1">If we are overriding start() method:</h5>
<p class="p">If we are overriding start() method then start() will be executed just like a normal method call and no new thread will be created.</p>
<pre class="brush:java">
class MyThread extends Thread
{
	public void start()
	{
		System.out.println("start() method");
	}
	public void run()
	{
		System.out.println("run method");
	}
}
class ThreadDemo
{
	public static void main(String arg[])
	{
		MyThread t = new MyThread();
		t.start();
	}
}

</pre>
<pre class="p1">
start() method
</pre>
<h5 class="h1">CASE6:</h5>
<p class="p">After starting a thread we are not allowed to restart the same thread once again. Otherwise we wil get Runtime Exception saying " IllegalTheadStateException"
<pre class="p1">
Thread t=new Thread()

t.start();

t.start();//IllegalTheadStateException
</pre>
<h4>Note:</h4>
<p class="p2">It's never recommended to override start() method,but it's highly recommended to override run() method.</p> 
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