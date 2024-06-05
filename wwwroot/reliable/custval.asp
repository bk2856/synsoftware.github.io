<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<HTML>
<HEAD>
<%


  DIM cstno
  cstno=request.form("cstno")  
  

  Set cn = Server.CreateObject("ADODB.Connection")

  cn.Open  "FILEDSN=Reliable"

set rst01=server.createobject("adodb.recordset")
rst01.open "select * from customers WHERE cstno = '" & cstno & "'", cn,1,2
if not (rst01.EOF and rst01.BOF) then

set rst001=server.createobject("adodb.recordset")
rst001.open "select * from customers WHERE cstno = '" & cstno & "' and status = 'A' ", cn,1,2
if not(rst001.bof and rst001.eof) then
set rst002=server.createobject("adodb.recordset")
rst002.open "select * from discount WHERE cstno = '" & cstno & "'", cn,1,2
if not(rst002.bof and rst002.eof) then

   
%>
<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css">
<META name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<META http-equiv="Content-Style-Type" content="text/css"></HEAD><body><FORM method="post" action="custfinal.asp" id=form1 name=form1>
<TABLE border="0" cellpadding=0 cellspacing=0>
 
    <TR cellpadding=0 cellspacing=0>
      <TD>
      <TABLE border="0" cellpadding="0" cellspacing="0" height="3">
      
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD height="4"><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD width="12"><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
  
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><IMG src="images/home.jpg" width="70" height="15" border="0"></TD>
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
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0" alt="About Us"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0" alt="New Membership"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0" alt="Product Range"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image22 copy.jpg" width="112" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>

<TABLE height="60">
  <TBODY>
    <TR>
      <TD width="73" height="40"><IMG src="images/Imagenew6 copy.jpg" width="146" height="62" border="0"></TD>
      <TD height="21"><FONT color="navy" face="Tahoma"><STRONG><U>Cutomer Discount &nbsp;Details</U></STRONG></FONT>-<FONT color="#000099" face="Tahoma" size="2">Existing Data</FONT><BR>
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <FONT size="2" color="#000000" face="Tahoma">&nbsp;To Update the Data make changes here.</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 19px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD> </TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" style="HEIGHT: 24px; WIDTH: 331px" width="75%" borderColor="darkgray">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Customer ID&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="cstno" name="cstno" value= <%= rst001("cstno") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Customer Name1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="cstname1" name="cstname1" value= <%= rst001("cstname1") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="lightpink" border="1" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD><FONT face="Tahoma" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Name2&nbsp;&nbsp;&nbsp;&nbsp; </FONT></TD>
      <TD><INPUT id="cstname2" name="cstname2" value=<%= rst001("cstname2") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="mistyrose" border="0" cellpadding="0" cellspacing="0" width="75%" id="TABLE1" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Discount&nbsp;&nbsp;</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
      <TD><INPUT id="discount" name="discount" value=<%= rst002("discount%")%>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 28px; WIDTH: 329px">
  <TBODY>
    <TR>
      <TD><FONT face="Tahoma" size="2">&nbsp; Effective Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="effdate" name="effdate" value=<%= rst002("effdate")%>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 329px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Expiry Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="expdate" name="expdate" value=<%= rst002("expdate")%> ></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" >
  <TBODY>
    <TR>
      <TD> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; <INPUT id="submit1" name="submit1" type="submit" value="Submit"> &nbsp;<INPUT id="reset1" name="reset1" type="reset" value="Reset"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; </TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="1" cellspacing="1" style="HEIGHT: 23px; WIDTH: 329px" width="75%">
  <TBODY>
    <TR>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE><BR>
[<A href="custupdate.html" target="_self">Back to Discount Maintanance Screen</A>]</CENTER>
</form>
<%else%>
<FORM method="post" action="custfinal.asp" id=form1 name=form1>
<TABLE border="0" cellpadding=0 cellspacing=0>
 
    <TR cellpadding=0 cellspacing=0>
      <TD>
      <TABLE border="0" cellpadding="0" cellspacing="0" height="3">
      
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD height="4"><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD width="12"><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
  
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><IMG src="images/home.jpg" width="70" height="15" border="0"></TD>
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
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0" alt="About Us"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0" alt="New Membership"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0" alt="Product Range"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image22 copy.jpg" width="112" height="29" border="0"></TD>
          </TR>
        </TBODY>
      </TABLE>
      </TD>
    </TR>
  </TBODY>
</TABLE>

<TABLE height="60">
  <TBODY>
    <TR>
      <TD width="73" height="40"><IMG src="images/Imagenew6 copy.jpg" width="146" height="62" border="0"></TD>
      <TD height="21"><FONT color="navy" face="Tahoma"><STRONG><U>Cutomer Discount &nbsp;Details</U></STRONG></FONT>-<FONT color="#000099" face="Tahoma" size="2">Existing Data</FONT><BR>
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <FONT size="2" color="#000000" face="Tahoma">&nbsp;To Update the Data make changes here.</FONT></TD>
    </TR>
  </TBODY>
</TABLE>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 19px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD> </TD>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" style="HEIGHT: 24px; WIDTH: 331px" width="75%" borderColor="darkgray">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Customer ID&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="cstno" name="cstno" value= <%= rst001("cstno") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Customer Name1&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="cstname1" name="cstname1" value= <%= rst001("cstname1") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="lightpink" border="1" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD><FONT face="Tahoma" size="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      Name2&nbsp;&nbsp;&nbsp;&nbsp; </FONT></TD>
      <TD><INPUT id="cstname2" name="cstname2" value=<%= rst001("cstname2") %>></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="mistyrose" border="0" cellpadding="0" cellspacing="0" width="75%" id="TABLE1" style="HEIGHT: 24px; WIDTH: 330px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Discount&nbsp;&nbsp;</FONT>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
      <TD><INPUT id="discount" name="discount"></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 28px; WIDTH: 329px">
  <TBODY>
    <TR>
      <TD><FONT face="Tahoma" size="2">&nbsp; Effective Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="effdate" name="effdate"></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="0" cellspacing="0" width="75%" style="HEIGHT: 24px; WIDTH: 329px">
  <TBODY>
    <TR>
      <TD>&nbsp; <FONT face="Tahoma" size="2">Expiry Date&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></TD>
      <TD><INPUT id="expdate" name="expdate"></TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffb6c1" border="1" cellpadding="0" cellspacing="0" style="HEIGHT: 23px; WIDTH: 210px" width="75%">
  <TBODY>
    <TR>
      <TD>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
      <TD><INPUT id="submit1" name="submit1" type="submit" value="Submit"><INPUT id="reset1" name="reset1" type="reset" value="Reset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</TD>
    </TR>
  </TBODY>
</TABLE>
</CENTER>
<CENTER>
<TABLE bgcolor="#ffe4e1" border="0" cellpadding="1" cellspacing="1" style="HEIGHT: 23px; WIDTH: 329px" width="75%">
  <TBODY>
    <TR>
      <TD></TD>
    </TR>
  </TBODY>
</TABLE><BR>
[<A href="custupdate.html" target="_self">Back to Discount Maintanance Screen</A>]</CENTER>
</form>

<% end if %>
<% else %>
<TABLE border="0" cellpadding=0 cellspacing=0>
 
    <TR cellpadding=0 cellspacing=0>
      <TD>
      <TABLE border="0" cellpadding="0" cellspacing="0" height="3">
      
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD height="4"><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD width="12"><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
  
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><IMG src="images/home.jpg" width="70" height="15" border="0"></TD>
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
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0" alt="About Us"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0" alt="New Membership"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0" alt="Product Range"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image22 copy.jpg" width="112" height="29" border="0"></TD>
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
      <TD><U><FONT size="4" face="Tahoma"><FONT color="#999900" size="-1" face="Tahoma">Invalid Customer </FONT></FONT><B><FONT size="4" face="Tahoma"><FONT color="#999900" size="-1" face="Tahoma"></FONT><FONT color="#990000" size="-1">!</FONT></FONT></B></U><BR><BR>
      <B>&nbsp;</B><FONT color="#000000"><B><FONT face="Tahoma" size="2"> &nbsp;</FONT></B></FONT><FONT color="#000000"><FONT face="Tahoma" size="2">Customer</FONT><B><FONT face="Tahoma" size="2"> Status </FONT></B></FONT><FONT color="#000000"><FONT face="Tahoma" size="2">no</FONT></FONT><FONT color="#000000"><FONT face="Tahoma" size="2">t</FONT></FONT><B><FONT face="Tahoma" size="2" color="#000099"> Active</FONT></B>
      </TD>
      <TD><IMG src="images/Imagenew65.jpg" width="237" height="123" border="0"></TD>
    </TR>
  </TBODY>
</TABLE>
<form name="frmstart" method="post" action="custval.asp" id="frmstart"  name="frmstart">
<TABLE border="1" cellpadding="0" cellspacing="0" bgcolor="seashell">
  
    <TR align="center">
      <TD>
      <P>
      <FONT face=Tahoma size=2>&nbsp;Enter Customer ID&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></P>
      </TD>
      <TD><INPUT id=cstno name=cstno></TD>
      <TD><INPUT id=submit name=submit type=submit value=Submit>&nbsp;</TD>
      <TD><INPUT id=reset1 name=reset1 type=reset value=Reset></TD>
    </TR>
  
</TABLE>
<P><BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <FONT size="1">[&nbsp;</FONT><FONT size="1" face="Tahoma"><B><FONT color="#000099"><A href="log.html" target="_self"><FONT color="#000000"><FONT color="#000099">Back to Homepage</FONT></FONT></A></FONT></B></FONT>]</P>
</FORM><P>

<% end if
	else %></P>
<TABLE border="0" cellpadding=0 cellspacing=0>
 
    <TR cellpadding=0 cellspacing=0>
      <TD>
      <TABLE border="0" cellpadding="0" cellspacing="0" height="3">
      
          <TR>
            <TD><IMG src="images/topmen1.jpg" width="246" height="22" border="0"></TD>
            <TD><IMG src="images/topmen2.jpg" width="135" height="22" border="0"></TD>
            <TD height="4"><IMG src="images/topmen3.jpg" width="95" height="20" border="0"></TD>
            <TD><IMG src="images/topmen4.jpg" width="114" height="22" border="0"></TD>
            <TD width="12"><IMG src="images/topmen5.jpg" width="189" height="22" border="0"></TD>
          </TR>
  
      </TABLE>
      </TD>
    </TR>
    <TR>
      <TD>
      <TABLE border="0" cellpadding=0 cellspacing=0>
        <TBODY>
          <TR>
            <TD><IMG src="images/homel.jpg" width="247" height="15" border="0"></TD>
            <TD><IMG src="images/home.jpg" width="70" height="15" border="0"></TD>
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
            <TD><A href="Reliable.html" target="_self"><IMG src="images/Image1 copy.jpg" width="108" height="29" border="0" alt="About Us"></A></TD>
            <TD><A href="Reg_Form.htm" target="_self"><IMG src="images/Image4 copy.jpg" width="102" height="29" border="0" alt="New Membership"></A></TD>
            <TD><A href="products.html" target="_self"><IMG src="images/Image3 copy.jpg" width="91" height="29" border="0" alt="Product Range"></A></TD>
            <TD><A href="talktous.html" target="_self"><IMG src="images/Image2 copy.jpg" width="105" height="29" border="0"></A></TD>
            <TD><IMG src="images/Image22 copy.jpg" width="112" height="29" border="0"></TD>
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
      <TD><U><FONT size="4" face="Tahoma"><FONT color="#999900" size="-1" face="Tahoma">Invalid Customer</FONT></FONT></U><B><U><FONT size="4" face="Tahoma"><FONT color="#999900" size="-1" face="Tahoma"> </FONT><FONT color="#cc0000" size="-1" face="Tahoma">!<BR>
      </FONT></FONT></U></B><FONT size="2"><B><FONT face="Tahoma"><BR>
      &nbsp; </FONT></B><FONT face="Tahoma">Invalid</FONT><B><FONT face="Tahoma"> Login</FONT></B><B>&nbsp;</B><B><FONT face="Tahoma" color="#000099">ID</FONT><FONT face="Tahoma"> </FONT></B></FONT></TD>
      <TD><IMG src="images/Imagenew65.jpg" width="237" height="123" border="0"></TD>
    </TR>
  </TBODY>
</TABLE>
<form name="frmstart" method="post" action="custval.asp" id="frmstart"  name="frmstart">
<TABLE border=1 cellPadding=0 cellSpacing=0
 bgColor=seashell>
  
  <TR>
    <TD>
      <P>
      <FONT face=Tahoma size=2>&nbsp;Enter Customer ID&nbsp;&nbsp;&nbsp;&nbsp;
      </FONT></P></TD>
    <TD><INPUT id=cstno name=cstno></TD>
    <TD><INPUT id=submit name=submit type=submit value=Submit>&nbsp;</TD>
    <TD><INPUT id=reset1 name=reset1 type=reset value=Reset></TD></TR></TABLE>

</form>
<P><BR>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[<FONT face="Tahoma" size="1"><B><FONT color="#000099"><A href="log.html" target="_self"><FONT color="#000099">Back to Homepage]<BR>
</FONT></A></FONT></B></FONT></P>
</BODY>






<%end if
%></HTML>

