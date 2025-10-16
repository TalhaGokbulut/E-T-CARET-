# E-TICARET
                                         SQL ve Power BI kullanarak Derimont satışları ile ilgili satış verileri üzerinde veri analizi, raporlama ve görselleştirme projesi.
PROJE HAKKINDA
Bu proje, derimont üzerine Bir E-Tıcaret  üzerine hazırlanmış bir SQL Server veri tabanı ve Power BI görsel raporlarını içermektedir. Amaç; satış, mağaza, personel ve müşteri bazlı analizler yaparak iş zekâsı raporları üretmektir.
Veritabanı yapımı SQL üzerinden oluşturulmuştur. Sql ile çektiğim sorgulararı power bı ile görselleştirdim. 
Kurulum ve Kullanım

1️⃣ SQL Server’da audı veri tabanı.sql dosyasını çalıştırarak veritabanını oluşturun.

2️⃣ audi insert devamı.sql dosyasını çalıştırarak örnek verileri ekleyin.

3️⃣ AUDİPROCEDURE.sql ve AUDİSORGULARİ.sql dosyalarındaki sorguları/procedürleri çalıştırın.

4️⃣ Power BI Desktop ile veritabanına bağlanarak rapor dosyalarını inceleyin.

💡 Öne Çıkan Analizler

 Satış Analizi: Şehir ve Ürün bazlı toplam satışlar,Satş adetleri,Personellerin satış performansları,Yıllara göre toplam karlılık,Hangi ay satışların yüksek olduğu vs.
 ## ÖRNEKLER Select S.City,
-- 7-hangi şehirde ne kadar satış yapılmış  
Select S.City,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores s ON S.StoreId=O.StoreId
group by s.City
order by TotalAmount desc

##--10-Bursa'daki satışların toplam tutarı  
Select S.City,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Stores S on S.StoreId=o.StoreId
where city='Bursa'
group by S.City
order by TotalAmount desc

👥 Müşteri Analizi: En çok alışveriş yapan müşteriler,Adet bazlı sipariş sayıları,İlk siparişinden bugune kadar geçen zaman,Müşterini en çok tercih ettiği beden ve renkler.
##-13-en yüksek toplam harcama yapan müşteriler (Toplam Tutar) 
Select C.CustomerName,C.CustomerLastName,
sum(O.Quantity*P.SalePrice) as TotalAmount
from Orders O
join Products P on P.ProductId=O.ProductId
join Customers C on C.CustomerId=o.CustomerId
GROUP BY C.CustomerName,C.CustomerLastName
ORDER BY TotalAmount DESC

##  --23. Müşteri ilk siparişinden bugüne kaç gün geçmiş? 
 Select C.CustomerName,C.CustomerLastName,
 min(O.OrderDate) as FirstOrder,
 datediff(day,min(O.OrderDate),getdate()) as DaysPassed
 from Orders O
 join Customers C on C.CustomerId=o.CustomerId
 GROUP BY C.CustomerName,C.CustomerLastName
 order by DaysPassed desc


💼 Mağaza Performansı: Bölge bazlı ciro karşılaştırmaları, Mağaza bazlı satış karlılıkları,Aylık Toplam Karlılık 

 ##   --33--A/B Testi Karşılaştırma son 30 günde bu mağazalardaki satışlar Bursa-Ankara 
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



📈 Trend İncelemesi: Aylık satış değişimleri,Yıllık Satış değişimleri

##--15-aylık sipariş sayısı adet  
select
format(O.OrderDate,'yyyy-MM') as Month,
sum(O.Quantity) as TotalQuantity
from Orders O
group by Format(O.OrderDate,'yyyy-MM')
order by Month

Daha sonra veri tabanımı POWER BI İLE GÖRSELLEŞTİRDİM:

<img width="1312" height="806" alt="POWER BI GÖRSEL 1" src="https://github.com/user-attachments/assets/3a2bc905-7ff6-45f6-8315-64e2340bec0b" />














