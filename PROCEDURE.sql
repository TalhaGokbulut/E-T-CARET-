SELECT *FROM Customers

--Müsteri Siparis Gecmisi
Create procedure Sp_MusterininSiparisGecmisi
@CustomerId int
as
begin 
    Select C.CustomerName,C.CustomerLastName,O.OrderDate,O.Quantity,P.ProductName,(O.Quantity*P.SalePrice) as TotalAmount
	from Orders O
	join Customers C on C.CustomerId=o.CustomerId
	join Products P on P.ProductId=O.ProductId
	where O.CustomerId=@CustomerId
	order by OrderDate desc
	end
-- Proceduru çaðýrma
exec Sp_MusterininSiparisGecmisi @CustomerId=7
