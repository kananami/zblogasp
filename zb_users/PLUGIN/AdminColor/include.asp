﻿<!-- #include file="function.asp" -->
<%
'注册插件
Call RegisterPlugin("AdminColor","ActivePlugin_AdminColor")
'挂口部分
Function ActivePlugin_AdminColor()

	Dim s,i,j

	i=0
	j=UBound(BlodColor)
	For i =0 To j
		s=s& "&nbsp;&nbsp;<a href='"+BlogHost+"zb_users/plugin/admincolor/css.asp?color="&i&"'><span style='height:24px;width:24px;background:"&NormalColor(i)&"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>&nbsp;&nbsp;"
	Next
	s=s&"&nbsp;&nbsp;<a href='"+BlogHost+"zb_users/plugin/admincolor/css.asp?color=random' title='随机颜色'><span style='height:24px;width:24px;background:white;border:black 1px solid'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></a>&nbsp;&nbsp;"

	Call Add_Response_Plugin("Response_Plugin_Admin_SiteInfo","<p>后台配色:"&s&"<hr/></p>")


	Call Add_Response_Plugin("Response_Plugin_Admin_Header","<link rel=""stylesheet"" type=""text/css"" href="""+BlogHost+"zb_users/plugin/admincolor/css.asp""/>")
	
End Function




Dim BlodColor(6)
Dim NormalColor(6)
Dim LightColor(6)
Dim HighColor(6)
Dim AntiColor(6)


BlodColor(0)="#1d4c7d"
NormalColor(0)="#3a6ea5"
LightColor(0)="#b0cdee"
HighColor(0)="#3399cc"
AntiColor(0)="#d60000"


BlodColor(1)="#143c1f"
NormalColor(1)="#5b992e"
LightColor(1)="#bee3a3"
HighColor(1)="#6ac726"
AntiColor(1)="#d60000"


BlodColor(2)="#333333"
NormalColor(2)="#555555"
LightColor(2)="#ababab"
HighColor(2)="#8b8b8b"
AntiColor(2)="#d60000"


BlodColor(3)="#3e1165"
NormalColor(3)="#5c2c84"
LightColor(3)="#a777d0"
HighColor(3)="#8627d7"
AntiColor(3)="#08a200"

BlodColor(4)="#656215"
NormalColor(4)="#87832a"
LightColor(4)="#b3b057"
HighColor(4)="#d7d01a"
AntiColor(4)="#d60000"


BlodColor(5)="#0a4f3e"
NormalColor(5)="#267662"
LightColor(5)="#68cdb4"
HighColor(5)="#21d5a9"
AntiColor(5)="#d60000"


BlodColor(6)="#3a0b19"
NormalColor(6)="#7c243f"
LightColor(6)="#d57c98"
HighColor(6)="#d31b54"
AntiColor(6)="#2039b7"

%>