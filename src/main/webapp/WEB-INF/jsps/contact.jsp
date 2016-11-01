<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
  <head>
    <title>contact.jsp</title>	
  </head>
  
  <body>
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
  </body>
</html>
