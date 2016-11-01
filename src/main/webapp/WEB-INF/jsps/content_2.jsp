<%@ page language="java" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  </head>  
  <body>	
	<h3>代码标签</h3>				
	<p><code>
	code-sample { <br />
	font-weight: bold;<br />
	font-style: italic;<br />				
	}		
	</code></p>	
	
	<h3>list样式</h3>

	<ol>
		<li>Here is an example</li>
		<li>of an ordered list</li>								
	</ol>	
				
	<ul>
		<li>Here is an example</li>
		<li>of an unordered list</li>								
	</ul>				
	
	<h3>引用样式</h3>			
	<blockquote><p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy 
	nibh euismod tincidunt ut laoreet dolore magna aliquam erat....</p></blockquote>
	
	<h3>图片和文档</h3>
	<p><a href="http://getfirefox.com/"><img src="images/firefox-gray.jpg" width="100" height="120" alt="firefox" class="float-left" /></a>
	Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Donec libero. Suspendisse bibendum. 
	Cras id urna. Morbi tincidunt, orci ac convallis aliquam, lectus turpis varius lorem, eu 
	posuere nunc justo tempus leo. Donec mattis, purus nec placerat bibendum, dui pede condimentum 
	odio, ac blandit ante orci ut diam. Cras fringilla magna. Phasellus suscipit, leo a pharetra 
	condimentum, lorem tellus eleifend magna, eget fringilla velit magna id neque. Curabitur vel urna. 
	In tristique orci porttitor ipsum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. 
	Donec libero.  				
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
    
    <form action="/MyWeb/Servlet?method=revert&title=content_2" method="post">
    <p>
   		<label>回复</label>
		<textarea id="content_2" name="comments" rows="5" cols="3"></textarea>
		<br />	
		<input class="button" type="submit" value="确定"/>		
    </p>
    </form>
	
  </body>
</html>
