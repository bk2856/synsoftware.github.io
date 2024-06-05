<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<%@ Language=VBScript %>

<HTML>
<HEAD>
<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">
</HEAD>
<BODY link="#990000">
<%
  
  Set cn = Server.CreateObject("ADODB.Connection")
  Cn.Open  "FILEDSN=Reliable"
   response.write(idcook1)
  totlen=INSTR(1,REQUEST.COOKIES,";")
  totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
  idlen=INSTR(1,totcook,",")
  idcook=mid(totcook,1,idlen-1)
if not request.form("cook1")="" then  
  passcook=request.form("cook1")
 
else
   passlen=INSTR(idlen+1,totcook,";")
  passcook=mid(totcook,idlen+1,totlen)
 
end if

set rst001=server.createobject("adodb.recordset")
rst001.open "select * from customers WHERE cstno = '" & idcook & "' and password='" & passcook & "'", cn,1,2
if not (rst001.eof and rst001.bof) then

 %>
<script language=vbscript>
sub Emailchk()			
			count1=0
			count2=0
			if not proform.Email.value ="" then
				for i = 1 to len(proform.Email.value)
					if mid(proform.Email.value,i,1)="@" then
						count1=count1+1
					end if
					if mid(proform.Email.value,i,1)="." then
						Count2=Count2+1
					end if
				next
				if (count1<>1 OR count2=0) then
					msgbox "Type a valid EmailID like (abc@xyz.com)",vbinformation+4096,"Error"
					proform.Email.focus 					
				else
					proform.Email.value=lcase(proform.Email.value)
				end if
			end if
		end sub		

</script>

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
            <TD><IMG src="images/Image22 copy.jpg" width="193" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>

	
<form name="proform" method="post" action="prochg.asp">
<input type="hidden" name="cook2" id="cook2" value = <%= request.form("cook1")%> >
<TABLE border=0 style="BACKGROUND-COLOR: #fffffb">
  
  <TR>
    <TD><IMG src="images/Image8z.jpg" width="575" height="65" border="0"></TD></TR></TABLE>&nbsp; &nbsp; &nbsp;<B> &nbsp; &nbsp;</B><TABLE>
  
  <TR>
    <TD><FONT size="2" face="Tahoma">Company&nbsp;Name &nbsp; &nbsp; </FONT></TD>
    <TD><INPUT align="right" id="cname" maxlength="50" name="Cname" type="text" size="15" value=<%= rst001("cname") %>></TD>
    <TD><FONT color=black face=Tahoma size=2>Street 
      :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</FONT></TD>

    <TD><input type="Text" size="20" maxlength="60" name="add1" id="add1" value=<%=rst001("cstad1")%>></td> </TR>
    <TR><TD><FONT color=black face=Tahoma size=2>Job Title : </FONT></TD><TD><INPUT align="right" id="job" maxlength="50" name="Job" size="15" value=<%= rst001("job") %>></TD><TD></TD><TD><INPUT id="add2" name="Add2" type="text" maxlength="50" value=<%= rst001("cstad2")%> ></TD></TR>
    
    
    
  <TR>
    <TD><FONT color=black face=Tahoma size=2>Daytime Phone :</FONT></TD>
    <TD><INPUT align="right" id="dphone" maxlength="15" name="Dphone" type="text" size="15" value=<%= rst001("dphone")%>> 
     </TD>
    <TD><FONT color=black face=Tahoma size=2>City :</FONT></TD>
    <TD><INPUT name="city" type="text" maxlength="75" value=<%= rst001("city") %> ></TD></TR>
  <TR>
    <TD><FONT color=black face=Tahoma size=2>Evening Phone :</FONT></TD>
    <TD><INPUT align="right" id="ephone" maxlength="15" name="Ephone" size="15" value=<%= rst001("ephone") %>> 
     </TD>
    <TD><FONT color=black face=Tahoma size=2>State </FONT></TD>
    <TD><INPUT name=state size=4 value= <%= rst001("state") %>><FONT color=black face=Tahoma size=2>Zip </FONT><INPUT name=zip 
size=5 value= <%= rst001("zip") %>></TD></TR>
    <TR>
      <TD><FONT color="black"><FONT face="Tahoma" size="2">Company&nbsp;&nbsp;&nbsp;Website<BR>
      </FONT></FONT></TD>
      <TD><INPUT name="cweb" type="text" value=<%= rst001("cweb") %>></TD>
      <TD>Country</TD>
      <TD>
<INPUT size="17" type="text" name="country" id="country" value=<%= rst001("country") %>>
  </TD>
    </TR>
    <TR>
      <TD><FONT color="black" face="Tahoma" size="2">Fax :</FONT></TD>
      <TD><INPUT align="right" id="fax" maxlength="15" name="Fax" size="15" value=<%= rst001("fax") %>></TD>
      <TD><FONT color="black" face="Tahoma" size="2">Email</FONT></TD>
      <TD><INPUT align="right" id="Email" maxlength="60" name="Email" type="text" onblur="emailchk()" size="15"  HEIGHT: 18px; WIDTH: 146px"  value=<%= rst001("emailid") %>></TD>
    </TR>
    <TR>
    <TD><FONT color="black"><FONT face="Tahoma" size="2"><BR>
      </FONT></FONT></TD>
      <TD height="68"></TD>
      <TD height="54"></TD>
      <TD>
  <TABLE><TBODY><TR>
            <TD valign="top"><INPUT name=Submit style="COLOR: black; FONT-WEIGHT: bold; LEFT: 1px; TOP: 17px" type=submit value=Submit><INPUT name=Reset style="COLOR: black; FONT-WEIGHT: bold; HEIGHT: 24px; WIDTH: 65px" type=reset value=Reset></TD>
          </TR></TBODY></TABLE>
  



</TABLE></FORM>
<HR>
<P>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<FONT color="#990000" size="1" face="Tahoma"><A href="Reliable.html" target="_self">[</A></FONT><FONT color="#990000" size="1" face="Tahoma"><FONT color="darkblue"><A href="Reliable.html" target="_self">&nbsp;About Reliable</A>][<A href="Reg_Form.htm" target="_self">Membership</A>][<A href="products.html" target="_self">Products]</A>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<A href="talktous.html" target="_self"> [&nbsp;Talk to&nbsp;us]</A>&nbsp; &nbsp; </FONT></FONT></P>
<%else%>

<P> &nbsp;</P>
<P><B>Please LogOut &amp; Signin with Your New
Password to <BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Change
Your Member profile</B></P>


</BODY>




</html>




<%end if%>


