<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>商城购物车</title>
    <link rel="stylesheet" href="../css/header.css"/>
    <link rel="stylesheet" href="../css/footer.css"/>
    <link rel="stylesheet" href="../css/cart.css"/>
</head>
<body>
<!-- 页面顶部-->
<header id="top" class="fixed_nav">
    <div id="logo" class="lf">
        <img class="animated jello" src="../images/header/logo.png" alt="logo"/>
    </div>
    <div id="top_input" class="lf">
        <input id="input" type="text" placeholder="请输入您要搜索的内容"/>
        <a href="search.html" class="rt"><img id="search" src="../images/header/search.png" alt="搜索"/></a>
    </div>
    <div class="rt">
        <ul class="lf">
            <li><a href="favorites.html" title="我的收藏"><img class="care" src="../images/header/care.png" alt=""/></a><b>|</b></li>
            <li><a href="orders.html" title="我的订单"><img class="order" src="../images/header/order.png" alt=""/></a><b>|</b></li>
            <li><a href="cart.html" title="我的购物车"><img class="shopcar" src="../images/header/shop_car.png" alt=""/></a><b>|</b></li>
            <li><a href="help.html">帮助</a><b>|</b></li>
            <li><a href="login.html">登录</a></li>
        </ul>
    </div>
</header>
<!-- nav主导航-->
<nav id="nav">
    <ul>
        <li><a href="index.html" class="acti">首页</a></li>
        <li><a href="index.html#computer" >电脑办公</a></li>
        <li><a href="index.html#stationery" >办公文具</a></li>
    </ul>
</nav>
<div class="modal" style="display:none">
    <div class="modal_dialog">
        <div class="modal_header">
            删除提醒
        </div>
        <div class="modal_information">
            <img src="../images/model/model_img2.png" alt=""/>
            <span>确定删除您的这个宝贝吗？</span>
        </div>
        <div class="yes"  id="detel" ><span>删除
       
        
        </span></div>
        <div class="no" ><span>不删除</span></div>
    </div>
</div>
<script type="text/javascript">

/* $("#detel").click(function(){
	console.log(c.id);}); */
	/* $.ajax({
        type: 'POST',
        url: 'deleteCart.do',
        data: ",//向服务器发送参数
       // dataType:"json",//服务器返回结果的类型
        success: function(msg){/*   txt, msg, xhr 
        
             if(msg=='ok'){  //登录成功
            	
                var loginName = $('[name="username"]').val();
              //  sessionStorage['loginName']=loginName;
                console.log(msg);
                console.log(loginName);
                location.href='../main/showIndex.do';
                
            }else{ //登录失败
            
                $('#showResult').html('登录失败！错误消息为：'+msg);
            } 
        }
       
	
    });  */
 

</script>
<div class="modalNo" style="display:none">
    <div class="modal_dialog">
        <div class="modal_header">
            删除提示
            <img src="../images/model/model_img1.png" alt="" class="rt close"/>
        </div>
        <div class="modal_information">
            <img src="../images/model/model_img2.png" alt=""/>
            <span>请选择商品</span>
        </div>
    </div>
</div>
<div class="big">
    <form  name="" action="" method="post">
    <section id="section" >
        <div id="title">
            <b>购物车</b>
            <p>
                已选<span class="total color">0</span>件商品<span class="interval"></span>合计(不含运费):<span class="totalPrices color susum">0.00</span><span class="unit color">元</span>
            </p>
        </div>
        <div id="box" >
            <div id="content_box">
                <div class="imfor_top">
                    <div class="check_top">
                        <div class="all">
                            <span class="normal">
                                <img src="../images/cart/product_normal.png" alt=""/>
                            </span>  <input type="hidden" name="" value="">全选
                        </div>
                    </div>
                    <div class="pudc_top">商品</div>
                    <div class="pices_top">单价(元)</div>
                    <div class="num_top">数量</div>
                    <div class="totle_top">金额</div>
                    <div class="del_top">操作</div>
                </div>
                
               <c:forEach items="${listCarts}" var="c" varStatus="s">
           
  
    <input type="hidden" id="cid" value="${c.id}"   />
                <div class="imfor">
                    <div class="check">
                        <div class="Each">
                            <span class="normal">
                                <img src="../images/cart/product_normal.png" alt=""/>
                            </span>
                            <input type="hidden" name="" value="">
                        </div>
                    </div>
                    <div class="pudc">
                        <div class="pudc_information" id="${c.id}">
                            <img src="../images/cart/product_simg1.png" class="lf"/>
                            <input type="hidden" name="" value="${c.id}">
                        <span class="des lf">
                         ${listGoods[s.index].title}   ${listGoods[s.index].spec}
                         <!-- 联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD IPS)银 -->
                         
                              <!-- <input type="hidden" name="" value=""> -->
                        </span>
                            <p class="col lf"><span>颜色：</span><span class="color_des">  <input type="hidden" name="" value=""></span></p>
                        </div>
                    </div>
                    <div class="pices">
                        <p class="pices_des">达内专享价</p>
                        <p class="pices_information"><b>￥</b><span>${listGoods[s.index].price}  <input type="hidden" name="" value=""></span></p>
                    </div>
                     <div class="num"><span class="reduc">&nbsp;-&nbsp;</span><input type="text" value="${c.count}" ><span class="add">&nbsp;+&nbsp;</span></div>
                     <div class="totle">
                        <span>￥</span>
                        <span class="totle_information">${listGoods[s.index].title}</span>
                    </div>
                    <div class="del">
                        <div>
                            <img src="img/true.png" alt=""/>
                            <span>已移入收藏夹</span>
                        </div>
                         <a href="javascript:;" class="del_yr">移入收藏夹</a>
                       
                        <a href="javascript:;" class="del_d">删除</a>
                       <input id="cid" type="hidden" class="cid" value="${c.id}"   />
                    </div>
                </div>
                 </c:forEach> 
               <!--  <div class="imfor">
                    <div class="check">
                        <div class="Each">
                            <span class="normal">
                                <img src="../images/cart/product_normal.png" alt=""/>
                            </span>
                            <input type="hidden" name="" value="">
                        </div>
                    </div>
                    <div class="pudc">
                        <div class="pudc_information" id="pudcId3">
                            <img src="../images/cart/product_simg1.png" class="lf"/>
                            <input type="hidden" name="" value="">
                        <span class="des lf">
                            联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD IPS)银
                              <input type="hidden" name="" value="">
                        </span>
                            <p class="col lf"><span>颜色：</span><span class="color_des">深空灰  <input type="hidden" name="" value=""></span></p>
                        </div>
                    </div>
                    <div class="pices">
                        <p class="pices_des">达内专享价</p>
                        <p class="pices_information"><b>￥</b><span>4888.00  <input type="hidden" name="" value=""></span></p>
                    </div>
                    <div class="num"><span class="reduc">&nbsp;-&nbsp;</span><input type="text" value="1" ><span class="add">&nbsp;+&nbsp;</span></div>
                    <div class="totle">
                        <span>￥</span>
                        <span class="totle_information">4888.00</span>
                    </div>
                    <div class="del">
                        <div>
                            <img src="img/true.png" alt=""/>
                            <span>已移入收藏夹</span>
                        </div>
                         <a href="javascript:;" class="del_yr">移入收藏夹</a>
                       
                        <a href="javascript:;" class="del_d">删除</a>
                    </div>
                </div>
                <div class="imfor">
                    <div class="check">
                        <div class="Each">
                            <span class="normal">
                                <img src="../images/cart/product_normal.png" alt=""/>
                            </span>
                        </div>
                    </div>
                    <div class="pudc">
                        <div class="pudc_information" id="pudcId1">
                            <img src="../images/cart/product_simg1.png" class="lf"/>
                            <input type="hidden" name="" value="">
                         <span class="des lf">
                            联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD IPS)银
                             <input type="hidden" name="" value="">
                        </span>
                            <p class="col lf"><span>颜色：</span><span class="color_des">玫瑰金  <input type="hidden" name="" value=""></span></p>
                        </div>
                    </div>
                    <div class="pices">
                        <p class="pices_des">达内专享价</p>
                        <p class="pices_information"><b>￥</b><span>4888.00</span></p>
                    </div>
                    <div class="num"><span class="reduc">&nbsp;-&nbsp;</span><input type="text" value="1" /><span class="add">&nbsp;+&nbsp;</span></div>
                    <div class="totle">
                        <span>￥</span>
                        <span class="totle_information">4888.00</span>
                    </div>
                    <div class="del">
                       <div>
                            <img src="img/true.png" alt=""/>
                            <span>已移入收藏夹</span>
                        </div>
                         <a href="javascript:;" class="del_yr">移入收藏夹</a>
                       
                        <a href="javascript:;" class="del_d">删除</a>
                    </div>
                </div>
                <div class="imfor">
                    <div class="check">
                        <div class="Each">
                            <span class="normal"><img src="../images/cart/product_normal.png" alt=""/></span>
                        </div>
                    </div>
                    <div class="pudc">
                        <div class="pudc_information" id="pudcId2">
                            <img src="../images/cart/product_simg1.png" class="lf"/>
                            <input type="hidden" name="" value="">
                         <span class="des lf">
                            联想(Lenovo)YOGA5 PRO 标配版电脑(i5-7200u 8G 512G SSD FHD IPS)银
                               <input type="hidden" name="" value="">
                        </span>
                            <p class="col lf"><span>颜色：</span><span class="color_des">炫酷黑  <input type="hidden" name="" value=""></span></p>
                        </div>
                    </div>
                    <div class="pices">
                        <p class="pices_des">达内专享价</p>
                        <p class="pices_information"><b>￥</b><span>4888.00</span></p>
                    </div>
                    <div class="num"><span class="reduc">&nbsp;-&nbsp;</span><input type="text" value="1" /><span class="add">&nbsp;+&nbsp;</span></div>
                    <div class="totle">
                        <span>￥</span>
                        <span class="totle_information">4888.00</span>
                    </div>
                    <div class="del">
                        <div>
                           <img src="img/true.png" alt=""/>
                           <span>已移入收藏夹</span>
                       </div>
                        <a href="javascript:;" class="del_yr">移入收藏夹</a>
                      
                        <a href="javascript:;" class="del_d">删除</a>
                    </div>
                </div>
            </div> -->
            <div class="foot">
                <div class="foot_check">
                    <div class="all">
                        <span class="normal">
                                <img src="../images/cart/product_normal.png" alt=""/>
                            </span>  <input type="hidden" name="" value="">全选
                    </div>
                </div>
                <a href="javascript:;" class="foot_del">删除</a>
                <!--<a href="javascript:;" class="foot_yr">移入收藏夹</a>-->
                <div class="foot_qk">清空失效商品</div>
                <div class="foot_cash" id="go-buy">去结算</div>
                <div class="foot_tol"><span>合计(不含运费):</span><span  class="foot_pices susumOne">0.00</span><span class='foot_des'>元</span></div>
                <div class="foot_selected">
                    已选<span class="totalOne color">0</span>件商品
                </div>
            </div>
        </div>
    </section>
    </form>
    <div class="none" style="display: none">
        <p class="none_title">购物车</p>
        <div class="none_top"></div>
        <div class="none_content">
            <img src="../images/30.png" alt="" class="lf"/>
            <p class="lf">您的购物车竟然还是空哒( ⊙ o ⊙ )</p>
            <span class="lf">赶快去下单吧！</span>
            <a href="#" class="lf">去购物>></a>
        </div>

    </div>
</div>
<!-- 品质保障，私人定制等-->
<div id="foot_box">
    <div class="icon1 lf">
        <img src="../images/footer/icon1.png" alt=""/>

        <h3>品质保障</h3>
    </div>
    <div class="icon2 lf">
        <img src="../images/footer/icon2.png" alt=""/>

        <h3>私人定制</h3>
    </div>
    <div class="icon3 lf">
        <img src="../images/footer/icon3.png" alt=""/>

        <h3>学员特供</h3>
    </div>
    <div class="icon4 lf">
        <img src="../images/footer/icon4.png" alt=""/>

        <h3>专属特权</h3>
    </div>
</div>
<!-- 页面底部-->
<div class="foot_bj">
    <div id="foot">
        <div class="lf">
             <p class="footer1"><img src="../images/footer/logo.png" alt="" class=" footLogo"/></p>
             <p class="footer2"><img src="../images/footer/footerFont.png" alt=""/></p>
        </div>
        <div class="foot_left lf">
            <ul>
                <li><a href="#"><h3>买家帮助</h3></a></li>
                <li><a href="#">新手指南</a></li>
                <li><a href="#">服务保障</a></li>
                <li><a href="#">常见问题</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>商家帮助</h3></a></li>
                <li><a href="#">商家入驻</a></li>
                <li><a href="#">商家后台</a></li>
            </ul>
            <ul>
                <li><a href="#"><h3>关于我们</h3></a></li>
                <li><a href="#">关于达内</a></li>
                <li><a href="#">联系我们</a></li>
                <li>
                    <img src="../images/footer/wechat.png" alt=""/>
                    <img src="../images/footer/sinablog.png" alt=""/>
                </li>
            </ul>
        </div>
        <div class="service">
            <p>学子商城客户端</p>
            <img src="../images/footer/ios.png" class="lf">
            <img src="../images/footer/android.png" alt="" class="lf"/>
        </div>
        <div class="download">
            <img src="../images/footer/erweima.png">
        </div>
		<!-- 页面底部-备案号 #footer -->
        <div class="record">
            &copy;2017 达内集团有限公司 版权所有 京ICP证xxxxxxxxxxx
        </div>
    </div>
</div>
<script src="../js/jquery-3.1.1.min.js"></script>
<script src="../js/cart.js"></script>
<script src="../js/index.js"></script>
<script>
    <!-- 显示空购物车页面-->
    $(function(){
        if(!$(".imfor")) {
            $('#section').hide();
            $('.none').show();
        }
    })
    $("#go-buy").click(function(){
    	var str=[];
    	$('.Each>span').each(function(){
			if($(this).hasClass('true')){
				var id=$(this).parent().parent().next().children('.pudc_information').attr('id');
				str.push(id);
          console.log(str);
			}
		});
    	
    	
       // window.location.href="orderConfirm.html";
    })
</script>
</body>
</html>