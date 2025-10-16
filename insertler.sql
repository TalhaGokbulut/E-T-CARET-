insert into Brands(BrandName) values('Derimont')

insert into PaymentMethods(PaymentMethodName)
                  values ('Cash'),('Credit Cart'),('Bank Transfer')

insert into Stores(StoreName,City,Region)
           values ('Bursa As Merkez','Bursa','Marmara'),
		    ('Anatolium','Bursa','Marmara'),
		    ('Mall of �stanbul','�stanbul','Marmara'),
		    ('Vadi �stanbul','�stanbul','Marmara'),
		    ('Espark','Eski�ehir','�� Anadolu'),
		    ('AnkaMall','Ankara','�� Anadolu'),
		    ('K�z�lay AVM','Ankara','�� Anadolu'),
		    ('�zmir Optimum Avm','�zmir','Ege'),
		    ('Mark Antalya Avm','Antalya','Akdeniz'),
		    ('Kent Plaza','Konya','�� Anadolu'),
		    ('�orum Park Avm','�orum','�� Orta Karadeniz')

insert into Products(BrandId,ProductName,Size,Color,Cost,SalePrice,StockQuantity,ImageURL)
             values (1,'Paul Derimont','M','Black',3600,5000,70,'https://derimod.com.tr/cdn/shop/files/23WGE6503EV_5637145339_1.jpg?crop=center&height=2048&v=1755725495&width=2048'),
			        (1,'Carter Derimont','M','Black',3600,6000,40,'https://derimod.com.tr/cdn/shop/files/23WGD6490R3_5637145339_1.jpg?crop=center&height=2048&v=1758283992&width=2048'),
					(1,'Carter Derimont','M','Brown',3600,6000,20,'https://derimod.com.tr/cdn/shop/files/23WGD6490M5_5637145360_1.jpg?crop=center&height=2048&v=1755725357&width=2048'),
					(1,'Kawhi Derimont','M','Black',2000,4000,50,'https://derimod.com.tr/cdn/shop/files/19WGD6351BT_5637145339_1.jpg?crop=center&height=2048&v=1755725282&width=2048'),
					(1,'Alanzo Derimont','M','Brown',2400,5000,10,'https://derimod.com.tr/cdn/shop/files/23WGE6330NC_5637145360_1.jpg?crop=center&height=2048&v=1758283891&width=2048'),
					(1,'John Derimont','M','Green',4000,7000,10,'https://derimod.com.tr/cdn/shop/files/34678bb7863678a4599b8c1c8fa0fa41.jpg?crop=center&height=2048&v=1759266086&width=2048'),
					(1,'Sergio Derimont','M','Black',3000,6000,5,'https://derimod.com.tr/cdn/shop/files/24SGE65191M_5637145339_1.jpg?crop=center&height=2048&v=1755725487&width=2048'),
					(1,'Xavier Derimont','M','Black',6000,9000,12,'https://derimod.com.tr/cdn/shop/files/20e22c745b772b3b61d1fcbfb206e0e1.jpg?crop=center&height=2048&v=1759266101&width=2048'),
					(1,'Bruno Derimont','M','Brown',7000,12000,24,'https://derimod.com.tr/cdn/shop/files/1849f80d5cac1116ff5f915e29883b96.jpg?crop=center&height=2048&v=1757319270&width=2048'),
					(1,'Judith Derimont','F','Black',7000,11000,40,'https://derimod.com.tr/cdn/shop/files/23SGD5045U4_5637145339_1.jpg?crop=center&height=2048&v=1758283514&width=2048'),
					(1,'Luisa Derimont','F','Beige',4000,9000,100,'https://derimod.com.tr/cdn/shop/files/24SGD5172U4_5637145528_1.jpg?crop=center&height=2048&v=1756933442&width=2048'),
					(1,'Lara S�et Derimont','F','Green',6000,9000,32,'https://derimod.com.tr/cdn/shop/files/23WGE588110_5637145755_1.jpg?crop=center&height=2048&v=1758283972&width=2048'),
					(1,'Maria Derimont','F','Red',6000,14000,19,'https://derimod.com.tr/cdn/shop/files/24SGE51781M_5637145430_1.jpg?crop=center&height=2048&v=1757662179&width=2048'),
					(1,'Flora Derimont','F','Black',6000,10000,7,'https://derimod.com.tr/cdn/shop/files/25SGD5300U4_5637145401_1.jpg?crop=center&height=2048&v=1756829303&width=2048');
					
insert into Customers(CustomerName,CustomerLastName,Gender,City,Phone,CustomerAddress,Email,RegistrationDate)
       values     ('Ali','Y�lmaz','M','Istanbul','05551234501','Istanbul Street 1','ali01@gmail.com','2025-01-01'),
('Ay�e','Demir','F','Ankara','05551234502','Ankara Avenue 2','ayse02@gmail.com','2025-01-02'),
('Mehmet','Kara','M','Izmir','05551234503','Izmir Street 3','mehmet03@gmail.com','2025-01-03'),
('Fatma','Aslan','F','Bursa','05551234504','Bursa Avenue 4','fatma04@gmail.com','2025-01-04'),
('Can','�elik','M','Antalya','05551234505','Antalya Street 5','can05@gmail.com','2025-01-05'),
('Elif','Kaya','F','Konya','05551234506','Konya Avenue 6','elif06@gmail.com','2025-01-06'),
('Ahmet','Y�ld�z','M','Adana','05551234507','Adana Street 7','ahmet07@gmail.com','2025-01-07'),
('Zeynep','G�ne�','F','Mersin','05551234508','Mersin Avenue 8','zeynep08@gmail.com','2025-01-08'),
('Okan','Arslan','M','Samsun','05551234509','Samsun Street 9','okan09@gmail.com','2025-01-09'),
('Ceren','Polat','F','Trabzon','05551234510','Trabzon Avenue 10','ceren10@gmail.com','2025-01-10'),
('Burak','�zt�rk','M','Kayseri','05551234511','Kayseri Street 11','burak11@gmail.com','2025-01-11'),
('Selin','Demirta�','F','Eski�ehir','05551234512','Eski�ehir Avenue 12','selin12@gmail.com','2025-01-12'),
('Emre','K�l��','M','Gaziantep','05551234513','Gaziantep Street 13','emre13@gmail.com','2025-01-13'),
('Merve','Yal��n','F','Sakarya','05551234514','Sakarya Avenue 14','merve14@gmail.com','2025-01-14'),
('Kerem','Tun�','M','Diyarbak�r','05551234515','Diyarbak�r Street 15','kerem15@gmail.com','2025-01-15'),
('Aylin','�zdemir','F','Eski�ehir','05551234516','Eski�ehir Avenue 16','aylin16@gmail.com','2025-01-16'),
('Turan','Korkmaz','M','Bal�kesir','05551234517','Bal�kesir Street 17','turan17@gmail.com','2025-01-17'),
('Derya','�etin','F','Ayd�n','05551234518','Ayd�n Avenue 18','derya18@gmail.com','2025-01-18'),
('Mustafa','Aksoy','M','Sivas','05551234519','Sivas Street 19','mustafa19@gmail.com','2025-01-19'),
('Seda','Ba�','F','U�ak','05551234520','U�ak Avenue 20','seda20@gmail.com','2025-01-20'),
('Furkan','Ko�','M','Bolu','05551234521','Bolu Street 21','furkan21@gmail.com','2025-01-21'),
('Ece','Acar','F','Tekirda�','05551234522','Tekirda� Avenue 22','ece22@gmail.com','2025-01-22'),
('Hakan','�z','M','Erzurum','05551234523','Erzurum Street 23','hakan23@gmail.com','2025-01-23'),
('Selda','Polat','F','Rize','05551234524','Rize Avenue 24','selda24@gmail.com','2025-01-24'),
('Levent','�zer','M','Manisa','05551234525','Manisa Street 25','levent25@gmail.com','2025-01-25'),
('Buse','Ak','F','Mardin','05551234526','Mardin Avenue 26','buse26@gmail.com','2025-01-26'),
('Onur','�ahin','M','Malatya','05551234527','Malatya Street 27','onur27@gmail.com','2025-01-27'),
('Asl�','Kaya','F','Elaz��','05551234528','Elaz�� Avenue 28','asli28@gmail.com','2025-01-28'),
('Bar��','Demir','M','Hatay','05551234529','Hatay Street 29','baris29@gmail.com','2025-01-29'),
('Nazl�','Y�ld�r�m','F','�zmit','05551234530','�zmit Avenue 30','nazli30@gmail.com','2025-01-30'),
('O�uz','Kara','M','Aksaray','05551234531','Aksaray Street 31','oguz31@gmail.com','2025-01-31'),
('Dilan','Akta�','F','Ni�de','05551234532','Ni�de Avenue 32','dilan32@gmail.com','2025-02-01'),
('Serkan','G�r','M','Ordu','05551234533','Ordu Street 33','serkan33@gmail.com','2025-02-02'),
('Pelin','Kara','F','Bing�l','05551234534','Bing�l Avenue 34','pelin34@gmail.com','2025-02-03'),
('Murat','Demir','M','Zonguldak','05551234535','Zonguldak Street 35','murat35@gmail.com','2025-02-04'),
('Selin','�zt�rk','F','Denizli','05551234536','Denizli Avenue 36','selin36@gmail.com','2025-02-05'),
('Emir','Kara','M','Sakarya','05551234537','Sakarya Street 37','emir37@gmail.com','2025-02-06'),
('Melis','Y�ld�z','F','K�r�ehir','05551234538','K�r�ehir Avenue 38','melis38@gmail.com','2025-02-07'),
('Tolga','�elik','M','Ayd�n','05551234539','Ayd�n Street 39','tolga39@gmail.com','2025-02-08'),
('Zehra','�z','F','Isparta','05551234540','Isparta Avenue 40','zehra40@gmail.com','2025-02-09');

insert into Employees(EmployeeName,EmployeeLastName,Position,StoreId)
             values  ('Cenk','Akg�n','Sat�� Dan��man�',1),
			         ('O�uz','Kara','Sat�� Dan��man�',2),
					 ('Ahmet','Y�ce','Sat�� Dan��man�',4),
					 ('Y�lmaz','Lale','Sat�� Dan��man�',3),
					 ('P�nar','G�nd�z','Sat�� Dan��man�',6),
					 ('Bensu','Kova','Sat�� Dan��man�',10),
					 ('�rfan','Kahveci','Sat�� Dan��man�',7),
					 ('Ferdi','Alsancak','Sat�� Dan��man�',5),
					 ('Arda','Ok�u','Sat�� Dan��man�',8),
					 ('�a�lar','S�y�nc�','Sat�� Dan��man�',9),
					 ('Damla','Can','Sat�� Dan��man�',11),
					 ('G�nd�z','Rol','Ma�aza M�d�r�',1),
					 ('�smail','Y�ksek','Ma�aza M�d�r�',2),
					 ('�o�kun','D�zen','Ma�aza M�d�r�',3),
					 ('P�nar','Akkaya','Ma�aza M�d�r�',4),
					 ('Ay�e','Ak��kan','Ma�az M�d�r�',5),
					 ('Recep','Kaya','Ma�aza M�d�r�',6),
					 ('Asl�han','Mermer','Ma�aza M�d�r�',7),
					 ('B�lent','Kaya','Ma�aza M�d�r�',8),
					 ('Dervi�','T�re','Ma�aza M�d�r�',9),
					 ('Halit','ba�kan','Ma�aza M�d�r�',10),
					 ('An�l','ayd�n','Ma�aza M�d�r�',11)

insert into Orders(CustomerId,EmployeeId,BrandId,ProductId,PaymentMehodId,StoreId,OrderDate,Quantity)
            values(1,2,1,1,3,1,'2025-01-10',1),
			      (17,1,1,4,3,1,'2025-03-10',1),
				  (7,4,1,7,3,2,'2025-03-02',1),
				  (6,3,1,3,3,2,'2025-01-01',1),
				  (12,7,1,11,3,4,'2025-02-10',1),
				  (11,11,1,4,3,3,'2025-02-06',1),
				  (8,9,1,6,3,7,'2024-01-01',1),
				  (22,14,1,9,3,8,'2024-04-11',1),
				  (40,20,1,8,3,7,'2024-02-09',1),
				  (30,12,1,14,3,6,'2024-02-17',1),
				  (28,20,1,13,3,5,'2025-04-12',1),
				  (27,16,1,1,3,6,'2025-02-11',1),
				  (24,15,1,1,3,3,'2024-01-04',1),
				  (34,4,1,1,3,4,'2024-01-20',1),
				  (19,19,1,3,3,5,'2024-04-16',1),
				  (4,20,1,6,3,5,'2025-05-12',1),
				  (35,10,1,5,3,7,'2025-05-19',1),
				  (18,11,1,4,3,2,'2024-07-20',1),
				  (37,4,1,2,3,1,'2025-06-11',1)
			



	
	


