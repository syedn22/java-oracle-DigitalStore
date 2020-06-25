create table Product(
Prod_id varchar(6) PRIMARY KEY,
Name varchar(50) NOT NULL,
Prod_manu varchar(50) NOT NULL,
ModelNo varchar(50) NOT NULL,
Prod_descrip varchar(1500) NOT NULL,
Qty Number(5) NOT NULL,
Price Number(7) NOT NULL);

create table cart(
user_id varchar(30) NOT NULL,
Prod_id varchar(6) NOT NULL,
ProdName varchar(50) NOT NULL,
Quantity number(5) NOT NULL,
price Number(7,2) NOT NULL,
Status char(1) NOT NULL,
FOREIGN KEY (Prod_id) REFERENCES Product(Prod_id),
FOREIGN KEY (User_id) REFERENCES UserDetails(User_id));

create table userDetails(
User_id varchar(50) PRIMARY KEY,
User_name varchar(50) NOT NULL,
User_pass varchar(20) NOT NULL,
USer_phNO varchar(20) NOT NULL,
User_add varchar(75) NOT NULL);

create table BillDetails(
Bill_id number(5) NOT NULL,
Bill_Date date NOT NULL,
User_id varchar(50) NOT NULL,
Prod_id varchar(6) NOT NULL,
ProdName varchar(50) NOT NULL,
Qty number(5) NOT NULL,
MobileNo Varchar(20) NOT Null,
Net_amt NUMber(7,2) NOT NULL,
FOREIGN KEY (Prod_id) REFERENCES Product(Prod_id),
FOREIGN KEY (User_id) REFERENCES UserDetails(User_id));

create table OrderDetails(
Order_id number(5) NOT NULL,
Order_Date date NOT NULL,
User_id varchar(50) NOT NULL,
Prod_id varchar(6) NOT NULL,
ProdName varchar(50) NOT NULL,
Qty number(5) NOT NULL,
Net_amt NUMber(7,2) NOT NULL,
status varchar(3) NOT NULL,
billstatus varchar(1) NOT NULL,
FOREIGN KEY (Prod_id) REFERENCES Product(Prod_id),
FOREIGN KEY (User_id) REFERENCES UserDetails(User_id));

insert into Orderdetails values(10000,TO_DATE(sysdate,'yyyy-mm-dd'),'syed@gmail.com','12345','keyboard',1,600,'dvd');

create table Payment
( User_id varchar(50),
  Payment_type varchar(30) NOT NULL,
  Payment_date date NOT NULL,
  Total_amt number(7) NOT NULL,
  FOREIGN KEY (User_id) REFERENCES UserDetails(User_id));
 
insert into Product values('12345' , 'Graphic card' ,' Msi', 'Gtx 1050 Ti','Processor Count :1
Computer Memory Type :DDR3 SDRAM
Maximum Memory Supported :4 GB
Graphics Coprocessor : NVIDIA GeForce GTX 1050 Ti
Graphics Chipset Brand : GTX 1050
Graphics RAM Type : GDDR5
Graphics Card Ram Size :4 GB
Graphics Card Interface :PCI-E' ,30,12500);

insert into Product values('45652' , 'Graphic card' ,'Nvidia- Asus', 'Gtx 1650 ','Item model number :DUAL-GTX1650-O4G
Hardware Interface :PCI Express x8
Graphics Card Interface	:PCI-Express x16' ,15,25000);

insert into Product values('78945' , 'Graphic card' ,'Nvidia- Asus', 'Gtx 1050','Processor Count :1
Computer Memory Type	:GDDR5
Graphics Coprocessor	:GeForce GTX 1050
Graphics Card Ram Size	:2 GB
Graphics Card Interface	:PCI-E
Wattage	:300 Watts' ,67,48000);

insert into Product values('78965' , 'Graphic card' ,'Nvidia- Msi', 'Gtx 1060 Ti','Graphics Coprocessor : GeForce GTX 1080 Ti
Graphics RAM Type : GDDR5
Graphics Card Ram Size : 11 GB
Graphics Card Interface	: PCI-E
Wattage	:600 Watts' ,15,55000);

insert into Product values('67965' , 'Monitor' ,'Philips', 'Philips -Full HD','SmartImage presets for easy optimized image settings,
   16:9 Full HD display for crisp detailed images,
LowBlue Mode for easy on-the-eyes productivity , Less eye fatigue with Flicker-free technology
HDMI ensures universal digital connectivity.' ,15,10000);

insert into Product values('45236' , 'Monitor' ,'HP', 'HP 27-inch Ultra-Slim Full HD Computer',' With its vivid IPS panel, this micro-edge Full HD display delivers ultra-wide viewing angles and crisp, clear picture quality,
Immerse yourself in great sound without cluttering your desk with external speakers,
IPS technology brings you clear views from almost any angle, Every seat is the best seat in the house,
A virtually edge-to-edge panel means maximized screen area and expansive entertainment.' ,15,7500);

insert into Product values('49762' , 'KeyBoard' ,'Zebronics', ' Zeb KM2100 Multimedia USB Keyboard','he keys are UV coated and this keyboard is easy to install with plug and play device, 
USB Keyboard, with 12 multimedia keys,  
Comfortable and silent switch tactile feeling,  
Compatible with Windows XP/Vista/7/8/10, 
Comes with volume keys and rupee keys. ' ,15,1200);

insert into Product values('78315' , 'Keyboard' ,'HP', '100 Wired USB Keyboard','Features a full range of 109 keys, including 12 working function keys and 3 hot keys
Designed for comfort Natural contours and shape allow the keyboard to sit in a comfortable position for your wrist and hands
Connection is a breeze with USB connectivity so you can get up and running fast
Compatible with Windows 7/8/10 Operating Systems and available USB port compatibility, adjustable height
Dimensions: 46.5 x 17 x 3 cm, weight: 0.49 kg' ,15,800);

insert into Product values('78245' , 'CPU' ,'Dell', 'Dell XPS 8930 Special Edition Tower Desktop' ,'9th Generation Intel i7-9700K 8-Core 3.60 GHz Processor (12MB SmartCache, Turbo Boost up to 4.90 GHz)
64GB DDR4 2666MHz Memory, 2TB SSD + 2TB 7200 RPM SATA Hard Drive, DVD-RW Drive, Windows 10 Home (64-bit)
Intel UHD Graphics 630, 1 x USB 3.1 Gen 2, 2 x USB 3.1 Type-C, 6 x USB 3.1 Gen 1, 2 x USB 2.0, HDMI, Display Port
Dell Wireless 802.11a/c + Bluetooth v4.2, Gigabit Ethernet, Integrated 5.1 Channel Audio with Waves MaxxAudio Pro
2-Year Warranty by Techno Intelligence, Dell USB Laser Mouse & Wired Keyboard (Black), No Monitor Included',15,55000);

insert into Product values('44965' , 'CPU' ,'HP','HP Slimline 270-p033in 2017 Tower Desktop','7th Generation Intel Core i3-7100 processor
4GB DDR4 RAM
1TB hard drive
Intel HD integrated graphics
Windows 10 Home operating system',15,55000);

insert into Product values('65413' , 'CPU' ,'Sys Cart', 'SysCart® RV4 Video Rendering Workstation' ,'[Graphics Card]: ZOTAC GAMING GeForce RTX 2080 Ti Twin Fan 11GB GDDR6 Graphics Card
[Processor]: Ryzen 9 3900X up to 4.60 GHz 3rd Generation Processor/AM4/12 Cores/24 Threads/70MB Cache/
[SSD1]: CORSAIR® Force Series™ MP600 1TB NVMe M.2 SSD/Read Speed: 4950 MBps/ Write Speed: 4250 MBps/PCIe Gen4x4 Interface
[SSD2]: CORSAIR® Force Series™ MP300 2TB NVMe M.2 SSD/Read Speed: 1600 MBps/ Write Speed: 1080 MBps/PCIex2 Interface
[RAM]: CORSAIR® Vengeance LPX 64GB DDR4 3200 MHz RAM',15,55000);




insert into cart values('syed@gmail.com','12345','cpu',1,6000,'N');
insert into cart values('syed@gmail.com','66345','keyboard',1,600,'N');
insert into cart values('syed@gmail.com','14578','cpu',1,9000,'N');


insert into userDetails values('syed@gmail.com','Syed Mohammed','22122000',7538880996,'No-35 edayarpalayam coimbatore');
insert into userDetails values('Manoj@gmail.com','Manoj Kumar','05042000',7708738247,'No-43 vadavalli coimbatore');
insert into userDetails values('Palani@gmail.com','Palani','27031999',9944724456,'No-12/34 kovilMedu coimbatore');
insert into userDetails values('Naveen@gmail.com','Naveen','04072000',7871569422,'No-67 edayarpalayam coimbatore');
insert into userDetails values('Jaga@gmail.com','Jaga Pradeep','02112000',9944418062,'No-45 edayarpalayam Tirupur');




insert into BillDetails values(50000,TO_DATE('12-04-2020','DD-MM-YYYY'),'Manoj@gmail.com','12345','keyborad',1,'7538880996',600); 
insertBillDetails(12345,'12-04-2020','syed@gmail.com','keyborad',1,'7538880996',600); 


/*Procedure for summary */
create or replace Procedure summary
(Userid IN BillDetails.User_id%TYPE,
 id OUT BillDetails.Bill_id%TYPE,
 date1 OUT BillDetails.Bill_date%TYPE,
 PName OUT BillDetails.ProdName%TYPE,
 Totamt OUT BillDetails.Tot_amt%TYPE
)
AS 
BEGIN
  select Bill_id,Bill_date,Prodname,Tot_amt INTO id,date1,PName,Totamt from BillDetails where User_id = Userid;
End;

/*Update the stock using trigger*/

create or replace trigger update_stock
after update of status on cart
for each row
Begin
	 dbms_output.put_line('Old Status: ' || :OLD.status); 
   dbms_output.put_line('New Status: ' || :NEW.status);
	 update product set qty = qty - :new.Quantity where Prod_id  = :new.Prod_id;
end; 

/* Re altered Procedure for insertBillDetails */



create or replace PROCEDURE insertBillDetails
(
Userid IN BillDetails.User_id%TYPE
 )
AS
PreviousBillNo number(5);
Prodid varchar(5);
PdName varchar(30);
Cprice number(7,2); 
MobileNo varchar(20);

BEGIN
  select Bill_id INTO PreviousBillNo  from ( select * from Billdetails order by Bill_id desc  ) where rownum = 1; 
  select USer_phNO INTO MobileNO from Userdetails where User_id =Userid;
  PreviousBillNo := PreviousBillNo+1;
  insert into BillDetails  select PreviousBillNo,TO_DATE(sysdate,'yyyy-mm-dd'),Userid ,Prod_id,Prodname,Qty,MobileNo,(Qty*Net_amt) from OrderDetails where User_id =Userid and status='UOD' and billdetails='N' ;
  update Orderdetails set billstatus ='Y' user_id = Userid and status= 'N';
  commit;

EXCEPTION
  WHEN OTHERS THEN 
  DBMS_OUTPUT.PUT_LINE('ENTRY failed');
  ROLLBACK;   
END;



create or replace PROCEDURE insertOrderDetails
(
Userid IN OrderDetails.User_id%TYPE,
result  OUT varchar2
 )
AS
PreviousOrderNo number(5);
Prodid varchar(5);
PdName varchar(30);
Cprice number(7,2); 
MobileNo varchar(20);

BEGIN
  select Order_id INTO PreviousOrderNo  from ( select * from Orderdetails order by Order_id desc  ) where rownum = 1; 
  PreviousOrderNo := PreviousOrderNo+1;
  insert into OrderDetails  select PreviousOrderNo,TO_DATE(sysdate,'yyyy-mm-dd'),Userid ,Prod_id,Prodname,Quantity,(Quantity*price),'UOD','N' from cart where User_id =Userid and status = 'N' ;
  update cart set status = 'B' where user_id = Userid and status= 'N';
  commit;
  result := 'True'; 
EXCEPTION
  WHEN OTHERS THEN 
  DBMS_OUTPUT.PUT_LINE('ENTRY failed');
  result := 'False'; 
  ROLLBACK;   
END;

/* Table Payment */



/*Add to the cart Procedure*/
create or replace Procedure Addtothecart
(Prodid IN product.Prod_id%TYPE,
 Userid IN userDetails.User_id%TYPE,
 Quantity IN Product.Qty%TYPE,
 result OUT varchar2
)
AS 
ProdName varchar(50);
rate Number(7,2) ;
BEGIN

      select ModelNo,price into ProdName,rate  from Product where Prod_id = Prodid;
      Insert into cart values(Userid,Prodid,ProdName,Quantity,rate,'N');
      Commit;
       DBMS_OUTPUT.PUT_LINE('ENTRY success');
       result := 'true';
EXCEPTION
  WHEN OTHERS THEN 
  
  DBMS_OUTPUT.PUT_LINE('ENTRY failed');
  ROLLBACK;        
  result := 'False';
End;




/*procedure to add the details in payment*/


create or replace Procedure  paymentDetails
(
 Userid IN userDetails.User_id%TYPE,
 Type1 IN varchar2,
 result OUT varchar2
)
AS 
ProdName varchar(50);
totamt Number(7,2) ;
BEGIN

     select sum(tot_amt) into totamt   from billdetails where User_id = Userid;
     insert into payment values(Userid,Type1,TO_DATE(sysdate,'yyyy-mm-dd'),totamt);
      Commit;
       DBMS_OUTPUT.PUT_LINE('ENTRY success');
      result := 'true'; 
EXCEPTION
  WHEN OTHERS THEN 
  result := 'False';
  DBMS_OUTPUT.PUT_LINE('ENTRY failed');
  ROLLBACK;        
 
End;





