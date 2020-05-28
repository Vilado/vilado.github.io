<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
 
 
<div class="head">
    <div class="wrapper clearfix">
        <div class="clearfix" id="top"><h1 class="fl"><a href="index.jsp"><img src="img/logo.png"/></a></h1>
            <div class="fr clearfix" id="top1"><p class="fl">
            	<c:if test="${isLogin !=1 }">
            		<a href="login.jsp" id="login">登录</a><a href="reg.jsp" id="reg">注册</a>
            	
            	</c:if>
            	
            	<c:if test="${isLogin ==1 }">
            		<b>你好：</b><a href="mygrxx.jsp" id="login">${name.USER_NAME }</a>
            	
            	</c:if>
            	
            	<c:if test="${isAdminLogin ==1 }">
            		<a href="manage/admin_index.jsp" id="login1">进入后台</a>
            	
            	</c:if>
            </p>
                <form action="#" method="get" class="fl"><input type="text" placeholder="热门搜索：思学亭"/><input
                        type="button"/></form>
                <div class="btn fl clearfix">
                    <a href="mygxin.jsp" title="个人中心"><img src="img/grzx.png"/></a>
                   
                    
                    
                    
                      <c:if test="${isLogin ==1 }">  
                        <a href="cart.jsp" title="打开收藏夹"><img src="img/gt1.png"/></a>
                        
                          <a href="#" class="er1" ><img src="img/ewm.png"/></a>
                        
                        <a href="post.jsp" title="发布作品" ><img src="img/gt5.png"/></a>
                        
                        
                       
                       </c:if> 
                       <p><a href="#" ><img src="img/smewm.png"/></a></p>
                        
                   </div>
            </div>
        </div>
        <ul class="clearfix" id="bott">
            <li><a href="indexselect">首页</a></li>
            
        
            <c:forEach var="f" items="${flist }">
            
            <li><a href="selectproductlist?fid=${f.CATE_ID }">${f.CATE_NAME }</a>
                <div class="sList2">
                    <div class="clearfix">
                    	<c:forEach var="c" items="${clist }">
                    		<c:if test="${f.CATE_ID == c.CATE_PARENT_ID }">
                    			<a href="selectproductlist?cid=${c.CATE_ID }">${c.CATE_NAME }</a>
                    		</c:if>
                    	</c:forEach>
                    </div>
                </div>
            </li>
          
           </c:forEach>
           <li><a href="proList_graduation1.jsp">毕业季</a></li>
           <li><a href="proList_culture1.jsp">民大文化</a></li>
           <li><a href="proList_qj.jsp">北民大全景</a></li>
           <li><a href="proList_didian.jsp">相册地图</a></li>
        
        </ul>
    </div>
</div>