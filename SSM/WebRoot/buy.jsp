<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>�������</title>
    <link rel="stylesheet" href="css/z_buy.css">
 <link rel="stylesheet" href="css/buy_footer.css">
   
  <script type="text/javascript">
  
  function l_submit(){
  
    location.href="addToCart";
  }
  function l_addToCart(){
  location.href="cart";
  
  
  }
   function l_login() {
      window.location.href="login.jsp";
     }
    function l_signup() {
        window.location.href="signup.jsp";
      }    

      function confirmStatus()
      {//��ȡ��̨������s2������<%%>��ʾ�ⷶΧ���Ƿ���������������
         <%  
          String username = (String)request.getParameter("username");
          String newUsername = "";
          if(username!=null)
          {
           newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
          }          
          %>        
             var name = '<%=newUsername%>';//���s2��js����s
             var o = document.getElementById("plogin");
             if(name!="")
             {
            o.innerHTML="��ӭ��";
             }
             
      }
    
         function l_my_order()
           {       
           var name = '<%=newUsername%>';//���s2��js����s
             var o = document.getElementById("plogin");
             if(name=="")
             {
                 window.location.href="login.jsp";
             }
         }
 

  function mOver(obj){
    obj.style.borderStyle="solid"
    obj.style.borderWidth="1px"
    obj.style.borderColor='#d7237e'
}
function mOut(obj){
    obj.style.width="64px"
    obj.style.height="64px"
    obj.style.borderStyle="solid"
    obj.style.borderWidth="1px"
    obj.style.borderColor='#e7e7e7'
}
function goodplayclick(obj) {
    document.getElementById('good0').src=obj.src;
}
function numadd(obj) {
    var num=document.getElementById('num')
    num.innerText=parseInt(num.innerText)+1;
}
function numsub(obj) {
    var num=document.getElementById('num')
    if(parseInt(num.innerText)>1)
        num.innerText=parseInt(num.innerText)-1;
}

function toDetail() {
    window.location.hash = "#gooddetail";
}
function onTopClick() {
    window.location.hash = "#gooddetail";
}
function toQuestion() {
    window.location.hash = "#goodquestion";
}
function onTopClick() {
    window.location.hash = "#gooddetail";
}

var g_selProvince;
var g_selCity;
var Provinces=new Array(
    new Array("110000","������"),
    new Array("120000","�����"),
    new Array("130000","�ӱ�ʡ"),
    new Array("140000","ɽ��ʡ"),
    new Array("150000","���ɹ�������"),
    new Array("210000","����ʡ"),
    new Array("220000","����ʡ"),
    new Array("230000","������ʡ"),
    new Array("310000","�Ϻ���"),
    new Array("320000","����ʡ"),
    new Array("330000","�㽭ʡ"),
    new Array("340000","����ʡ"),
    new Array("350000","����ʡ"),
    new Array("360000","����ʡ"),
    new Array("370000","ɽ��ʡ"),
    new Array("410000","����ʡ"),
    new Array("420000","����ʡ"),
    new Array("430000","����ʡ"),
    new Array("440000","�㶫ʡ"),
    new Array("450000","����׳��������"),
    new Array("460000","����ʡ"),
    new Array("500000","������"),
    new Array("510000","�Ĵ�ʡ"),
    new Array("520000","����ʡ"),
    new Array("530000","����ʡ"),
    new Array("540000","����������"),
    new Array("610000","����ʡ"),
    new Array("620000","����ʡ"),
    new Array("630000","�ຣʡ"),
    new Array("640000","���Ļ���������"),
    new Array("650000","�½�ά���������"),
    new Array("710000","̨��ʡ"),
    new Array("810000","����ر�������"),
    new Array("820000","�����ر�������")
);
var Citys=new Array(
    new Array("110100","����"),
    new Array("120100","���"),
    new Array("130101","ʯ��ׯ"),
    new Array("130201","��ɽ"),
    new Array("130301","�ػʵ�"),
    new Array("130701","�żҿ�"),
    new Array("130801","�е�"),
    new Array("131001","�ȷ�"),
    new Array("130401","����"),
    new Array("130501","��̨"),
    new Array("130601","����"),
    new Array("130901","����"),
    new Array("133001","��ˮ"),
    new Array("140101","̫ԭ"),
    new Array("140201","��ͬ"),
    new Array("140301","��Ȫ"),
    new Array("140501","����"),
    new Array("140601","˷��"),
    new Array("142201","����"),
    new Array("142331","��ʯ"),
    new Array("142401","�ܴ�"),
    new Array("142601","�ٷ�"),
    new Array("142701","�˳�"),
    new Array("140401","����"),
    new Array("150101","���ͺ���"),
    new Array("150201","��ͷ"),
    new Array("150301","�ں�"),
    new Array("152601","����"),
    new Array("152701","��ʤ"),
    new Array("152801","�ٺ�"),
    new Array("152921","����������"),
    new Array("150401","���"),
    new Array("152301","ͨ��"),
    new Array("152502","���ֺ���"),
    new Array("152101","������"),
    new Array("152201","��������"),
    new Array("210101","����"),
    new Array("210201","����"),
    new Array("210301","��ɽ"),
    new Array("210401","��˳"),
    new Array("210501","��Ϫ"),
    new Array("210701","����"),
    new Array("210801","Ӫ��"),
    new Array("210901","����"),
    new Array("211101","�̽�"),
    new Array("211201","����"),
    new Array("211301","����"),
    new Array("211401","����"),
    new Array("210601","����"),
    new Array("220101","����"),
    new Array("220201","����"),
    new Array("220301","��ƽ"),
    new Array("220401","��Դ"),
    new Array("220601","�뽭"),
    new Array("222301","�׳�"),
    new Array("222401","�Ӽ�"),
    new Array("220501","ͨ��"),
    new Array("230101","������"),
    new Array("230301","����"),
    new Array("230401","�׸�"),
    new Array("230501","˫Ѽɽ"),
    new Array("230701","����"),
    new Array("230801","��ľ˹"),
    new Array("230901","��̨��"),
    new Array("231001","ĵ����"),
    new Array("232301","�绯"),
    new Array("230201","�������"),
    new Array("230601","����"),
    new Array("232601","�ں�"),
    new Array("232700","�Ӹ����"),
    new Array("310100","�Ϻ�"),
    new Array("320101","�Ͼ�"),
    new Array("320201","����"),
    new Array("320301","����"),
    new Array("320401","����"),
    new Array("320501","����"),
    new Array("320600","��ͨ"),
    new Array("320701","���Ƹ�"),
    new Array("320801","����"),
    new Array("320901","�γ�"),
    new Array("321001","����"),
    new Array("321101","��"),
    new Array("330101","����"),
    new Array("330201","����"),
    new Array("330301","����"),
    new Array("330401","����"),
    new Array("330501","����"),
    new Array("330601","����"),
    new Array("330701","��"),
    new Array("330801","����"),
    new Array("330901","��ɽ"),
    new Array("332501","��ˮ"),
    new Array("332602","�ٺ�"),
    new Array("340101","�Ϸ�"),
    new Array("340201","�ߺ�"),
    new Array("340301","����"),
    new Array("340401","����"),
    new Array("340501","��ɽ"),
    new Array("340601","����"),
    new Array("340701","ͭ��"),
    new Array("340801","����"),
    new Array("341001","��ɽ"),
    new Array("342101","����"),
    new Array("342201","����"),
    new Array("342301","����"),
    new Array("342401","����"),
    new Array("342501","����"),
    new Array("342601","����"),
    new Array("342901","���"),
    new Array("350101","����"),
    new Array("350201","����"),
    new Array("350301","����"),
    new Array("350401","����"),
    new Array("350501","Ȫ��"),
    new Array("350601","����"),
    new Array("352101","��ƽ"),
    new Array("352201","����"),
    new Array("352601","����"),
    new Array("360101","�ϲ�"),
    new Array("360201","������"),
    new Array("362101","����"),
    new Array("360301","Ƽ��"),
    new Array("360401","�Ž�"),
    new Array("360501","����"),
    new Array("360601","ӥ̶"),
    new Array("362201","�˴�"),
    new Array("362301","����"),
    new Array("362401","����"),
    new Array("362502","�ٴ�"),
    new Array("370101","����"),
    new Array("370201","�ൺ"),
    new Array("370301","�Ͳ�"),
    new Array("370401","��ׯ"),
    new Array("370501","��Ӫ"),
    new Array("370601","��̨"),
    new Array("370701","Ϋ��"),
    new Array("370801","����"),
    new Array("370901","̩��"),
    new Array("371001","����"),
    new Array("371100","����"),
    new Array("372301","����"),
    new Array("372401","����"),
    new Array("372501","�ĳ�"),
    new Array("372801","����"),
    new Array("372901","����"),
    new Array("410101","֣��"),
    new Array("410201","����"),
    new Array("410301","����"),
    new Array("410401","ƽ��ɽ"),
    new Array("410501","����"),
    new Array("410601","�ױ�"),
    new Array("410701","����"),
    new Array("410801","����"),
    new Array("410901","���"),
    new Array("411001","���"),
    new Array("411101","���"),
    new Array("411201","����Ͽ"),
    new Array("412301","����"),
    new Array("412701","�ܿ�"),
    new Array("412801","פ���"),
    new Array("412901","����"),
    new Array("413001","����"),
    new Array("420101","�人"),
    new Array("420201","��ʯ"),
    new Array("420301","ʮ��"),
    new Array("420400","ɳ��"),
    new Array("420501","�˲�"),
    new Array("420601","�差"),
    new Array("420701","����"),
    new Array("420801","����"),
    new Array("422103","����"),
    new Array("422201","Т��"),
    new Array("422301","����"),
    new Array("422421","����"),
    new Array("422801","��ʩ"),
    new Array("430101","��ɳ"),
    new Array("430401","����"),
    new Array("430501","����"),
    new Array("432801","����"),
    new Array("432901","����"),
    new Array("430801","��ӹ"),
    new Array("433001","����"),
    new Array("433101","����"),
    new Array("430201","����"),
    new Array("430301","��̶"),
    new Array("430601","����"),
    new Array("430701","����"),
    new Array("432301","����"),
    new Array("432501","¦��"),
    new Array("440101","����"),
    new Array("440301","����"),
    new Array("441501","��β"),
    new Array("441301","����"),
    new Array("441601","��Դ"),
    new Array("440601","��ɽ"),
    new Array("441801","��Զ"),
    new Array("441901","��ݸ"),
    new Array("440401","�麣"),
    new Array("440701","����"),
    new Array("441201","����"),
    new Array("442001","��ɽ"),
    new Array("440801","տ��"),
    new Array("440901","ï��"),
    new Array("440201","�ع�"),
    new Array("440501","��ͷ"),
    new Array("441401","÷��"),
    new Array("441701","����"),
    new Array("450101","����"),
    new Array("450401","����"),
    new Array("452501","����"),
    new Array("450301","����"),
    new Array("452601","��ɫ"),
    new Array("452701","�ӳ�"),
    new Array("452802","����"),
    new Array("450201","����"),
    new Array("450501","����"),
    new Array("460100","����"),
    new Array("460200","����"),
    new Array("510101","�ɶ�"),
    new Array("513321","����"),
    new Array("513101","�Ű�"),
    new Array("513229","�����"),
    new Array("510301","�Թ�"),
    new Array("500100","����"),
    new Array("512901","�ϳ�"),
    new Array("510501","����"),
    new Array("510601","����"),
    new Array("510701","����"),
    new Array("510901","����"),
    new Array("511001","�ڽ�"),
    new Array("511101","��ɽ"),
    new Array("512501","�˱�"),
    new Array("510801","��Ԫ"),
    new Array("513021","����"),
    new Array("513401","����"),
    new Array("510401","��֦��"),
    new Array("500239","ǭ������������������"),
    new Array("520101","����"),
    new Array("520200","����ˮ"),
    new Array("522201","ͭ��"),
    new Array("522501","��˳"),
    new Array("522601","����"),
    new Array("522701","����"),
    new Array("522301","����"),
    new Array("522421","�Ͻ�"),
    new Array("522101","����"),
    new Array("530101","����"),
    new Array("530201","����"),
    new Array("532201","����"),
    new Array("532301","����"),
    new Array("532401","��Ϫ"),
    new Array("532501","����"),
    new Array("532621","��ɽ"),
    new Array("532721","˼é"),
    new Array("532101","��ͨ"),
    new Array("532821","����"),
    new Array("532901","����"),
    new Array("533001","��ɽ"),
    new Array("533121","º��"),
    new Array("533221","����������������"),
    new Array("533321","��ˮ"),
    new Array("533421","�е�"),
    new Array("533521","�ٲ�"),
    new Array("540101","����"),
    new Array("542121","����"),
    new Array("542221","�˶�"),
    new Array("542301","�տ���"),
    new Array("542421","����"),
    new Array("542523","����"),
    new Array("542621","��֥"),
    new Array("610101","����"),
    new Array("610201","ͭ��"),
    new Array("610301","����"),
    new Array("610401","����"),
    new Array("612101","μ��"),
    new Array("612301","����"),
    new Array("612401","����"),
    new Array("612501","����"),
    new Array("612601","�Ӱ�"),
    new Array("612701","����"),
    new Array("620101","����"),
    new Array("620401","����"),
    new Array("620301","���"),
    new Array("620501","��ˮ"),
    new Array("622201","��Ҵ"),
    new Array("622301","����"),
    new Array("622421","����"),
    new Array("622624","����"),
    new Array("622701","ƽ��"),
    new Array("622801","����"),
    new Array("622901","����"),
    new Array("623027","�ĺ�"),
    new Array("620201","������"),
    new Array("622102","��Ȫ"),
    new Array("630100","����"),
    new Array("632121","ƽ��"),
    new Array("632221","��Դ����������"),
    new Array("632321","ͬ��"),
    new Array("632521","����"),
    new Array("632621","����"),
    new Array("632721","����"),
    new Array("632802","�����"),
    new Array("640101","����"),
    new Array("640201","ʯ��ɽ"),
    new Array("642101","����"),
    new Array("642221","��ԭ"),
    new Array("650101","��³ľ��"),
    new Array("650201","��������"),
    new Array("652101","��³��"),
    new Array("652201","����"),
    new Array("652301","����"),
    new Array("652701","����"),
    new Array("652801","�����"),
    new Array("652901","������"),
    new Array("653001","��ͼʲ"),
    new Array("653101","��ʲ"),
    new Array("654101","����"),
    new Array("710001","̨��"),
    new Array("710002","��¡"),
    new Array("710020","̨��"),
    new Array("710019","����"),
    new Array("710008","̨��"),
    new Array("211001","����"),
    new Array("653201","����"),
    new Array("542200","����"),
    new Array("542600","��һ��"),
    new Array("820000","����"),
    new Array("810000","���")
);
function FillProvinces(selProvince)
{
    selProvince.options[0]=new Option("��ѡ��","000000");
    for(i=0;i<Provinces.length;i++)
    {
        selProvince.options[i+1]=new Option(Provinces[i][1],Provinces[i][0]);
    }
    selProvince.options[0].selected=true;
    selProvince.length=i+1;
}
function FillCitys(selCity,ProvinceCode)
{
    //if the province is a direct-managed city, like Beijing, shanghai, tianjin, chongqin,hongkong, macro
    //need not "��ѡ��ѡ��"
    if(ProvinceCode=="110000"||ProvinceCode=="120000"||ProvinceCode=="310000"
        ||ProvinceCode=="810000"||ProvinceCode=="820000"||ProvinceCode=="500000")
        count=0;
    else
    {selCity.options[0]=new Option("��ѡ��",ProvinceCode);
        count=1;}
    for(i=0;i<Citys.length;i++)
    {
        if(Citys[i][0].toString().substring(0,2)==ProvinceCode.substring(0,2))
        {
            selCity.options[count]=new Option(Citys[i][1],Citys[i][0]);
            count=count+1;
        }
    }
    selCity.options[0].selected=true;
    selCity.length=count;
}
function Province_onchange()
{
    FillCitys(g_selCity,g_selProvince.value);
}
function InitCitySelect(selProvince,selCity)
{
    //alert("begin");
    g_selProvince=selProvince;
    g_selCity=selCity;
    selProvince.onchange=Function("Province_onchange();");
    FillProvinces(selProvince);
    Province_onchange();
}
function InitCitySelect2(selProvince,selCity,CityCode)
{
    InitCitySelect(selProvince,selCity)
    for(i=0;i<selProvince.length;i++)
    {
        if(selProvince.options[i].value.substring(0,2)==CityCode.substring(0,2))
        {
            selProvince.options[i].selected=true;
        }
    }
    Province_onchange();
    for(i=0;i<selCity.length;i++)
    {
        if(selCity.options[i].value==CityCode)
        {
            selCity.options[i].selected=true;
        }
    }
}
  
  </script> 
   </head>
    <body> 
  
  <div class="body">


    <div class="liu">
        <div class ="header">
            <div class="header-inner" >          
                <div class="header-menu">
                 <div id="main-login" class="log-in" onclick="l_login()" ><span id ="plogin" >���¼</span> ${username}</div>
            <div class="sign-up" onclick="l_signup()">ע��</div>
            <div class="check-in">ǩ������</div>
            <div class="my-order" onclick="l_my_order()" >�ҵĶ���</div>
                    <div class="my-sale">
                        <span>�ҵ�����</span>
                        <div class="my-sale-content">
                            <a href="#">Ʒ���ղ�</a><br>
                            <a href="#">��Ʒ�ղ�</a><br>
                            <a href="#">�ҵ��㼣</a><br>
                        </div>
                    </div>
                    <div class="Member-club">
                        <span>��Ա���ֲ�</span>
                        <div class="Member-club-content">
                            <a href="#">���ֲ���ҳ</a><br>
                            <a href="#">ΨƷ�Ҷһ�</a><br>
                            <a href="#">��ѳ��</a><br>
                        </div>
                    </div>
                    <div class="customer-service">
                        <span>�ͻ�����</span>
                        <div class="customer-service-content">
                            <a href="#">��ϵ�ͷ�</a><br>
                            <a href="#">��������</a><br>
                            <a href="#">��������</a><br>
                            <a href="#">֪ʶ��ȨͶ��</a><br>
                        </div>
                    </div>
                    <div class="mobile">
                        <span>�ֻ���</span>
                        <div class="mobile-content">
                            <a href="#" ><img src="image/mobile_app.jpg" width="150" height="150"/></a><br>
                            <span>��ʱ�� ��ʱ��</span>
                        </div>
                    </div>

                </div>
                <div>
                    <div class="header-more">
                        <span>����</span>
                        <div class="header-more-content">
                            <a href="#">����ר��</a><br>
                            <a href="#">����������</a>
                            <a href="#">ΨƷ��</a>
                            <a href="#">֧��ר��</a><br>
                            <a href="#">��������</a><br>
                            <a href="#">Sell on vip</a>
                            <a href="#">Ʒ������</a>
                            <a href="#">�ٷ�����</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="goodup">
        <!--��Ʒչʾ-->
        <div class="goodplay">
            <img class="goodplay0" id="good0" src="${good.image}"/>
            <div class="goodplays">
                <img src="image/5800000000285-61_64x64_90.jpg" class="goodplay1" onmouseover="mOver(this)" onmouseout="mOut(this)"
                     onclick="goodplayclick(this)"/>
                <img src="image/5800000000285-62_64x64_90.jpg" class="goodplay2" onmouseover="mOver(this)" onmouseout="mOut(this)"
                     onclick="goodplayclick(this)"/>
                <img src="image/5800000000285-63_64x64_90.jpg" class="goodplay3" onmouseover="mOver(this)" onmouseout="mOut(this)"
                     onclick="goodplayclick(this)"/>
                <img src="image/5800000000285-63_64x64_90.jpg" class="goodplay4" onmouseover="mOver(this)" onmouseout="mOut(this)"
                     onclick="goodplayclick(this)"/>
                <img src="image/5800000000285-65_64x64_90.jpg" class="goodplay5" onmouseover="mOver(this)" onmouseout="mOut(this)"
                     onclick="goodplayclick(this)"/>
            </div>
            <div class="cut-off-rule1">-----------------------------------------------------------------</div>
            <ul class="goodplayquality">
                <li><a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportInsurance?wapid=vivac_767"
                       title="100%��Ʒ">100%��Ʒ</a></li>
                <li><a target="_blank" rel="nofollow" href="#"
                       title="���й�˾">���й�˾</a></li>
                <li><a target="_blank" rel="nofollow" href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825"
                       title="֧�ֻ���">֧�ֻ���</a></li>
            </ul>
        </div>
        <!--��Ʒ���ơ��۸񣬶���ѡ����빺�ﳵ���ָ��ߣ�Ʒ�ʱ�֤-->
        <div class="goodmsg">
            <!--��Ʒ����-->
            <div class="goodname">
                <div class="introduce">${good.name}</div>
                <div class="effect">${good.introduction}</div>
            </div>
            <!--��Ʒ�۸�-->
            <div class="pricebox">
                <span class="rmb">��</span>
                <span class="xianjia">${good.price}</span>
                <span class="lie">
                <span class="zhekou">1.6��</span>
                <div class="yuanjia">��941</div>
               </span>
                <span class="ps">�� ����ƷΪ������Ʒ����֧��ʹ��ȫ��ȯ��Ʒ��ȯ</span>
            </div>
            <!--����ѡ��-->
            <div class="z_orderchoose">
                <!--���͵�ַ-->
                <div class="z_orderplace">
                    <span class="z_delivery">����</span>
                    <div class="z_orderplacechoose">
                        <form name="profile" method="post" action="*">
                            <Select id="province" size="1" name="province">
                                <OPTION selected></OPTION>
                            </Select>
                            <Select id="city" size="1" name="city">
                                <OPTION selected></OPTION>
                            </Select>
                            <SCRIPT language=javascript>
                                InitCitySelect(document.profile.province,document.profile.city);
                            </SCRIPT>
                            <input type="submit">
                        </form>
                    </div>
                </div>
                <!--Ԥ���ʹ� -->
                <div class="z_deliverytime">
                    ���ڸ��Ԥ�������ʹ
                </div>
                <!--�˷�-->
                <div class="z_freight">
                    <div class="z_feight_ch">�˷�</div>
                    <div class="z_freight_money">��10</div> ��������288���˷ѣ�
                </div>
                <!--����-->
                <div class="z_ordernum">
                    <div class="z_ordernum_ch">����</div>
                    <button class="z_ordernum_btn1" onclick="numsub()">-</button>
                    <span class="num" id="num">1</span>
                    <button class="z_ordernum_btn2" onclick="numadd(this)">+</button>
                </div>
            </div>
            <!--���빺�ﳵ-->
              <form name = "form" method="post" action="addToCart"> 
   
                        <input  name = "username" type="hidden" value="${username}" >
                         <input  name = "id" type="hidden" value="${good.id}" >
                 <div class="addtocar" onclick="javascript:form.submit();">
                                                      ���빺�ﳵ
                 </div>
      		  </form>
            
            <!--�ָ���-->
            <div class="cut-off-rule2">----------------------------------------------------------------------------------------</div>
            <!--Ʒ�ʱ�֤-->
            <div class="qualitysafe">
                <div class="device">����</div>
                <div class="describe">����Ʒ֧�ֻ���������ǩ��7���ڿ����뻻��</div>
                <div class="exchangenotes">
                <span>������֪��
                    <br>1. ���ڹ���/�ֻ��ͻ������뻻������ʵ�Ļ���Ʒ����Ļ���Ʒ�����뻻����Ʒ��һ�£������軻����
                    <br>2. һ�Ŷ���ֻ�ܽ���һ�λ����������ظ����룬������������Ʒ����һ�����ύ������Ϣ��
                    <br>3. �����˷�ȫ�⣬��������Ʒ�Ļ��˷Ѽ�����Ʒ�ĳ��˷ѡ������ȵ渶�ؼ��˷ѣ���ǩ������Ʒ��ΨƷ�Ὣ����10ԪΨƷ�Ҳ����ĳ��˷ѣ�
                    <br>4. ����д������Ϣ��15���ڲֿ�û���յ�������Ʒ����Ϊ������������������ȡ����</span>
                </div>
            </div>
        </div>
    </div>

    <!--��Ʒ���顢��Ʒ��ѯ����������~~~������-->
    <div class="mid">
        <!-- �ն�ҳģ�鵼�� -->
        <div class="placeholder">
            <div class="detailTop-wrap">
                <ul class="list">
                    <li class="list-item" onclick="toDetail()">��Ʒ����</li>
                    <li class="list-item" onclick="toEvaluate"> ��Ʒ����
                        <span class="comment-tagcount">(<i class="commentCnt-count">0</i>)</span></li>
                    <li class="list-item" onclick="toQuestion">��Ʒ��ѯ</li>
                    <li class="list-item" onclick="toAboutus">��������</li>
                </ul>
            </div>
        </div>
        <!--��Ʒ���� -->
        <div class="gooddetail" id="gooddetail">
            <span style="color: #f10180; font-size: 23px">��Ʒ����</span>
            <span style="color: #999999; font-size: 23px">DETAIL</span>
            <div style="color: #d6d6d6; font-size: 8px; margin-top: 5px">////////////////////////////////////
                /////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////</div>
            <table class="detail-table">
                <tr>
                    <th class="tablelist">Ʒ�����ƣ�</th>
                    <td>��ʫ����</td>
                    <th class="tablelist">��Ʒ���ƣ�</th>
                    <td>��ʫ����EsteeLauder��͸�޻��۲�����˪ 15ml��װ С��ƿ ��˪ �޻����� ��������Ȧ</td></tr>
                <tr>
                    <th class="tablelist">���أ�</th>
                    <td>������Ӣ��������ʱ�ȣ�����������յ���ʵ��Ϊ׼��</td>
                    <th class="tablelist">��װ��ϸ��</th>
                    <td>��ʫ���켡͸�޻��۲�����˪15ml+�ʻ�������˪ 15ml+����������ĭ������ 30ml+�ʻ����ɹ���ˮ����ˬ�ͣ�30ml+�ʻ������۲���¶ 5ml</td>
                   </tr>
                <tr>
                    <th class="tablelist">��Ч�ڣ�</th>
                    <td>2020�꣨����ʱ�����յ���ʵ��Ϊ׼��</td>
                    <th class="tablelist">���</th>
                    <td>����</td>
                    </tr>
                <tr>
                    <th class="tablelist">���/��ע��</th>
                    <td>��װ����ͬ���ΰ�װ��ͬ���������յ�ʵ��Ϊ׼</td>
                    <th class="tablelist">��Ʒ��ţ�</th>
                    <td>T180613022836</td>
                </tr>
            </table>

            <span style="color: #f10180; font-size: 23px"; >��Ʒչʾ</span>
            <span style="color: #999999; font-size: 23px">IMAGE</span>
            <div style="color: #d6d6d6; font-size: 8px; margin-top: 5px">////////////////////////////////////
                /////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////</div>
            <div class="imgshow">
                <img src="image/f07277ccb3f74dc38169873e725b9ebf-110_1.jpg" alt="">
                <img src="image/50624a1e9eba42ccbc54ff4145600011-651.jpg" alt="">
                <img src="image/6bb409d962f0457aa105bfe51ef657c9-651.jpg" alt="">
                <img src="image/e012ce8e09a4411d9269e5d6ae97c298-651.jpg" alt="">
                <img src="image/c49dd00864804be795778e67e04a9221-651.jpg" alt="">
            </div>

        </div>
        <!--��Ʒ��ѯ-->
        <div class="goodquestion" id="goodquestion">
            <div height="30px";line-height="30px";font-weight="700";font-size="14px";>����ǰ�������⣬����ΨƷ����ѯ��</div>
            <br>
            <img src="image/YQ~HXO5E4%60H~MER_GR1QG%5B6.png" alt="">
            <div height="30px";line-height="30px";font-weight="700";font-size="14px";><b>�˻��������£�</b></div>
            <br>
            <img src="image/goods_return_img_v1.png" alt="">
        </div>
        <!--��������-->
        <div></div>
    </div>
</div>

<div id="footer" class="footer">
    <!--<div class="footer-inner">
        <ul class="footer-vip">
            <li class="footer-vip-ico01">
                <img src="weipinhuicopy_img/�й�����.png" alt=""><br> �й�����</li>
            <li class="footer-vip-ico02">
                <img src="weipinhuicopy_img/ȫ��ֱ��.png" alt=""><br> ȫ��ֱ��</li>
            <li class="footer-vip-ico03">
                <img src="weipinhuicopy_img/һ�ֻ�Դ.png" alt=""><br> һ�ֻ�Դ</li>
            <li class="footer-vip-ico04">
                <img src="weipinhuicopy_img/���ȫ��.png" alt=""><br> ���ȫ��</li>
            <li class="footer-vip-ico05">
                <img src="weipinhuicopy_img/��Ӫ����.png" alt=""><br> ��Ӫ����</li>
            <li class="footer-vip-ico06">
                <img src="weipinhuicopy_img/��������.png" alt=""><br> ��������</li>
            <li class="footer-vip-ico07">
                <img src="weipinhuicopy_img/�ٻ�����.png" alt=""><br> �ٻ�����</li>
            <li class="footer-vip-ico08">
                <img src="weipinhuicopy_img/�����˻�.png" alt=""><br> �����˻�</li>
            <li class="footer-vip-ico09">
                <img src="weipinhuicopy_img/��ǧ����.png" alt=""><br> ��ǧ����</li>
            <li class="footer-vip-ico10">
                <img src="weipinhuicopy_img/Ȩ������.png" alt=""><br> Ȩ������</li>
        </ul>
    </div>-->
    <div class="footer-icon">
        <img src="image/��ǩ.png" alt="">
    </div>
    <br>
    <div class="footer-list">
        <dl class="link-anim">
            <dt>������</dt>
            <dd>
                <a href="https://viva.vip.com/act/supportInsurance?wapid=vivac_767" target="_blank"
                   rel="nofollow">��Ʒ��֤</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">7�������ɷ�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">�˻����˷�</a>
            </dd>
            <dd>
                <a href="https://acs.vip.com/" target="_blank" rel="nofollow">7x15Сʱ�ͻ�����</a>
            </dd>
            <dd>
                <a href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825" target="_blank"
                   rel="nofollow">7�����������Ļ�</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>����ָ��</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=308" target="_blank"
                   rel="nofollow">������ʾ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=330" target="_blank"
                   rel="nofollow">��������</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=206" target="_blank"
                   rel="nofollow">��Աע��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=329" target="_blank"
                   rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=104" target="_blank"
                   rel="nofollow">�ջ���Ʒ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=69" target="_blank" rel="nofollow">��Ա�ȼ�</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>֧����ʽ</dt>
            <dd>
                <a href="https://mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
                   target="_blank" rel="nofollow">���֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">23����������֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=37" target="_blank" rel="nofollow">��������</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">֧������������֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">���ÿ�֧��</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=335" target="_blank"
                   rel="nofollow">��Ǯ֧��</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>���ͷ�ʽ</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank" rel="nofollow">ȫ����288Ԫ���˷�</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank"
                   rel="nofollow">���ͷ�Χ���˷�</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=63" target="_blank"
                   rel="nofollow">�����ǩ��</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>�ۺ����</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=74" target="_blank" rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=236" target="_blank"
                   rel="nofollow">�˻�����</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=317" target="_blank"
                   rel="nofollow">�˿ʽ��ʱЧ</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=146" target="_blank" rel="nofollow">��������</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="tc last">
            <dt>ΨƷ��APP��ά��</dt>
            <dd>
                <img class="lazy" src="../image/page_bottom_dl_n.png" width="100" height="100" alt="ΨƷ��APP��ά��">
            </dd>
            <dd>����ΨƷ���ƶ�APP</dd>
        </dl>
    </div>
    <br>
    <div class="footer-infor">
        <p class="footer-infor-link">
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContact-pc?wapid=vivac_806"
               title="��������">��������</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContactEn-pc?wapid=vivac_799"
               title="About us">About us</a>|
            <a target="_blank" rel="nofollow" href="http://ir.vip.com/" title="Investor Relations">Investor
                Relations</a>|
            <a target="_blank" rel="nofollow" href="https://blog.vip.com/?r=/Blog/HTML_showList/sort_id//29"
               title="ý�屨��">ý�屨��</a>|
            <a target="_blank" rel="nofollow" href="https://vis.vip.com/stipulate/" title="Ʒ������">Ʒ������</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportPrivacy-pc?wapid=vivac_804"
               title="��˽����">��˽����</a>|
            <a target="_blank" rel="nofollow" href="http://job.vip.com/" title="ΨƷ��Ƹ">ΨƷ��Ƹ</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportFoundationIndex-pc?wapid=vivac_807"
               title="365���Ļ���">365���Ļ���</a>|
            <a target="_blank" rel="nofollow" href="https://vipcard.vip.com/" title="ΨƷ��">ΨƷ��</a>|
            <a target="_blank" href="https://viva.vip.com/act/supportContactUs-pc?wapid=vivac_800" title="��ϵ����">��ϵ����</a>
        </p>
        <p class="footer-infor-txt">
            Copyright ? 2008-2018 vip.com��All Rights Reserved&nbsp;&nbsp;ʹ�ñ���վ����ʾ����<a rel="nofollow"
                                                                                      href="https://viva.vip.com/act/supportClause-pc?wapid=vivac_802">ΨƷ���û�Э��</a>����Ȩ����
            <a rel="nofollow" href="https://www.vip.com/">����ΨƷ������������޹�˾</a><br><a
                href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010302111111" target="_blank"><img
                src="../image/police_icon.png" width="14" height="14" style="margin:2px 3px 0 0;">����������
            44010302111111��</a>&nbsp;&nbsp;<a rel="nofollow"
                                              href="http://www.miibeian.gov.cn/publish/query/indexFirst.action">��ICP��08114786��</a>
            <a rel="nofollow" target="_blank"
               href="https://viva.vip.com/act/actValueAddedService-pc">��ֵҵ��Ӫ���֤����B2-20170777 </a><a
                rel="nofollow"
                href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/61e6abe320e7462baf61aab32a67f256">�����Ļ���Ӫ���֤�������ġ�2015��1528-229</a><br><a
                rel="nofollow" href="https://viva.vip.com/act/actBusinessLicense-pc?wapid=vivac_813">��Ӫ���徭Ӫ֤��</a>&nbsp;&nbsp;<a
                href="https://help.vip.com/themelist.php?type=detail&amp;id=475" target="_blank"
                rel="nofollow">���ռ����Ϣ</a>&nbsp;&nbsp;<a rel="nofollow"
                                                        href="https://viva.vip.com/act/actDrugLicense-pc?wapid=vivac_814">������ҩƷ���׷����ʸ�֤����C20140002��</a>
        </p>
    </div>
</div>  
  </body>
</html>
