
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<%@ Language=VBScript %>
<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">                                               

<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">
<TITLE></TITLE>


</HEAD>
<BODY>
<%
	                                                                                                               
  Set cn = Server.CreateObject("ADODB.Connection")
 
  cn.Open  "FILEDSN=Reliable"
%>
<%
  
  strDSN = "FILEDSN=Reliable"

  Set cn = Server.CreateObject("ADODB.Connection")
  cn.Open strDSN

  set rst001=server.createobject("adodb.recordset")
rst001.open "select * from customers WHERE cstno = '" & Request.Form("cstno") & "' and password='" & Request.Form("confirm") & "'", cn,1,2
'rst002.open "select * from employee WHERE empno = '" & cstno & "' and password='" & password & "'", cn,1,2   

if (rst001.EOF and rst001.BOF) then

 cn.Execute("INSERT INTO customers(cstno,cstname1,cstname2,cstad1,cstad2,cname,job,dphone,ephone,fax,city,state,zip,country,cweb,emailid,password) VALUES ('" & Request.Form("cstno") & "','" & Request.Form("Fname") & "','" & Request.Form("Lname") & "','" & Request.Form("Add1") & "','" & Request.Form("Add2") & "','" & Request.Form("Cname") & "','" & Request.Form("job") & "','" & Request.Form("dphone") & "','" & Request.Form("ephone") & "','" & Request.Form("fax") & "','" & Request.Form("city") & "','" & Request.Form("state") & "','" & Request.Form("zip") & "','" & Request.Form("country") & "','" & Request.Form("cweb") & "','" & Request.Form("email") & "','" & Request.Form("confirm") & "')")                                             

 %><TABLE border="0" cellpadding=0 cellspacing=0>
  <TBODY>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><A href="main.html" target="_self"><IMG src="images/home.jpg" width="70" height="15" border="0"></A></TD>
            <TD><IMG src="images/homer.jpg" width="478" height="15" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/Image5.jpg" width="219" height="29" border="0"></TD>
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image411.jpg" width="54" height="29" border="0"></TD>
            <TD><IMG src="images/Image511.jpg" width="77" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>

<IMG src="images/Image60.jpg" width="576" height="74" border="0"> <br><br>
<table align=center border=0>
	<tr>
		<td>					
			<U><FONT color=maroon><STRONG>Registration Successfull !</STRONG></FONT></U>
		</td>
	</tr>
	
	<tr>
		<td>
			<FONT color=midnightblue> <%=  Request.Form("Fname") & " " & Request.Form("Lname") %></FONT><STRONG>,Thank you for Registering with <FONT color=darkblue>Reliable.</FONT> </STRONG></td>
	</tr>
	<tr>
		<td></td>
	</tr>	
	<tr>
		<td>      			
			<FONT color=maroon><STRONG><U>We have Recorded your personal information as follows :</U></STRONG></FONT>
		</td>
	</tr>
	<tr>
		<td>
			<FONT size=2><STRONG>Name : </STRONG></FONT> <%= Request.Form("Fname") & " " & Request.Form("Lname")%>
		</td>
	</tr>
	<tr>
		<td>
			<FONT size=2><STRONG>Address :</STRONG></FONT><%= Request.Form("add1") & "," & Request.Form("City") & "," & Request.Form("Country")%>
		</td>
	</tr>
	<tr>
		<td>
			<FONT size=2><STRONG>E-mail :</STRONG></FONT> <%= Request.Form("Email")%>
		</td>
	</tr>
	<tr>
		<td>	<FONT size=2><STRONG>Logon ID :</STRONG></FONT> <%= Request.Form("cstno")%>

        </td>
	</tr>	
	<tr>
		<td>
      <TABLE>
        <TBODY>
          <TR valign="top">
            <TD width="144"><IMG src="images/imagenew7.jpg" width="286" height="75" border="0"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            </TD>
            </TR>
        </TBODY>
      </TABLE>
      <FONT color="maroon"><B> </B></FONT>
		</td>
	</tr>
</table>
<% else %>

<TABLE border="0" cellpadding=0 cellspacing=0>
  <TBODY>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><A href="main.html" target="_self"><IMG src="images/home.jpg" width="70" height="15" border="0"></A></TD>
            <TD><IMG src="images/homer.jpg" width="478" height="15" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/Image5.jpg" width="219" height="29" border="0"></TD>
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image411.jpg" width="54" height="29" border="0"></TD>
            <TD><IMG src="images/Image511.jpg" width="77" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>


<P><B>
     
   
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></P>
<P><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B><B>&nbsp;      
     
 <BR><FONT size=5>&nbsp; <U>Please 
Change Your <FONT color=navy>Password&nbsp;</FONT></U>!</FONT>&nbsp;
<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</B></P>

<P><B>&nbsp;&nbsp; <FONT 
color=darkred>Another&nbsp;Member&nbsp;Exists&nbsp;with&nbsp;the&nbsp;same&nbsp;User&nbsp;ID&nbsp;and&nbsp;Password&nbsp;you&nbsp;have&nbsp;entered</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </B></P>
<P>&nbsp;<B> </B></P>
<P><B>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<FONT color="#990000" size="2" face="Tahoma"> </FONT><FONT color="navy" size="1" face="Tahoma"><A href="Reg_Form.htm">Back to Membership pag</A></FONT><FONT color="navy" size="1" face="Tahoma"><A href="Reg_Form.htm">e</A></FONT></B></P>
<P>&nbsp;</P>
<P>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</P>
</BODY>

</HTML>
<% 
end if
%>


