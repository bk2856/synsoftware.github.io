<%@ Language=VBScript %>

<HTML>
<HEAD>
<title>XlDisplay</title>
</HEAD>
<BODY>
<% dim Item_ID,DirName,WbName,Sname
	
	totlen=INSTR(1,REQUEST.COOKIES,";")
	totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
	idlen=INSTR(1,totcook,",")
	idcook=mid(totcook,1,idlen-1)

	Item_ID=trim(Request("ItemID"))
	if not trim(Item_ID)="" then
		set Cnprice=server.CreateObject("Adodb.connection") 
		Cnprice.Open "FileDSN=Reliable"
		set Rstprice=server.CreateObject("Adodb.Recordset")              		
		rstprice.Open "select * from pricematch where itemid = '" & trim(Item_ID) & "' and cstno = '" & idcook & "'",cnprice,1,2				
		if not (rstprice.bof and rstprice.eof) then
		DirName = "http://www.synergy-us.com/wwwroot/reliable2"
		WbName= trim(DirName) & "/" & trim(rstprice("wbkname"))
		sname=rstprice("sheetname")		
		 %>
			
			<applet codebase= <% =DirName %> code="xlfile.class" align=middle width=750 height=400 VIEWASTEXT>
				<param name=XLWORKBOOKURL value = <% =wbname %> >
				<param name=sheetName value= <% =sname %> >
			</applet>
		<% 
		
		 end if
	end if  %>			
</BODY>
</HTML>
