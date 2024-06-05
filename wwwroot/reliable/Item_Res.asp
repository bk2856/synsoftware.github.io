<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<%@ Language=VBScript %>	

<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">
<TITLE> ItemLookup Result </TITLE>
</HEAD>
<BODY bgcolor="#ffffff" bottomMargin="0" link="#990000">
<TABLE>
  <TBODY>
    <TR>
      <TD><IMG src="images/Imagenew61.jpg" width="217" height="72" border="0"></TD>
    </TR>
  </TBODY>
</TABLE>
<br>

<%
	dim Cpage,RowCount,I,totcook,idlen,idcook,totlen,ItemID
	totlen=INSTR(1,REQUEST.COOKIES,";")
         totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
          idlen=INSTR(1,totcook,",")
          idcook=mid(totcook,1,idlen-1)
         	Cpage=trim(Request("cpage"))
	if cpage="" then cpage=1
	IDesc=Request.Form("ItemDesc") & "%"
	if not Request.Form("itemid")="" then
		set Cnprice=server.CreateObject("Adodb.connection") 
		Cnprice.Open "FileDSN=Reliable"
		set Rstprice=server.CreateObject("Adodb.Recordset")              		
		rstprice.Open "select * from Cim where itmst='A' and itmID in (select itemid from pricematch where itemid= '" & Request.Form("ItemID") & "' and cstno = '" & idcook & "')",cnprice,1,2				
			if not (rstprice.bof and rstprice.eof) then %>
				<TABLE border="3" width="100%">
					<TR bgcolor="#ffcaca">			
						<td><% response.write("ItemID") %></td>
						<td><% response.write("ItemDesc")%></td>
						<td><% response.write("Category") %></td>						
						<td><% Response.Write("Group") %></td>						
					</TR>
					<tr bgcolor=FloralWhite>				
						<td><a href= "Xl.asp?ItemID=<% response.write(rstprice("ItmID")) %>"><% response.write(rstprice("ItmID")) %></a></td>
						<td><% response.write(rstprice("ItmDesc"))%> </td>
						<td><% response.write(rstprice("PrdCtg")) %></td>						
						<td><% response.write(rstprice("PrdGrp"))%> </td>						
					</tr>
				</TABLE>
			<% else %>				
				<br>
				<br>
				<br>									
				<Center>
					<Strong><font face="arial" size="3" color="#993300"> No Match Found </font></strong>				
				</center>						
			<% end if %>
	<% else 
               totlen=INSTR(1,REQUEST.COOKIES,";")
          totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
          idlen=INSTR(1,totcook,",")
          idcook=mid(totcook,1,idlen-1)
		set cnPrice=server.CreateObject("Adodb.connection") 
		cnprice.Open "FileDSN=Reliable"
		set Rstprice=server.CreateObject("Adodb.Recordset")
		rstprice.Open "select * from Cim where itmst='A' and itmID in (select itemid from pricematch where itmdesc like '" & IDesc & "' and cstno = '" & idcook & "')",cnprice,1,2				
		rstprice.PageSize =5	
	  	if not (rstprice.BOF and rstprice.EOF) then
			rstprice.AbsolutePage=cint(cpage)%>				
			<TABLE border="0" width="100%">								
				<TR bgcolor="#fcc9f3">
					<td align="Left"><strong><font face="arial" size="2" color="Maroon">Search Resulted with <%= rstprice.Pagecount%> Pages </font></strong></td>
					<td align="right"><strong><font face="arial" size="2" color=Maroon> <%= Cpage%> of <%= rstprice.pagecount%></font></strong></td> 			
				</TR>			
			</TABLE>
			<% rowcount=0 %>
			<TABLE border="3" width="100%">
				<TR bgcolor="#ffbfbf">							
					<td><% response.write("ItemID") %></td>
					<td><% response.write("ItemDesc")%></td>
					<td><% response.write("Category") %></td>						
					<td><% Response.Write("Group") %></td>
				</TR>
				<% while not rstprice.EOF and rowcount < RstPrice.PageSize %>				
				<tr> 					
					<td><a href= "Xl.asp?ItemID=<% response.write(rstprice("ItmID")) %>"><% response.write(rstprice("ItmID")) %></a></td>
					<td><% response.write(rstprice("ItmDesc"))%> </td>
					<td><% response.write(rstprice("PrdCtg")) %></td>						
					<td><% response.write(rstprice("PrdGrp"))%> </td>	
				</tr>
				<% rowcount=rowcount+1
				 rstprice.MoveNext 					 
				wend %>			 											
			</TABLE>				
			<br>																		
				
				<% for i=1 to rstprice.PageCount %>	
					<a href="Item_Res.asp?cpage=<% =i%>"><IMG src="images/leaf.bmp"><strong><font face="arial" size="3" color="#996633"><%=i%></font></strong></a>			
				<% next %>				
				
			<br>
		<% else %>
			<br>					
			<br>
			<br>									
			<Center>				
				<Strong><font face="arial" size="3" color=#993300> No Match Found </font></strong>
			</center>
		<% end if 
	end if %>			
	
	<HR style="HEIGHT: 2px; WIDTH: 521px">
	<TABLE cellpadding="2" cellspacing="2" align="center" border=0>
		<tr>
			<td><FONT size="2"><A href="products.html" target="_self">[Products]</A></FONT></td>
			<td><FONT size="2"><A href="Reg_Form.htm" target="_self">[Membership]</A></FONT></td>
			<td><FONT size="2"><A href="Reliable.html" target="_self">[About Us]</A></FONT></td>	
		</tr>
	</table>
	<table align="center" cellpadding="2" cellspacing="2" border="0">
		<tr>	
			<td><FONT size="2"><A href="talktous.html" target="_self">[Contact Us]</A></FONT></td>
			<td><FONT size="2"><A href="Shops.html" target="_self">[Shops]</A></FONT></td>
		</tr>
	</TABLE>
	
</BODY>
</HTML>
