<%@ page language="java" pageEncoding="UTF8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>  
  <body>	
	<a name="content_1"></a>
	<h2><a href="/MyWeb/Servlet?page=content_1">本站概述</a></h2>

        <p><strong>Fictio</strong> 是我根据一个小的html页面模版扩展而来,
	  	 页面首先从剥离出一个外框模块,通过动态包含的方法,将各个内容模块分解
	    (包括index.jsp/content.jsp/contact.jsp),同时使用Servelet,
	   	来判断用户需要调用哪一个,将响应内容模块转发至外框模块中,
	   	从而保证外框的独立性,方便后续的修改.
    	</p>

	<p class="post-footer align-right">					
		<a href="/MyWeb/Servlet?page=content_1" class="readmore">Read more</a>
		<a href="/MyWeb/Servlet?page=content_1" class="comments">Comments (7)</a>
		<span class="date">Oct 01, 2016</span>	
	</p>

	<a name="SampleTags"></a>
	<h2><a href="/MyWeb/Servlet?page=content_2">样式标签</a></h2>
	
	<h3>Code</h3>				
	<p><code>
	code-sample { <br />
	font-weight: bold;<br />
	font-style: italic;<br />				
	}		
	</code></p>	
	<p class="post-footer align-right">					
		<a href="/MyWeb/Servlet?page=content_2" class="readmore">Read more</a>
		<a href="index.html" class="comments">Comments (7)</a>
		<span class="date">Oct 01, 2006</span>	
	</p>
					
	<h2><a href="/MyWeb/Servlet?page=contact">联系我</a></h2>
	<form action="/MyWeb/Servlet?method=insertContacter" method="post">			
	<p>			
	<label>Name</label>
	<input name="name" value="Your Name" type="text" size="30" />
	<label>Email</label>
	<input name="email" value="Your Email" type="text" size="30" />
	<label>Your Comments</label>
	<textarea name="comments" rows="5" cols="3"></textarea>
	<br />	
	<input class="button" type="submit" value="确定"/>		
	</p>		
	</form>				
	<br />	
  </body>
</html>
