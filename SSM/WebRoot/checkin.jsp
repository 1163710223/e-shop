<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>��̳�ǩ��</title>
    <link rel="stylesheet" type="text/css" href="css/s_checkin_user_style.css" />

    <!--�����㶯������ʽ-->
   <link rel="stylesheet" type="text/css" href="css/s_checkin_layer.css" media="all" />
    <script type="text/javascript">
     
    </script> 
  </head>
  <body> 
  <div class="qt_all_bg">

	<div class="q_ta_div">
		<div class="q_ta_box">
			<h2>${username}��ǩ��</h2>
			<p>�ۼ�${checkinDayNums}��</p>
		</div>
	</div>
	
	<div class="q_tb_div">
	
		<div class="q_tb_box">
			<span ><i></i>��һ</span>
			<em></em>
			<span ><i></i>�ܶ�</span>
			<em></em>
			<span><i></i>����</span>
			<em></em>
			<span ><i></i>����</span>
			<em></em>
			<span class="c_xz"><i></i>����</span>
			<em></em>
			<span><i></i>����</span>
			<em></em>
			<span class="s_r"><i></i>����</span>
		</div>
	
	</div>

</div>


<div class="qt_all_mian">
	<div class="qt_tit_div">
		<span>�ۼ�ǩ���н�</span>
	</div>
	<div class="qt_box_div">
		<ul class="clearfix">
			<li class="li_a"><a class="xz_a">����ȡ</a></li>
			<li class="li_b"><a id="now_zc">δ��ȡ</a></li>
			<li class="li_c"><a >δ��ȡ</a></li>
		</ul>
	</div>

	<div class="qt_tit_div">
		<span>ǩ������</span>
	</div>

	<div class="qt_tit_bot">
		<h2><i></i></h2>
		<ul>
			<em>1</em>
			<li>��̳���վ�û�����վ����ǩ����ǩ������Ϊ7�죺</li>
		</ul>
		<ul>
			<em>2</em>
			<li>һ��ǩ������Ϊ1�Ρ�3�Ρ�7�ν��ֱ�õ�һ����ͬ���ĺ����</li>
		</ul>
		<ul>
			<em>3</em>
			<li>����ǩ��1�οɵõ�һ����50��5�����ǩ��3�οɵõ�һ����200��20�ĺ����ǩ��7�οɵõ�һ����500��50�ĺ����</li>
		</ul>
		<ul>
			<em>4</em>
			<li>���к���Է��ź�7����Ч��</li>
		</ul>
		<ul>
			<em>5</em>
			<li>������ս���Ȩ�ɾ����߲�Ʊ���У���������ϵ�ͷ���</li>
		</ul>
	</div>
</div>



<div id="ljzc_pup" class="hide">
	<div class="zc_pup_tit">
		<h2>��ϲ��</h2>
		<a  href="javascript:layer.closeAll();"></a>
	</div>
	<div class="zc_pup_box">
		<dl>  
			<em>2</em>
			<dt>�ۼ�3��</dt>
			<dd>��20��2ʹ��</dd>
		</dl>
		<p>��ϲ�������<span>20��2</span>�ĺ��</p>
		<a>֪����</a>
	</div>
</div>
        
        
<script type="text/javascript" src="js/jquery-1.8.2.min.js"></script> 
<script type="text/javascript" src="js/layer.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$('#now_zc').on('click', function() {
		var url = $(this).attr('url');
		var index = layer.open({
			type: 1,
			title: false,
			closeBtn: false,
			shadeClose: true,
			area: '412px',
			offset: '25%',
			content: $('#ljzc_pup')
		});
	});
});
</script>    
  </body>
</html>
