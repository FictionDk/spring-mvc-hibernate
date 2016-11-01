<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <script type="text/javascript">
	function page(currPage){
		var uri = "/MyWeb/Servlet?page=content_1&currPage="+currPage;
		window.location.href = uri;
	}  
  </script>
  </head>  
  <body>	
	<a name="content_1"></a>
	<h2><a href="#">本站概述</a></h2>

    <p><strong>Fictio</strong> 是我根据一个小的html页面模版扩展而来,
	  	 页面首先从剥离出一个外框模块,通过动态包含的方法,将各个内容模块分解
	    (包括index.jsp/content.jsp/contact.jsp),同时使用Servelet,
	   	来判断用户需要调用哪一个,将响应内容模块转发至外框模块中,
	   	从而保证外框的独立性,方便后续的修改.
    </p>
    <p>
	         然后便是逐步实现各个子模块功能,首先是contact模块,
	  	建立contact的bean对象,将页面中对象通过c3p0连接池传入mysql数据库.
	  	整体严格采用MVC设计,用户首先访问Servelet,然后通过servlet传递和转发相关信息,
	  	通过Service实现业务功能,使用dao对象实现具体内容(因为总体功能并不繁琐,就没有实现
	  	dao接口和dao工厂操作).
    </p>
    
    <h3>评论:</h3>
    	<c:forEach var="comment" items="${comentPage.commentPageList}">
    		<blockquote><p>${comment.text} Ip:${comment.ip}</p></blockquote>
    	</c:forEach> 
	    
	    <select onchange="page(this.value)" >
	    <c:forEach var="i" begin="1" end="${comentPage.allPageNum}" >
	    	<option value="${i}" ${comentPage.currPage==i?'selected':''} >
	    		第${i}页
	    	</option>
	    </c:forEach>
	    </select>
    
    <form action="/MyWeb/Servlet?method=revert&title=content_1" method="post">
    <p>
   		<label>回复</label>
		<textarea id="content_1" name="comments" rows="5" cols="3"></textarea>
		<br />	
		<input class="button" type="submit" value="确定"/>		
    </p>
    </form>
    
    
  </body>
</html>
