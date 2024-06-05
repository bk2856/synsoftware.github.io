<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0//EN">
<%@ Language=VBScript %>
<html>
<head>
<meta name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta name="GENERATOR" content="IBM WebSphere Page Designer V3.0.2 for Windows">
<meta http-equiv="Content-Style-Type" content="text/css">
<title></title>
</head>
<body link="#990000">
  
<%

  DIM cstno,oldpass,newpass

  
  oldpass=request.form("oldpass")
  newpass=request.form("newpass")
  Set cn = Server.CreateObject("ADODB.Connection")
  Cn.Open  "FILEDSN=Reliable"
  totlen=INSTR(1,REQUEST.COOKIES,";")
  totcook=MID(REQUEST.COOKIES,1,(totlen-1)) 
  idlen=INSTR(1,totcook,",")
  idcook=mid(totcook,1,idlen-1)
 
 set rst001=server.createobject("adodb.recordset")
rst001.open "select * from customers WHERE cstno = '" & idcook & "' and password='" & oldpass & "'", cn,1,2
 if not (rst001.EOF and rst001.BOF) then
 rst001("password")=newpass


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
             
       Public sub callasp()
            document.forms(0).submit()
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


<form name="passchange" action="new.asp" method="post">
<input type="hidden" name="cook1" id="cook1" value="<%= request.form("newpass") %>" <TABLE><tbody><tr valign="top" border="0" cellspacing="0" cellpading="0">
      <td><img src="images/start.jpg" width="700" height="60" border="0"></td>
    </tr></tbody></table><table width="596" cellpadding="0" cellspacing="0">
 
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
      <td rowspan="3" width="408">
      <table>
        <tbody>
          <tr>
            <td><img src="images/Imagep4.jpg" width="268" height="64" border="0"></td>
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
<br><br>
<hr>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;<font color="#990000" size="1" face="Tahoma"><a href="Reliable.html" target="_self">[</a></font><font color="#990000" size="1" face="Tahoma"><font color="darkblue"><a href="Reliable.html" target="_self">&nbsp;About Reliable</a>][<a href="Reg_Form.htm" target="_self">Membership</a>][<a href="products.html" target="_self">Products]</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<a href="talktous.html" target="_self"> [&nbsp;Talk to&nbsp;us]</a>|&nbsp; &nbsp; </font></font>
<p><font color="darkblue">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; <br>
<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; </font><font color="#990000" size="1" face="Tahoma"><font color="darkblue"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; </font></font><font color="darkblue"><font color="darkblue">&nbsp; &nbsp;</font>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;</font><br></p>
</form>
<% 
else %>

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

<p><br><br><br>
&nbsp; &nbsp; <font size="4"><b><font color="#990000">T</font><font color="#990000">he Old Password You entered is Incorrect
!</font></b></font><b><br>
&nbsp; &nbsp; <br>
<br>
&nbsp;<font size="5" face="Arial"> &nbsp;Try Again</font></b><b>...</b><br><br><br><br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; Back To<a href="Passchg.html" target="_self"> Passwordchange Screen</a></p>
<p><br><br>
</p>
<hr>
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<font color="#990000" size="1" face="Tahoma"><a href="Reliable.html" target="_self">[</a></font><font color="#990000" size="1" face="Tahoma"><font color="darkblue"><a href="Reliable.html" target="_self">&nbsp;About Reliable</a>][<a href="Reg_Form.htm" target="_self">Membership</a>][<a href="products.html" target="_self">Products]</a>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp;<br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp;<a href="talktous.html" target="_self"> [&nbsp;Talk to&nbsp;us]</a>&nbsp; &nbsp; </font></font></p>
<p><br><br>
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; &nbsp;</p></body>


</html>

<%end if
%>

