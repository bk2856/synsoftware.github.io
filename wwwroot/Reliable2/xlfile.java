import java.awt.*;
import java.awt.event.*;
import java.applet.*;
import com.f1j.*;
import java.io.*;
import java.util.*;

public class xlfile extends Applet {

  boolean isStandalone = false;
   com.f1j.View f1;
   Scrollbar  hbar ;
   Scrollbar  vbar ;
   int x;
   int sh=1;
   List l1;
   String wbook;
   String sheet;
   int sheetValve;
   Button saveBt;
Hashtable h;
  public xlfile() {
  }
  public void init() {
    try {
    jbInit();
    }
    catch (Exception e) {
    e.printStackTrace();
    }
  }
   //    //UIManager.setLookAndFeel(new com.sun.java.swing.plaf.metal.MetalLookAndFeel());

  
  private void jbInit() throws Exception {
    x=10;
    this.setLayout(null);
    f1 = new com.f1j.View(); 
    saveBt=new Button("Save");
    f1.setBounds(0,10,750,300);
    saveBt.setBounds(100,350,60,30);
    wbook=getParameter("xlWorkBookURL");

     try{
          f1.read(wbook);
         // f1.read("test29b.xls");
         //java.io.OutputStream  fo=new java.io.FileOutputStream("C:\\b.xls");
         //f1.write(fo,f1.eFileExcel97);
        
        }catch(Exception e){
        System.out.println("Exception okkkkkkkk"+e);
        
        }
    short s=0;
    f1.setShowTabs(s);
    this.add(f1);
    //this.add(saveBt);
   sheet=getParameter("sheetName"); 
if(sheet!=null)

   sheetValve=getSheetIndex(sheet);
   f1.setSheet(sheetValve);   
   f1.setTopRow(0);
   f1.setLeftCol(0);
   f1.setAllowInCellEditing(false);
   
   f1.setShowEditBar(false);
   f1.setMaxCol(60);
   saveBt.addActionListener(new java.awt.event.ActionListener() {
      public void actionPerformed(ActionEvent e) {
        saveBt_actionPerformed(e);
      }
    });
   

   //f1.repaint();
  }

  public int getSheetIndex(String sheetName){
   String sName=sheetName.replace('^',' ');
   int sheetNo=f1.getNumSheets();
   try{
   h=new Hashtable();
   for(int i=0;i<sheetNo;++i)
         {
         h.put(f1.getSheetName(i),i+"");  
         }
   }catch(Exception e){}
   int sno=Integer.parseInt(h.get(sName).toString());
   return sno;
  }

  public String getAppletInfo() {
    return "Applet Information";
  }

  
  public String[][] getParameterInfo() {
    return null;
  }

 

public void paint(Graphics g){
  // g.drawString("hello "+wbook+sheet,10,++x); 
  // g.drawString("Loding....................---#"+getSheetIndex(sheet)+h,200,350);
   
   }
public void saveBt_actionPerformed(ActionEvent e){
  sheet="@@@@";
  //repaint();
 FileDialog fd = new FileDialog(new Frame(),"SAVE",FileDialog.SAVE);
 fd.show();

 String dir=fd.getDirectory();
 String file=fd.getFile();

 //file=file.substring(0,file.lastIndexOf('.'));
 //file=dir.concat(file);
 //file=file.concat(".xls");
sheet="33333444";
/* try{
 f1.write("c:\\aqq.xls",f1.eFileExcel97);
 }catch(Exception e1){sheet="2222";}*/
 sheet=dir.concat(file);
 sheet=sheet.concat(".xls");

repaint(); 
 }
}