<%@ page language="java" import="java.util.*" pageEncoding="gbk"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head> 
    <title>购物界面</title>
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
      {//获取后台参数给s2变量，<%%>表示这范围内是服务器解析的语言
         <%  
          String username = (String)request.getParameter("username");
          String newUsername = "";
          if(username!=null)
          {
           newUsername = new String(username.getBytes("iso-8859-1"),"gbk");
          }          
          %>        
             var name = '<%=newUsername%>';//输出s2给js变量s
             var o = document.getElementById("plogin");
             if(name!="")
             {
            o.innerHTML="欢迎您";
             }
             
      }
    
         function l_my_order()
           {       
           var name = '<%=newUsername%>';//输出s2给js变量s
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
    new Array("110000","北京市"),
    new Array("120000","天津市"),
    new Array("130000","河北省"),
    new Array("140000","山西省"),
    new Array("150000","内蒙古自治区"),
    new Array("210000","辽宁省"),
    new Array("220000","吉林省"),
    new Array("230000","黑龙江省"),
    new Array("310000","上海市"),
    new Array("320000","江苏省"),
    new Array("330000","浙江省"),
    new Array("340000","安徽省"),
    new Array("350000","福建省"),
    new Array("360000","江西省"),
    new Array("370000","山东省"),
    new Array("410000","河南省"),
    new Array("420000","湖北省"),
    new Array("430000","湖南省"),
    new Array("440000","广东省"),
    new Array("450000","广西壮族自治区"),
    new Array("460000","海南省"),
    new Array("500000","重庆市"),
    new Array("510000","四川省"),
    new Array("520000","贵州省"),
    new Array("530000","云南省"),
    new Array("540000","西藏自治区"),
    new Array("610000","陕西省"),
    new Array("620000","甘肃省"),
    new Array("630000","青海省"),
    new Array("640000","宁夏回族自治区"),
    new Array("650000","新疆维吾尔自治区"),
    new Array("710000","台湾省"),
    new Array("810000","香港特别行政区"),
    new Array("820000","澳门特别行政区")
);
var Citys=new Array(
    new Array("110100","北京"),
    new Array("120100","天津"),
    new Array("130101","石家庄"),
    new Array("130201","唐山"),
    new Array("130301","秦皇岛"),
    new Array("130701","张家口"),
    new Array("130801","承德"),
    new Array("131001","廊坊"),
    new Array("130401","邯郸"),
    new Array("130501","邢台"),
    new Array("130601","保定"),
    new Array("130901","沧州"),
    new Array("133001","衡水"),
    new Array("140101","太原"),
    new Array("140201","大同"),
    new Array("140301","阳泉"),
    new Array("140501","晋城"),
    new Array("140601","朔州"),
    new Array("142201","忻州"),
    new Array("142331","离石"),
    new Array("142401","榆次"),
    new Array("142601","临汾"),
    new Array("142701","运城"),
    new Array("140401","长治"),
    new Array("150101","呼和浩特"),
    new Array("150201","包头"),
    new Array("150301","乌海"),
    new Array("152601","集宁"),
    new Array("152701","东胜"),
    new Array("152801","临河"),
    new Array("152921","阿拉善左旗"),
    new Array("150401","赤峰"),
    new Array("152301","通辽"),
    new Array("152502","锡林浩特"),
    new Array("152101","海拉尔"),
    new Array("152201","乌兰浩特"),
    new Array("210101","沈阳"),
    new Array("210201","大连"),
    new Array("210301","鞍山"),
    new Array("210401","抚顺"),
    new Array("210501","本溪"),
    new Array("210701","锦州"),
    new Array("210801","营口"),
    new Array("210901","阜新"),
    new Array("211101","盘锦"),
    new Array("211201","铁岭"),
    new Array("211301","朝阳"),
    new Array("211401","锦西"),
    new Array("210601","丹东"),
    new Array("220101","长春"),
    new Array("220201","吉林"),
    new Array("220301","四平"),
    new Array("220401","辽源"),
    new Array("220601","浑江"),
    new Array("222301","白城"),
    new Array("222401","延吉"),
    new Array("220501","通化"),
    new Array("230101","哈尔滨"),
    new Array("230301","鸡西"),
    new Array("230401","鹤岗"),
    new Array("230501","双鸭山"),
    new Array("230701","伊春"),
    new Array("230801","佳木斯"),
    new Array("230901","七台河"),
    new Array("231001","牡丹江"),
    new Array("232301","绥化"),
    new Array("230201","齐齐哈尔"),
    new Array("230601","大庆"),
    new Array("232601","黑河"),
    new Array("232700","加格达奇"),
    new Array("310100","上海"),
    new Array("320101","南京"),
    new Array("320201","无锡"),
    new Array("320301","徐州"),
    new Array("320401","常州"),
    new Array("320501","苏州"),
    new Array("320600","南通"),
    new Array("320701","连云港"),
    new Array("320801","淮阴"),
    new Array("320901","盐城"),
    new Array("321001","扬州"),
    new Array("321101","镇江"),
    new Array("330101","杭州"),
    new Array("330201","宁波"),
    new Array("330301","温州"),
    new Array("330401","嘉兴"),
    new Array("330501","湖州"),
    new Array("330601","绍兴"),
    new Array("330701","金华"),
    new Array("330801","衢州"),
    new Array("330901","舟山"),
    new Array("332501","丽水"),
    new Array("332602","临海"),
    new Array("340101","合肥"),
    new Array("340201","芜湖"),
    new Array("340301","蚌埠"),
    new Array("340401","淮南"),
    new Array("340501","马鞍山"),
    new Array("340601","淮北"),
    new Array("340701","铜陵"),
    new Array("340801","安庆"),
    new Array("341001","黄山"),
    new Array("342101","阜阳"),
    new Array("342201","宿州"),
    new Array("342301","滁州"),
    new Array("342401","六安"),
    new Array("342501","宣州"),
    new Array("342601","巢湖"),
    new Array("342901","贵池"),
    new Array("350101","福州"),
    new Array("350201","厦门"),
    new Array("350301","莆田"),
    new Array("350401","三明"),
    new Array("350501","泉州"),
    new Array("350601","漳州"),
    new Array("352101","南平"),
    new Array("352201","宁德"),
    new Array("352601","龙岩"),
    new Array("360101","南昌"),
    new Array("360201","景德镇"),
    new Array("362101","赣州"),
    new Array("360301","萍乡"),
    new Array("360401","九江"),
    new Array("360501","新余"),
    new Array("360601","鹰潭"),
    new Array("362201","宜春"),
    new Array("362301","上饶"),
    new Array("362401","吉安"),
    new Array("362502","临川"),
    new Array("370101","济南"),
    new Array("370201","青岛"),
    new Array("370301","淄博"),
    new Array("370401","枣庄"),
    new Array("370501","东营"),
    new Array("370601","烟台"),
    new Array("370701","潍坊"),
    new Array("370801","济宁"),
    new Array("370901","泰安"),
    new Array("371001","威海"),
    new Array("371100","日照"),
    new Array("372301","滨州"),
    new Array("372401","德州"),
    new Array("372501","聊城"),
    new Array("372801","临沂"),
    new Array("372901","菏泽"),
    new Array("410101","郑州"),
    new Array("410201","开封"),
    new Array("410301","洛阳"),
    new Array("410401","平顶山"),
    new Array("410501","安阳"),
    new Array("410601","鹤壁"),
    new Array("410701","新乡"),
    new Array("410801","焦作"),
    new Array("410901","濮阳"),
    new Array("411001","许昌"),
    new Array("411101","漯河"),
    new Array("411201","三门峡"),
    new Array("412301","商丘"),
    new Array("412701","周口"),
    new Array("412801","驻马店"),
    new Array("412901","南阳"),
    new Array("413001","信阳"),
    new Array("420101","武汉"),
    new Array("420201","黄石"),
    new Array("420301","十堰"),
    new Array("420400","沙市"),
    new Array("420501","宜昌"),
    new Array("420601","襄樊"),
    new Array("420701","鄂州"),
    new Array("420801","荆门"),
    new Array("422103","黄州"),
    new Array("422201","孝感"),
    new Array("422301","咸宁"),
    new Array("422421","江陵"),
    new Array("422801","恩施"),
    new Array("430101","长沙"),
    new Array("430401","衡阳"),
    new Array("430501","邵阳"),
    new Array("432801","郴州"),
    new Array("432901","永州"),
    new Array("430801","大庸"),
    new Array("433001","怀化"),
    new Array("433101","吉首"),
    new Array("430201","株洲"),
    new Array("430301","湘潭"),
    new Array("430601","岳阳"),
    new Array("430701","常德"),
    new Array("432301","益阳"),
    new Array("432501","娄底"),
    new Array("440101","广州"),
    new Array("440301","深圳"),
    new Array("441501","汕尾"),
    new Array("441301","惠州"),
    new Array("441601","河源"),
    new Array("440601","佛山"),
    new Array("441801","清远"),
    new Array("441901","东莞"),
    new Array("440401","珠海"),
    new Array("440701","江门"),
    new Array("441201","肇庆"),
    new Array("442001","中山"),
    new Array("440801","湛江"),
    new Array("440901","茂名"),
    new Array("440201","韶关"),
    new Array("440501","汕头"),
    new Array("441401","梅州"),
    new Array("441701","阳江"),
    new Array("450101","南宁"),
    new Array("450401","梧州"),
    new Array("452501","玉林"),
    new Array("450301","桂林"),
    new Array("452601","百色"),
    new Array("452701","河池"),
    new Array("452802","钦州"),
    new Array("450201","柳州"),
    new Array("450501","北海"),
    new Array("460100","海口"),
    new Array("460200","三亚"),
    new Array("510101","成都"),
    new Array("513321","康定"),
    new Array("513101","雅安"),
    new Array("513229","马尔康"),
    new Array("510301","自贡"),
    new Array("500100","重庆"),
    new Array("512901","南充"),
    new Array("510501","泸州"),
    new Array("510601","德阳"),
    new Array("510701","绵阳"),
    new Array("510901","遂宁"),
    new Array("511001","内江"),
    new Array("511101","乐山"),
    new Array("512501","宜宾"),
    new Array("510801","广元"),
    new Array("513021","达县"),
    new Array("513401","西昌"),
    new Array("510401","攀枝花"),
    new Array("500239","黔江土家族苗族自治县"),
    new Array("520101","贵阳"),
    new Array("520200","六盘水"),
    new Array("522201","铜仁"),
    new Array("522501","安顺"),
    new Array("522601","凯里"),
    new Array("522701","都匀"),
    new Array("522301","兴义"),
    new Array("522421","毕节"),
    new Array("522101","遵义"),
    new Array("530101","昆明"),
    new Array("530201","东川"),
    new Array("532201","曲靖"),
    new Array("532301","楚雄"),
    new Array("532401","玉溪"),
    new Array("532501","个旧"),
    new Array("532621","文山"),
    new Array("532721","思茅"),
    new Array("532101","昭通"),
    new Array("532821","景洪"),
    new Array("532901","大理"),
    new Array("533001","保山"),
    new Array("533121","潞西"),
    new Array("533221","丽江纳西族自治县"),
    new Array("533321","泸水"),
    new Array("533421","中甸"),
    new Array("533521","临沧"),
    new Array("540101","拉萨"),
    new Array("542121","昌都"),
    new Array("542221","乃东"),
    new Array("542301","日喀则"),
    new Array("542421","那曲"),
    new Array("542523","噶尔"),
    new Array("542621","林芝"),
    new Array("610101","西安"),
    new Array("610201","铜川"),
    new Array("610301","宝鸡"),
    new Array("610401","咸阳"),
    new Array("612101","渭南"),
    new Array("612301","汉中"),
    new Array("612401","安康"),
    new Array("612501","商州"),
    new Array("612601","延安"),
    new Array("612701","榆林"),
    new Array("620101","兰州"),
    new Array("620401","白银"),
    new Array("620301","金昌"),
    new Array("620501","天水"),
    new Array("622201","张掖"),
    new Array("622301","武威"),
    new Array("622421","定西"),
    new Array("622624","成县"),
    new Array("622701","平凉"),
    new Array("622801","西峰"),
    new Array("622901","临夏"),
    new Array("623027","夏河"),
    new Array("620201","嘉峪关"),
    new Array("622102","酒泉"),
    new Array("630100","西宁"),
    new Array("632121","平安"),
    new Array("632221","门源回族自治县"),
    new Array("632321","同仁"),
    new Array("632521","共和"),
    new Array("632621","玛沁"),
    new Array("632721","玉树"),
    new Array("632802","德令哈"),
    new Array("640101","银川"),
    new Array("640201","石嘴山"),
    new Array("642101","吴忠"),
    new Array("642221","固原"),
    new Array("650101","乌鲁木齐"),
    new Array("650201","克拉玛依"),
    new Array("652101","吐鲁番"),
    new Array("652201","哈密"),
    new Array("652301","昌吉"),
    new Array("652701","博乐"),
    new Array("652801","库尔勒"),
    new Array("652901","阿克苏"),
    new Array("653001","阿图什"),
    new Array("653101","喀什"),
    new Array("654101","伊宁"),
    new Array("710001","台北"),
    new Array("710002","基隆"),
    new Array("710020","台南"),
    new Array("710019","高雄"),
    new Array("710008","台中"),
    new Array("211001","辽阳"),
    new Array("653201","和田"),
    new Array("542200","泽当镇"),
    new Array("542600","八一镇"),
    new Array("820000","澳门"),
    new Array("810000","香港")
);
function FillProvinces(selProvince)
{
    selProvince.options[0]=new Option("请选择","000000");
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
    //need not "请选择选项"
    if(ProvinceCode=="110000"||ProvinceCode=="120000"||ProvinceCode=="310000"
        ||ProvinceCode=="810000"||ProvinceCode=="820000"||ProvinceCode=="500000")
        count=0;
    else
    {selCity.options[0]=new Option("请选择",ProvinceCode);
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
                 <div id="main-login" class="log-in" onclick="l_login()" ><span id ="plogin" >请登录</span> ${username}</div>
            <div class="sign-up" onclick="l_signup()">注册</div>
            <div class="check-in">签到有礼</div>
            <div class="my-order" onclick="l_my_order()" >我的订单</div>
                    <div class="my-sale">
                        <span>我的特卖</span>
                        <div class="my-sale-content">
                            <a href="#">品牌收藏</a><br>
                            <a href="#">商品收藏</a><br>
                            <a href="#">我的足迹</a><br>
                        </div>
                    </div>
                    <div class="Member-club">
                        <span>会员俱乐部</span>
                        <div class="Member-club-content">
                            <a href="#">俱乐部首页</a><br>
                            <a href="#">唯品币兑换</a><br>
                            <a href="#">免费抽大奖</a><br>
                        </div>
                    </div>
                    <div class="customer-service">
                        <span>客户服务</span>
                        <div class="customer-service-content">
                            <a href="#">联系客服</a><br>
                            <a href="#">帮助中心</a><br>
                            <a href="#">服务中心</a><br>
                            <a href="#">知识产权投诉</a><br>
                        </div>
                    </div>
                    <div class="mobile">
                        <span>手机版</span>
                        <div class="mobile-content">
                            <a href="#" ><img src="image/mobile_app.jpg" width="150" height="150"/></a><br>
                            <span>随时逛 及时抢</span>
                        </div>
                    </div>

                </div>
                <div>
                    <div class="header-more">
                        <span>更多</span>
                        <div class="header-more-content">
                            <a href="#">合作专区</a><br>
                            <a href="#">联名卡申请</a>
                            <a href="#">唯品卡</a>
                            <a href="#">支付专区</a><br>
                            <a href="#">关于我们</a><br>
                            <a href="#">Sell on vip</a>
                            <a href="#">品牌招商</a>
                            <a href="#">官方博客</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="goodup">
        <!--商品展示-->
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
                       title="100%正品">100%正品</a></li>
                <li><a target="_blank" rel="nofollow" href="#"
                       title="上市公司">上市公司</a></li>
                <li><a target="_blank" rel="nofollow" href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825"
                       title="支持换货">支持换货</a></li>
            </ul>
        </div>
        <!--商品名称、价格，订单选项，加入购物车，分割线，品质保证-->
        <div class="goodmsg">
            <!--商品名称-->
            <div class="goodname">
                <div class="introduce">${good.name}</div>
                <div class="effect">${good.introduction}</div>
            </div>
            <!--商品价格-->
            <div class="pricebox">
                <span class="rmb">￥</span>
                <span class="xianjia">${good.price}</span>
                <span class="lie">
                <span class="zhekou">1.6折</span>
                <div class="yuanjia">￥941</div>
               </span>
                <span class="ps">· 该商品为特殊商品，不支持使用全场券、品类券</span>
            </div>
            <!--订单选项-->
            <div class="z_orderchoose">
                <!--配送地址-->
                <div class="z_orderplace">
                    <span class="z_delivery">配送</span>
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
                <!--预计送达 -->
                <div class="z_deliverytime">
                    现在付款，预计明日送达！
                </div>
                <!--运费-->
                <div class="z_freight">
                    <div class="z_feight_ch">运费</div>
                    <div class="z_freight_money">￥10</div> （订单满288免运费）
                </div>
                <!--数量-->
                <div class="z_ordernum">
                    <div class="z_ordernum_ch">数量</div>
                    <button class="z_ordernum_btn1" onclick="numsub()">-</button>
                    <span class="num" id="num">1</span>
                    <button class="z_ordernum_btn2" onclick="numadd(this)">+</button>
                </div>
            </div>
            <!--加入购物车-->
              <form name = "form" method="post" action="addToCart"> 
   
                        <input  name = "username" type="hidden" value="${username}" >
                         <input  name = "id" type="hidden" value="${good.id}" >
                 <div class="addtocar" onclick="javascript:form.submit();">
                                                      加入购物车
                 </div>
      		  </form>
            
            <!--分割线-->
            <div class="cut-off-rule2">----------------------------------------------------------------------------------------</div>
            <!--品质保证-->
            <div class="qualitysafe">
                <div class="device">服务</div>
                <div class="describe">该商品支持换货，订单签收7天内可申请换货</div>
                <div class="exchangenotes">
                <span>换货须知：
                    <br>1. 请在官网/手机客户端申请换货并如实寄回商品，如寄回商品与申请换货商品不一致，将不予换货；
                    <br>2. 一张订单只能进行一次换货，不能重复申请，如需更换多件商品，请一次性提交换货信息；
                    <br>3. 换货运费全免，包括旧商品寄回运费及新商品寄出运费。请您先垫付回寄运费，待签收新商品后，唯品会将发放10元唯品币补偿寄出运费；
                    <br>4. 如填写换货信息后，15天内仓库没有收到换货商品，视为放弃换货，换货申请取消。</span>
                </div>
            </div>
        </div>
    </div>

    <!--商品详情、商品咨询、关于我们~~~导航栏-->
    <div class="mid">
        <!-- 终端页模块导航 -->
        <div class="placeholder">
            <div class="detailTop-wrap">
                <ul class="list">
                    <li class="list-item" onclick="toDetail()">商品详情</li>
                    <li class="list-item" onclick="toEvaluate"> 商品评价
                        <span class="comment-tagcount">(<i class="commentCnt-count">0</i>)</span></li>
                    <li class="list-item" onclick="toQuestion">商品咨询</li>
                    <li class="list-item" onclick="toAboutus">关于我们</li>
                </ul>
            </div>
        </div>
        <!--商品详情 -->
        <div class="gooddetail" id="gooddetail">
            <span style="color: #f10180; font-size: 23px">商品参数</span>
            <span style="color: #999999; font-size: 23px">DETAIL</span>
            <div style="color: #d6d6d6; font-size: 8px; margin-top: 5px">////////////////////////////////////
                /////////////////////////////////////////////////////////////////////////////////////////////
                ///////////////////////////////////////////////////////////////</div>
            <table class="detail-table">
                <tr>
                    <th class="tablelist">品牌名称：</th>
                    <td>雅诗兰黛</td>
                    <th class="tablelist">商品名称：</th>
                    <td>雅诗兰黛EsteeLauder肌透修护眼部精华霜 15ml套装 小棕瓶 眼霜 修护眼周 淡化黑眼圈</td></tr>
                <tr>
                    <th class="tablelist">产地：</th>
                    <td>美国，英国，比利时等（具体产地以收到的实物为准）</td>
                    <th class="tablelist">套装明细：</th>
                    <td>雅诗兰黛肌透修护眼部精华霜15ml+鲜活亮采面霜 15ml+鲜亮焕采泡沫洁面乳 30ml+鲜活亮采果萃水（清爽型）30ml+鲜活亮采眼部凝露 5ml</td>
                   </tr>
                <tr>
                    <th class="tablelist">有效期：</th>
                    <td>2020年（具体时间以收到的实物为准）</td>
                    <th class="tablelist">规格：</th>
                    <td>均码</td>
                    </tr>
                <tr>
                    <th class="tablelist">配件/备注：</th>
                    <td>包装：不同批次包装不同，具体以收到实物为准</td>
                    <th class="tablelist">商品编号：</th>
                    <td>T180613022836</td>
                </tr>
            </table>

            <span style="color: #f10180; font-size: 23px"; >商品展示</span>
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
        <!--商品咨询-->
        <div class="goodquestion" id="goodquestion">
            <div height="30px";line-height="30px";font-weight="700";font-size="14px";>购买前如有问题，请向唯品会咨询。</div>
            <br>
            <img src="image/YQ~HXO5E4%60H~MER_GR1QG%5B6.png" alt="">
            <div height="30px";line-height="30px";font-weight="700";font-size="14px";><b>退货流程如下：</b></div>
            <br>
            <img src="image/goods_return_img_v1.png" alt="">
        </div>
        <!--关于我们-->
        <div></div>
    </div>
</div>

<div id="footer" class="footer">
    <!--<div class="footer-inner">
        <ul class="footer-vip">
            <li class="footer-vip-ico01">
                <img src="weipinhuicopy_img/中国第三.png" alt=""><br> 中国第三</li>
            <li class="footer-vip-ico02">
                <img src="weipinhuicopy_img/全球直采.png" alt=""><br> 全球直采</li>
            <li class="footer-vip-ico03">
                <img src="weipinhuicopy_img/一手货源.png" alt=""><br> 一手货源</li>
            <li class="footer-vip-ico04">
                <img src="weipinhuicopy_img/入仓全检.png" alt=""><br> 入仓全检</li>
            <li class="footer-vip-ico05">
                <img src="weipinhuicopy_img/自营物流.png" alt=""><br> 自营物流</li>
            <li class="footer-vip-ico06">
                <img src="weipinhuicopy_img/线下验真.png" alt=""><br> 线下验真</li>
            <li class="footer-vip-ico07">
                <img src="weipinhuicopy_img/假货必赔.png" alt=""><br> 假货必赔</li>
            <li class="footer-vip-ico08">
                <img src="weipinhuicopy_img/任意退换.png" alt=""><br> 任意退换</li>
            <li class="footer-vip-ico09">
                <img src="weipinhuicopy_img/万千信赖.png" alt=""><br> 万千信赖</li>
            <li class="footer-vip-ico10">
                <img src="weipinhuicopy_img/权威荣誉.png" alt=""><br> 权威荣誉</li>
        </ul>
    </div>-->
    <div class="footer-icon">
        <img src="image/标签.png" alt="">
    </div>
    <br>
    <div class="footer-list">
        <dl class="link-anim">
            <dt>服务保障</dt>
            <dd>
                <a href="https://viva.vip.com/act/supportInsurance?wapid=vivac_767" target="_blank"
                   rel="nofollow">正品保证</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">7天无理由放心退</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/commitment.php" target="_blank" rel="nofollow">退货返运费</a>
            </dd>
            <dd>
                <a href="https://acs.vip.com/" target="_blank" rel="nofollow">7x15小时客户服务</a>
            </dd>
            <dd>
                <a href="https://viva.vip.com/act/changeProduct-pc?wapid=vivac_825" target="_blank"
                   rel="nofollow">7天无理由随心换</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>购物指南</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=308" target="_blank"
                   rel="nofollow">导购演示</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=330" target="_blank"
                   rel="nofollow">订单操作</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=206" target="_blank"
                   rel="nofollow">会员注册</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=329" target="_blank"
                   rel="nofollow">账户管理</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=104" target="_blank"
                   rel="nofollow">收货样品</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=69" target="_blank" rel="nofollow">会员等级</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>支付方式</dt>
            <dd>
                <a href="https://mst.vip.com/ByMIo4p5mM1-pZjNGBTysQ.php?client=vipcms&amp;wapid=mst_2667903&amp;extra_type=1"
                   target="_blank" rel="nofollow">快捷支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">23家主流网银支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=37" target="_blank" rel="nofollow">货到付款</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">支付宝、银联等支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=336" target="_blank"
                   rel="nofollow">信用卡支付</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=335" target="_blank"
                   rel="nofollow">零钱支付</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>配送方式</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank" rel="nofollow">全场满288元免运费</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=345" target="_blank"
                   rel="nofollow">配送范围及运费</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=63" target="_blank"
                   rel="nofollow">验货与签收</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="link-anim">
            <dt>售后服务</dt>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=74" target="_blank" rel="nofollow">退货政策</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=236" target="_blank"
                   rel="nofollow">退货流程</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?type=detail&amp;id=317" target="_blank"
                   rel="nofollow">退款方式和时效</a>
            </dd>
            <dd>
                <a href="https://help.vip.com/themelist.php?cid=146" target="_blank" rel="nofollow">换货服务</a>
            </dd>
        </dl>
        <div class="I"></div>
        <dl class="tc last">
            <dt>唯品会APP二维码</dt>
            <dd>
                <img class="lazy" src="../image/page_bottom_dl_n.png" width="100" height="100" alt="唯品会APP二维码">
            </dd>
            <dd>下载唯品会移动APP</dd>
        </dl>
    </div>
    <br>
    <div class="footer-infor">
        <p class="footer-infor-link">
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContact-pc?wapid=vivac_806"
               title="关于我们">关于我们</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportContactEn-pc?wapid=vivac_799"
               title="About us">About us</a>|
            <a target="_blank" rel="nofollow" href="http://ir.vip.com/" title="Investor Relations">Investor
                Relations</a>|
            <a target="_blank" rel="nofollow" href="https://blog.vip.com/?r=/Blog/HTML_showList/sort_id//29"
               title="媒体报道">媒体报道</a>|
            <a target="_blank" rel="nofollow" href="https://vis.vip.com/stipulate/" title="品牌招商">品牌招商</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportPrivacy-pc?wapid=vivac_804"
               title="隐私条款">隐私条款</a>|
            <a target="_blank" rel="nofollow" href="http://job.vip.com/" title="唯品诚聘">唯品诚聘</a>|
            <a target="_blank" rel="nofollow" href="https://viva.vip.com/act/supportFoundationIndex-pc?wapid=vivac_807"
               title="365爱心基金">365爱心基金</a>|
            <a target="_blank" rel="nofollow" href="https://vipcard.vip.com/" title="唯品卡">唯品卡</a>|
            <a target="_blank" href="https://viva.vip.com/act/supportContactUs-pc?wapid=vivac_800" title="联系我们">联系我们</a>
        </p>
        <p class="footer-infor-txt">
            Copyright ? 2008-2018 vip.com，All Rights Reserved&nbsp;&nbsp;使用本网站即表示接受<a rel="nofollow"
                                                                                      href="https://viva.vip.com/act/supportClause-pc?wapid=vivac_802">唯品会用户协议</a>。版权所有
            <a rel="nofollow" href="https://www.vip.com/">广州唯品会电子商务有限公司</a><br><a
                href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=44010302111111" target="_blank"><img
                src="../image/police_icon.png" width="14" height="14" style="margin:2px 3px 0 0;">粤公网安备
            44010302111111号</a>&nbsp;&nbsp;<a rel="nofollow"
                                              href="http://www.miibeian.gov.cn/publish/query/indexFirst.action">粤ICP备08114786号</a>
            <a rel="nofollow" target="_blank"
               href="https://viva.vip.com/act/actValueAddedService-pc">增值业务经营许可证：粤B2-20170777 </a><a
                rel="nofollow"
                href="http://sq.ccm.gov.cn/ccnt/sczr/service/business/emark/toDetail/61e6abe320e7462baf61aab32a67f256">网络文化经营许可证：粤网文〔2015〕1528-229</a><br><a
                rel="nofollow" href="https://viva.vip.com/act/actBusinessLicense-pc?wapid=vivac_813">自营主体经营证照</a>&nbsp;&nbsp;<a
                href="https://help.vip.com/themelist.php?type=detail&amp;id=475" target="_blank"
                rel="nofollow">风险监测信息</a>&nbsp;&nbsp;<a rel="nofollow"
                                                        href="https://viva.vip.com/act/actDrugLicense-pc?wapid=vivac_814">互联网药品交易服务资格证（粤C20140002）</a>
        </p>
    </div>
</div>  
  </body>
</html>
