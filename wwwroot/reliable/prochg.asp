<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<%@ Language=VBScript %>
<html>
<head>
<meta name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<meta http-equiv="Content-Style-Type" content="text/css">
</head>
  <body link="#990000">
<%

  
  DIM cstno,password,cname,job,Dphone,Ephone,Fax,Cweb,Add1,Add2,City,State,Zip,Country,Email,A,B
  totlen=INSTR(1,REQUEST.COOKIES,";")
  totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
  idlen=INSTR(1,totcook,",")
  idcook=mid(totcook,1,idlen-1)
if not request.form("cook2")="" then  
  passcook=request.form("cook2")
else
   passlen=INSTR(idlen+1,totcook,";")
  passcook=mid(totcook,idlen+1,totlen)
end if
  cname=request.form("cname")
   job=request.form("job")
  Dphone=request.form("Dphone")
Ephone=request.form("Ephone")
Fax=request.form("Fax")
Cweb=request.form("Cweb")
Add1=request.form("Add1")
Add2=request.form("Add2")
City=request.form("City")
State=request.form("state")
zip=request.form("zip")
country=request.form("country")
email=request.form("email")
  Set cn = Server.CreateObject("ADODB.Connection")
  Cn.Open  "FILEDSN=Reliable"
  



set rst001=server.createobject("adodb.recordset")
rst001.open "select * from customers WHERE cstno = '" & idcook & "' and password='" & passcook & "'", cn,1,2

if not (rst001.EOF and rst001.BOF) then

 if not trim("cname")="" then
    rst001("cname")=cname
 end if


 if not trim("job")="" then
    rst001("job")=job
 end if
 if not trim("Dphone")="" then
    rst001("dphone")=dphone
 end if
 if not trim("Ephone")="" then
    rst001("Ephone")=Ephone
 end if
 if not trim("Fax")="" then
    rst001("Fax")=fax
 end if
 if not trim("Cweb")="" then
    rst001("cweb")=cweb
 end if
 if not trim("Add1")="" then
    rst001("CSTad1")=Add1
 end if
 if not trim("Add2")="" then
    rst001("CSTad2")=add2
 end if
 if not trim("city")="" then
    rst001("city")=city
 end if
 if not trim("state")="" then
    rst001("state")=state
 end if
 if not trim("zip")="" then
    rst001("zip")=zip
 end if
 if not trim("country")="" then
    rst001("country")=country
 end if
 if not trim("email")="" then
    rst001("emailid")=email
 end if
rst001.update%>


<script language="vbscript">
	
      
	Public sub callimgchange2()
       document.images("img2").src="images/0item1.jpg" 
	end sub
     
       Public sub revimgchange2()
       document.images("img2").src="images/item1.jpg" 
	end sub
       
       Public sub callimgchange3()
       document.images("img3").src="images/0cat.jpg" 
	end sub
     
       Public sub revimgchange3()
       document.images("img3").src="images/cat.jpg" 
	end sub

       Public sub callimgchange4()
       document.images("img4").src="images/0cust1.jpg" 
	end sub
     
       Public sub revimgchange4()
       document.images("img4").src="images/cust1.jpg" 
	end sub
     
       Public sub callimgchange5()
       document.images("img5").src="images/0order.jpg" 
	end sub
     
       Public sub revimgchange5()
       document.images("img5").src="images/order.jpg" 
	end sub

</script>
<table border="0" cellpadding="0" cellspacing="0">
  <tbody>
    <tr>
      <td>
      <table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><img src="images/topmen1.jpg" width="246" height="22" border="0"></td>
            <td><img src="images/topmen2.jpg" width="135" height="22" border="0"></td>
            <td><img src="images/topmen3.jpg" width="95" height="20" border="0"></td>
            <td><img src="images/topmen4.jpg" width="114" height="22" border="0"></td>
            <td><img src="images/topmen5.jpg" width="189" height="22" border="0"></td>
          </tr>
        </tbody>
      </table>
      </td>
    </tr>
    <tr>
      <td>
      <table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><img src="images/homel.jpg" width="247" height="15" border="0"></td>
            <td><a href="main.html" target="_self"><img src="images/home.jpg" width="70" height="15" border="0"></a></td>
            <td><img src="images/homer.jpg" width="478" height="15" border="0"></td>
          </tr>
        </tbody>
      </table>
      </td>
    </tr>
    <tr>
      <td>
      <table border="0" cellpadding="0" cellspacing="0">
        <tbody>
          <tr>
            <td><img src="images/Image5.jpg" width="219" height="29" border="0"></td>
            <td><a href="Reliable.html" target="_self"><img src="images/Image1%20copy.jpg" width="108" height="29" border="0"></a></td>
            <td><a href="Reg_Form.htm" target="_self"><img src="images/Image4%20copy.jpg" width="102" height="29" border="0"></a></td>
            <td><a href="products.html" target="_self"><img src="images/Image3%20copy.jpg" width="91" height="29" border="0"></a></td>
            <td><a href="talktous.html" target="_self"><img src="images/Image2%20copy.jpg" width="105" height="29" border="0"></a></td>
            <td><img src="images/Image22%20copy.jpg" width="193" height="29" border="0"></td>
          </tr>
        </tbody>
      </table>
      </td>
    </tr>
  </tbody>
</table>

<form>
<table><tbody><tr valign="top" border="0" cellspacing="0" cellpading="0">
      <td><img src="images/start.jpg" width="700" height="60" border="0"></td>
    </tr></tbody></table><table width="614" cellpadding="0" cellspacing="0">
 
    <tr>
      <td rowspan="3">
      <table border="0">
        
         <tr>
            <td><a href="Item_Lookup.htm" target="_self"><img id="img2" src="images/item1.jpg" onmouseover="callimgchange2()" onmouseout="revimgchange2()" border="0" WIDTH="175" HEIGHT="19"></a></td>
          </tr>
          <tr>
            <td><a href="catalogue.html" target="_self"><img id="img3" src="images/Cat.jpg" onmouseover="callimgchange3()" onmouseout="revimgchange3()" border="0" WIDTH="175" HEIGHT="17"></a></td>
          </tr>
          <tr>
            <td><img id="img4" src="images/cust1.jpg" "border="0" WIDTH="175" HEIGHT="17"></td>
          </tr>
          <tr>
            <td><a href="order.html" target="_self"><img id="img5" src="images/order.jpg" onmouseover="callimgchange5()" onmouseout="revimgchange5()" border="0" WIDTH="175" HEIGHT="18"></a></td>
          </tr>
      </table>
      </td>
      <td width="302" rowspan="2" height="73">
      <table width="375" cellpadding="0" cellspacing="0" bgcolor="#fbfce9">
        <tbody>
          <tr>
            <td cellpading="0" border="0" cellspacing="0" bgcolor="#ffffff" width="298"><img src="images/Imagenew2.jpg" width="401" height="41" border="0"></td>
            </tr>
          <tr>
            <td cellpading="0" border="0" cellspacing="0" height="145" width="384" bgcolor="#ffffff"><font face="Tahoma" size="-1"> &nbsp; <font color="#005e17" size="2" face="Tahoma">To change Your Password,</font>&nbsp;<font color="#990000"><a href="Passchg.html" target="_self">CLICK&nbsp;HERE</a></font><font color="#990000"> </font></font><b>&nbsp;&nbsp; </b>&nbsp; &nbsp; &nbsp; &nbsp;<b> </b><b> &nbsp; </b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
          </tr>
        </tbody>
      </table>
      </td>
    </tr>
    <tr>
      </tr>
    <tr>
      </tr>
  </table><br><br>
<br>
<hr>
<font color="darkblue">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; </font><font color="darkblue" size="1" face="Tahoma">&nbsp; &nbsp;<font color="darkblue"><a href="Reliable.html" target="_self">[About Reliable</a>][<a href="Reg_Form.htm" target="_self">Membership</a>][<a href="products.html" target="_self">Products]</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[<a href="talktous.html" target="_self">&nbsp;Talk to&nbsp;us</a>]&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;</font>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;</font><font size="1" face="Tahoma"><br>
</font>
</form>
</body>
<%
end if
%>


</html>