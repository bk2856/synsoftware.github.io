<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
<%
discount=request.form("discount")

effdate=request.form("Effdate")

expdate=request.form("Expdate")


  DIM cstno
  cstno=request.form("cstno")  
 

  Set cn = Server.CreateObject("ADODB.Connection")

  cn.Open  "FILEDSN=Reliable"



set rst001=server.createobject("adodb.recordset")
rst001.open "select * from discount WHERE cstno = '" & cstno & "'", cn,1,2

if not (rst001.EOF and rst001.BOF) then
if not trim(discount)="" then
	rst001("discount%")=trim(request.form("discount"))
else
	rst001("discount%")=" "
   end if

if not trim(effdate)="" then
     rst001("effdate")=trim(request.form("Effdate"))
else
	 rst001("effdate")=" "
end if
if not trim(expdate)="" then
     rst001("expdate")=trim(request.form("Expdate"))
else
	 rst001("expdate")=" "
end if

  rst001.update%>
 

<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css"></HEAD>
<body>
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

<TABLE>
  <TBODY>
    <TR>
      <TD><IMG src="images/Imagenew10a.jpg" width="257" height="67" border="0"></TD>
    </TR>
  </TBODY>
</TABLE>
<form name="frmstart" method="post" action="custval.asp" id="frmstart"  name="frmstart">
<P> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; 
<TABLE border=1 cellPadding=0 cellSpacing=0
 bgColor=seashell>
  
  <TR>
    <TD>
      <P>
      <FONT face=Tahoma size=2>&nbsp;Enter&nbsp;New Customer ID&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></P></TD>
    <TD><INPUT id=cstno name=cstno></TD>
    <TD><INPUT id=submit name=submit type=submit value=Submit>&nbsp;</TD>
    <TD><INPUT id=reset1 name=reset1 type=reset value=Reset></TD></TR></TABLE>

</form>
<P><BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; <FONT size="-1">&nbsp;<B><FONT color="#000099"><A href="log.html" target="_self">Back to Homepage</A></FONT></B></FONT></P>





<% else %>
<%
rst001.addnew
rst001("cstno")=cstno
  if not discount="" then
    rst001("discount%")=discount
    end if
  if not effdate="" then
     rst001("effdate")=effdate
   end if
 if not expdate="" then
     rst001("expdate")=expdate
 end if
 rst001.update%>
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
            <TD><A href="log.html" target="frmlow"><IMG src="images/home.jpg" width="70" height="15" border="0"></A></TD>
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
            <TD><IMG src="images/reliable copy.jpg" width="159" height="29" border="0"></TD>
            <TD><A href="Reliable.html" target="frmlow"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0"></A></TD>
            <TD><A href="Reg_Form.htm" target="frmlow"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0"></A></TD>
            <TD><A href="products.html" target="frmlow"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0"></A></TD>
            <TD><A href="talktous.html" target="frmlow"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image22 copy.jpg" width="193" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>

<TABLE>
  <TBODY>
    <TR>
      <TD><IMG src="images/Imagenew10a.jpg" width="257" height="67" border="0"></TD>
    </TR>
  </TBODY>
</TABLE>
<P>
&nbsp; &nbsp; &nbsp;<B>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </B>
</P>
<form name="frmstart" method="post" action="custval.asp" id="frmstart"  name="frmstart">
<P> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; 
<TABLE border=1 cellPadding=0 cellSpacing=0
 bgColor=seashell>
  
  <TR>
    <TD>
      <P>
      <FONT face=Tahoma size=2>&nbsp;Enter&nbsp;New Customer ID&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></P></TD>
    <TD><INPUT id=cstno name=cstno></TD>
    <TD><INPUT id=submit name=submit type=submit value=Submit>&nbsp;</TD>
    <TD><INPUT id=reset1 name=reset1 type=reset value=Reset></TD></TR></TABLE>

</form>
<P><BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; <FONT size="2">&nbsp;</FONT><FONT size="2"><B><FONT color="#000099"><A href="log.html" target="_self">Back to Homepage</A></FONT></B></FONT></P>
</body>

 
<%
end if %> 
</HTML>