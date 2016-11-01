<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta name="Description" content="Information architecture, Web Design, Web Standards." />
<meta name="Keywords" content="your, keywords" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="Distribution" content="Global" />
<meta name="Robots" content="index,follow" />

<link rel="stylesheet" href="images/Envision.css" type="text/css" />
<title>Fictio</title>
</head>

<body>
<!-- wrap(边框,头) starts here -->
<div id="wrap">
		<!--header头标签 -->
		<div id="header">			
				
			<h1 id="logo-text"><a href="index.jsp">Fictio</a></h1>		
			<p id="slogan">竹杖芒鞋轻胜马,谁怕?一蓑烟雨任平生</p>		
			
			<div id="header-links">
			<p>
				<a href="index.jsp">主页</a> | 
				<a href="index.html">联系我</a> | 
				<a href="index.html">位置地图</a>			
			</p>		
		</div>		
						
		</div>
		
		<!-- menu -->	
		<div  id="menu">
			<ul>
				<li id="current"><a href="index.jsp">主页</a></li>
				<li><a href="index.html">收藏</a></li>
				<li><a href="index.html">下载</a></li>
				<li><a href="index.html">Services</a></li>
				<li><a href="index.html">支持</a></li>
				<li class="last"><a href="index.html">关于</a></li>		
			</ul>
		</div>					
			
		<!-- content-wrap(内容边框) starts here -->
		<div id="content-wrap">
				
			<div id="sidebar">
			
				<h3>搜索</h3>	
				<form action="#" class="searchform">
					<p>
					<input name="search_query" class="textbox" type="text" />
  					<input name="search" class="button" value="试试看" type="submit" />
					</p>			
				</form>	
					
				<h3>常用链接</h3>
				<ul class="sidemenu">				
					<li><a href="index.html">我的随笔</a></li>
					<li><a href="#TemplateInfo">我的收藏</a></li>
					<li><a href="#SampleTags">我的标签</a></li>
					<li><a href="#" title="Web Templates">更多链接</a></li>
				</ul>
			
				<h3>常用外链</h3>
				<ul class="sidemenu">
					<li><a href="http://www.squidfingers.com/patterns/">Squidfingers</a></li>
					<li><a href="http://www.alistapart.com">Alistapart</a></li>					
				   	<li><a href="#">CSS Mania</a></li>
				</ul>
			
				<h3>热门新闻</h3>
                <ul class="sidemenu">
                    <li><a href="#" title="Website Templates">
                    <strong>DreamTemplate</strong></a> <br /> Over 6,000+ Premium Web Templates</li>
                    <li><a href="#" title="WordPress Themes">
                    <strong>ThemeLayouts</strong></a> <br /> Premium WordPress &amp; Joomla Themes</li>
                    <li><a href="#" title="Website Hosting">
                    <strong>ImHosted.com</strong></a> <br /> Affordable Web Hosting Provider</li>
                </ul>
				
				<h3>名言警句</h3>
				<div class="left-box">
					<p>&quot;Evaluation of the past is the first step toward 
					vision for the future.&quot; </p>
					
					<p class="align-right">- Chris Widener</p>
				</div>	
				
				<h3>扩展支持</h3>
				<div class="left-box">
					<p>If you are interested in supporting my work and would like to contribute, you are
					welcome to make a small donation through the 
					<a href="http://www.cssmoban.com/">donate link</a> on my website - it will 
					be a great help and will surely be appreciated.</p>
				</div>							
								
			</div>
				
			<div id="main">
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
					
					<h3>表格样式</h3>
					<table>
					<tr>
						<th class="first"><strong>post</strong> date</th>
						<th>title</th>
						<th>description</th>
					</tr>
					<tr class="row-a">
						<td class="first">04.18.2007</td>
						<td><a href="index.html">Augue non nibh</a></td>
						<td><a href="index.html">Lobortis commodo metus vestibulum</a></td>
					</tr>
					<tr class="row-b">
						<td class="first">04.18.2007</td>
						<td><a href="index.html">Fusce ut diam bibendum</a></td>
						<td><a href="index.html">Purus in eget odio in sapien</a></td>
					</tr>
					<tr class="row-a">
						<td class="first">04.18.2007</td>
						<td><a href="index.html">Maecenas et ipsum</a></td>
						<td><a href="index.html">Adipiscing blandit quisque eros</a></td>
					</tr>
					<tr class="row-b">
						<td class="first">04.18.2007</td>
						<td><a href="index.html">Sed vestibulum blandit</a></td>
						<td><a href="index.html">Cras lobortis commodo metus lorem</a></td>
					</tr>
				</table>
				
			</div>
		
		<!-- content-wrap ends here -->	
		</div>
					
		<!--footer(页脚) starts here-->
		<div id="footer">
			
            <p>
		    &copy; 2016 <strong>Ficito</strong>

            &nbsp;&nbsp;&nbsp;&nbsp;

		    <a href="https://fictio.tuchong.com/" title="photowebsite">个人影展</a> from <a href="https://fictio.tuchong.com/">图虫摄影网</a>

            &nbsp;&nbsp;&nbsp;&nbsp;

		    <a href="index.html">Home</a> |
   	        <a href="index.html">Sitemap</a> |
	        <a href="index.html">RSS Feed</a> |
            <a href="http://validator.w3.org/check?uri=referer">XHTML</a> |
		    <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a>
   	    </p>
				
		</div>	

<!-- wrap ends here -->
</div>

</body>
</html>
