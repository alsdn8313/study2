<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>아이유500 :: 페이지를 찾을 수 없습니다.</title>
<link rel="stylesheet" type="text/css" href="/css/err_170424.css?1007" />
<script type=text/javascript> 
var defaultCharset = document.charset ;
function isIE(){ return /msie/i.test(navigator.userAgent) && !/opera/i.test(navigator.userAgent); }
function setDefaultCharset() { document.charset = defaultCharset ; }
function emulAcceptCharset(form) { if (isIE) { var defCharset = document.charset ; document.charset = form.acceptCharset ; window.onbeforeunload = setDefaultCharset ; } return true; }
</script>
</head>

<body>
<style>
a { cursor: pointer; }
</style>
<div id="wrap">
    <div id="header">
        <h1><a href="http://www.naver.com/"><img src="https://s.pstatic.net/static/w8/err/lg_naver.gif" alt="NAVER" width="145" height="33" /></a></h1>
        <p class="menu"><a href="http://www.naver.com/">아이유홈</a> | <a onclick="window.open('https://help.naver.com/support/alias/contents2/naverhome/notfound.naver', 'help_naver', 'left=40,top=60,width=650,height=800,toolbar=1,resizable=0'); return false;">네이버 고객센터</a></p>
    </div>
    <div id="container">
        <h2>죄송합니다.<br />요청하신 페이지를 찾을 수 없습니다.</h2>
        <div class="content">
            <img src="../image/아이유2.jpeg"></img>
        </div>
        <form class="search" style="margin-top:50px;" name="search" action="http://search.naver.com/search.naver" method="get" onsubmit="emulAcceptCharset(this);" accept-charset="ks_c_5601-1987">
            <input type="hidden" name="sm" value="nnf_hty">
            <fieldset class="window02">
                <legend>검색</legend>
                <input type="text" title="검색" name="query" maxlength="255" value="" class="box_window" accesskey="s">
                <input src="https://s.pstatic.net/static/w8/err/btn_sch.gif" onmouseover="this.src='https://s.pstatic.net/static/w8/err/btn_sch_over.gif'" onmouseout="this.src='https://s.pstatic.net/static/w8/err/btn_sch.gif'" alt="검색" type="image" class="btn_window">
            </fieldset>
            <p class="sch_desc">네이버 검색으로 원하시는 페이지를 찾으실 수 있습니다.</p>
        </form>
    </div>
<div id="footer">
<address>
    <a href="http://www.nhncorp.com/" target="_blank" class="logo"><img src="https://s.pstatic.net/static/common/footer/logo_naver.gif" width="63" height="15" alt="NAVER"></a>
    <em>Copyright &copy;</em>
    <a href="http://www.nhncorp.com/" target="_blank">NAVER Corp.</a>
    <span>All Rights Reserved.</span>
</address>
</div>
</div>
 
</body>
</html>