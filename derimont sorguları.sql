--1-ürün bazlı ortalama sipariş tutarı  
Select P.ProductName,
avg(O.Quantity*P.SalePrice) as AvgTotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
group by p.ProductName
order by AvgTotalAmount desc
--2- mağaza bazlı satış dağılımı  
Select S.StoreName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on s.StoreId=O.StoreId
group by s.StoreName
order by TotalAmount desc
--3- en çok satılan ürün  
Select P.ProductName,
sum(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by p.ProductName
order by TotalQuantity desc
--4-Müşteri bazlı toplam satış adedi  
Select C.CustomerName,C.CUstomerLastName,
sum(O.Quantity) as TotalQuantity
from Orders O
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
order by TotalQuantity desc
--5- en çok satın alan müşteriyi bulma  
Select C.CustomerName,C.CustomerLastName,
max(O.Quantity) as TotalQuantity
from Orders O
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
ORDER BY TotalQuantity DESC
--6-ürün bazlı toplam tutar  
Select P.ProductName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
group by p.ProductName
order by TotalAmount desc
-- 7-hangi şehirde ne kadar satış yapılmış  
Select S.City,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores s ON S.StoreId=O.StoreId
group by s.City
order by TotalAmount desc
--8-hangi mağazada ne kadar satış yapılmış  
Select S.StoreName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on s.StoreId=o.StoreId
group by s.StoreName
order by TotalAmount desc
--9-hangi ödeme yöntemi ne kadar kullanılmış  
Select P.PaymentMethodName,
count(O.OrderId) as PaymentCount
from Orders O 
join PaymentMethods P on P.PaymentMethodId=O.PaymentMehodId
group by P.PaymentMethodName
order by PaymentCount desc
--10-Bursa'daki satışların toplam tutarı  
Select S.City,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on S.StoreId=o.StoreId
where city='Bursa'
group by S.City
order by TotalAmount desc
--11-Bursa'daki mağazada görevli personeller ve pozisyonları
Select E.EmployeeName,E.EmployeeLastName,E.Position,S.StoreName
from Employees E 
join Stores S on S.StoreId=e.StoreId
where City='Bursa'
group by E.EmployeeName,E.EmployeeLastName,E.Position,S.StoreName
--12-en çok sipariş veren müşteriler  
Select C.CustomerName,C.CustomerLastName,
count(O.OrderId) as OrderCount
from Orders O
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,c.CustomerLastName
ORDER BY OrderCount DESC
--13-en yüksek toplam harcama yapan müşteriler (Toplam Tutar) 
Select C.CustomerName,C.CustomerLastName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
ORDER BY TotalAmount DESC
 --14-aylık satış performansı (ToplamTutar)  
 Select 
 FORMAT(O.OrderDate,'yyyy-MM') as Month,
 sum(O.Quantity*P.SalePrice) as TotalAmount
 from Orders O
 join Products P ON p.ProductId=o.ProductId
 GROUP BY FORMAT(O.OrderDate,'yyyy-MM')
 order by Month
--15-aylık sipariş sayısı adet  
select
format(O.OrderDate,'yyyy-MM') as Month,
sum(O.Quantity) as TotalQuantity
from Orders O
group by Format(O.OrderDate,'yyyy-MM')
order by Month
--16-Tüm ürünlerin stok durumunu görebileceğimiz liste  
Select P.ProductName,P.StockQuantity,
case
    when StockQuantity=0 then 'Out OF Stock'
	when StockQuantity <11 then 'Low Stock'
	else 'Suffi Cient Stock'
	end as StockStatus
	from Products P
	order by StockStatus asc
--17-Ödeme Yöntemine açıklama getir 
Select P.PaymentMethodId,O.OrderId,
case
     when PaymentMethodId=1 then 'Cash'
	 when PaymentMethodId=2 then 'Credit Cart'
	 when PaymentMethodId=3 then 'Bank Transfer'
	 else 'Bilinmiyor'
	 end as PaymentCount
	 from Orders O
	 join PaymentMethods P on P.PaymentMethodId=O.PaymentMehodId
	 ORDER BY PaymentCount 
 --18-ürün fiyatına göre kategori belirle 
Select P.ProductName,P.SalePrice,
case
    when SalePrice <=5000 then 'Entry Level'
	when SalePrice < 9000 then 'Mid Range'
	else ' Premimum'
	end as ProductSegment
	from Products P
	order by ProductSegment asc
 --19-Mağaza performansı etiketi 
 Select S.StoreName,
 sum(O.Quantity*P.SalePrice) as TotalAmount,
 case
     when Sum(O.Quantity*P.SalePrice) >20000 then ' High Performance'
	 when Sum(O.Quantity*P.SalePrice) >10000 then ' Medium Performance'
	 else 'Low Performance'
	 end as StorePerformance
	 from Orders O
	 join Products P on P.ProductId=O.ProductId
	 join Stores S on S.StoreId=o.StoreId
	 GROUP BY S.StoreName
	 ORDER BY StorePerformance DESC
--20-aylık ürün satış sayısı 
Select 
format(O.OrderDate,'yyyy-MM') as Month,
P.ProductName,
sum(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by format(O.OrderDate,'yyyy-MM'),P.ProductName
order by Month
--21-Bir Mağazanın Gün bazlı satış rakamı 
Select
format(O.OrderDate,'yyyy-MM-dd') as Day,
S.StoreName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on S.StoreId=O.StoreId
group by format(O.OrderDate,'yyyy-MM-dd'),S.StoreName
order by day
--22- Yıllık Ürün Bazlı Satış Sayısı 
Select 
YEAR(O.OrderDate) as Year,
P.ProductName,
sum(O.Quantity*P.SalePrice) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by YEAR(O.OrderDate),P.ProductName
order by TotalQuantity desc
 --23. Müşteri ilk siparişinden bugüne kaç gün geçmiş? 
 Select C.CustomerName,C.CustomerLastName,
 min(O.OrderDate) as FirstOrder,
 datediff(day,min(O.OrderDate),getdate()) as DaysPassed
 from Orders O
 join Customers C on C.CustomerId=o.CustomerId
 GROUP BY C.CustomerName,C.CustomerLastName
 order by DaysPassed desc
--24 En çok satan 5 ürün 
Select Top 5 P.ProductName,
SUM(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by P.ProductName
order by TotalQuantity desc
--25-- Son 30 günde alışveriş yapan müşteriler 
Select Distinct C.CustomerId,C.CustomerName,C.CustomerLastName
from Customers C 
join Orders O ON c.CustomerId=o.CustomerId
where O.OrderDate >=DATEADD(day,-30,getdate())
--26-- Aylar arası sipariş değişimi (karşılaştırmalı) 
Select
Format(O.OrderDate,'yyyy-MM') as Month,
count(O.OrderId) as OrderCount
from Orders O
group by format(O.OrderDate,'yyyy-MM')
order by Month
--27-- Her müşterinin ilk ve son siparişi arası geçen gün 
Select C.CustomerName,C.CustomerLastName,
min(O.OrderDate) as FirstOrder,
max(O.OrderDate) as LastOrder,
datediff(day,min(O.OrderDate),max(O.OrderDate)) as DaysPassed
from Orders O
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
order by DaysPassed desc
--28-- Her Müşterinin En Çok Aldığı Ürün 
Select C.CustomerName,C.CustomerLastName,P.ProductName,
max(O.Quantity) as TotalQuantity
from Orders O
join Customers C on C.CustomerId=o.CustomerId
join Products P on P.ProductId=O.ProductId
group by c.CustomerName,c.CustomerLastName,p.ProductName
order by TotalQuantity desc
--29-- Toplam 7000 ₺’den fazla alışveriş yapan müşteriler 
Select C.CustomerName,C.CustomerLastName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
having sum(O.Quantity*P.SalePrice) >=7000
--30-- Toplam satılan adedi 2’den fazla olan ürünler 
Select C.CustomerName,C.CustomerLastName,P.ProductName,
sum(O.Quantity) as TotalAmount
from Orders O
join Customers C on C.CustomerId=o.CustomerId
join Products P on P.ProductId=O.ProductId
group by c.CustomerName,c.CustomerLastName,P.ProductName
having sum(O.Quantity) >=1
--31 Haftanın hangi günü daha çok sipariş var? 
Select
DATEPART(Weekday,O.OrderDate) as DaysOftheWeek,
count(O.OrderId) as OrderCount
from Orders O
group by DATEPART(Weekday,O.OrderDate)
order by DaysOftheWeek
--32 – Her ürünün en çok alındığı şehir 
Select S.StoreName,P.ProductName,
sum(O.Quantity) as TotalQuantity
from Orders O
join Stores S on S.StoreId=o.StoreId
join Products P on P.ProductId=O.ProductId
group by s.StoreName,p.ProductName
order by TotalQuantity desc
--33--A/B Testi Karşılaştırma son 30 günde bu mağazalardaki satışlar Bursa-Ankara 
Select S.StoreName,
count(O.OrderId) as OrderCount,
sum(O.Quantity*P.SalePrice) as TotalAmount,
sum(O.Quantity) as TotalQuantity,
avg(O.Quantity*P.SalePrice) as AvgTotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on S.StoreId=o.StoreId
WHERE City in ('Bursa','Ankara') and O.OrderDate >=DATEADD(day,-30,getdate())
group by S.StoreName
order by TotalAmount
--34 Hangi Mağaza hedef ciroyu geçti 
Select S.StoreName,
sum(O.Quantity*P.SalePrice) as TotalAmount,
case
    when Sum(O.Quantity*P.SalePrice) >10000 then 'Target Achieved'
	else 'Target Not Achieved'
	end as StoreSegment
	from Orders O
	join Products P ON P.ProductId=O.ProductId
	join Stores S on S.StoreId=o.StoreId
	group by s.StoreName
	order by StoreSegment desc
--35—Hangi Müşteri segmenti daha karlı(müşterileri toplam harcamalarına göre kategorize et) 
Select C.CustomerName,C.CustomerLastName,
sum(O.Quantity*P.SalePrice) as TotalAmount,
case
   when sum(O.Quantity*P.SalePrice) >10000 then 'Premium'
   when sum(O.Quantity*P.SalePrice) >7000 then 'Medium'
   else 'Standart'
   end as CustomerSegment
   from Orders O
   join Products P on P.ProductId=O.ProductId
   join Customers C on C.CustomerId=o.CustomerId
   GROUP BY C.CustomerName,C.CustomerLastName
   order by CustomerSegment desc
--36- Son 3 ayda en az 1 alışveriş yapanları bulalım: 
Select C.CustomerName,C.CustomerLastName,
count(O.OrderId) as OrderCount
from Orders O
join Customers C on C.CustomerId=o.CustomerId
WHERE o.OrderDate >=DATEADD(MONTH,-3,GETDATE())
group by c.CustomerName,c.CustomerLastName
having count(O.OrderId) >=1
--37-Sipariş Oluşturma ve Stok Güncelleme transaction ile 
Begin Transaction
Begin Try
         insert into Orders(CustomerId,EmployeeId,BrandId,ProductId,PaymentMehodId,StoreId,OrderDate,Quantity)
		             VALUES(17,9,1,7,1,1,GETDATE(),2)
-- stok düş
update Products
set StockQuantity=StockQuantity -2
where ProductId=7
-- Her Şey başarılı ise kaydet
commit transaction
print 'Siparis Ve Stok Güncellemesi başarıyla tamamlandı'
end try

begin catch
--hata oluşursa işlemi geri al
rollback transaction
print 'Hata Oluştu İşlem geri alındı'
end catch	                
--38-Son 3 ayda en çok satış yapılan ürünü bul 
Select top 1 P.ProductName,
sum(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
where O.OrderDate >=DATEADD(month,-3,getdate())
group by p.ProductName
order by TotalQuantity desc
--39 farklı renk veya beden seçeneklerine göre satış 
Select P.Size,P.Color,
sum(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by p.Size,P.Color
order by TotalQuantity desc
--40 aylara göre satış adedi 

--41 Cinsiyete göre toplam satış adedi ve ciro: 
Select C.Gender,
sum(O.Quantity) as TotalQuantity,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.Gender
order by TotalAmount desc
--42 En çok satılan renkler: 
Select P.Color,
sum(O.Quantity) as TotalQuantity
from Orders O
join Products P ON p.ProductId=o.ProductId
GROUP BY P.Color
order by TotalQuantity desc
-- 43 en çok satılan bedenler 
Select P.Size,
SUM(O.Quantity) as TotalQuantity
from Orders O
join Products P on P.ProductId=O.ProductId
group by Size
order by TotalQuantity desc
--44 her mağazanın kaç çalışanı var 
Select S.StoreName,
count(E.EmployeeId) as EmployeeCount
from Stores S 
join Employees E on E.StoreId=S.StoreId
group by s.StoreName
order by EmployeeCount desc
--45 hangi şehirde kaç müşteri var 
Select City,
count(C.CustomerId) as CustomerCount
from Customers C
group by City
order by CustomerCount desc
--46 en çok satış yapan personeller 
Select E.EmployeeName,E.EmployeeLastName,
sum(O.Quantity) as TotalSales
from Orders O
join Employees E on E.EmployeeId=o.EmployeeId
GROUP BY E.EmployeeName,E.EmployeeLastName
order by TotalSales desc
--47 en çok stoğu bulunan derimontlar 
select ProductName,StockQuantity
from Products
order by StockQuantity desc

 