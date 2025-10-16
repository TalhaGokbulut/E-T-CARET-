Create table Brands(
BrandId int primary key identity(1,1),
BrandName Nvarchar(20) not null
)

create table Products(
ProductId int primary key identity(1,1),
BrandId int  foreign key references Brands(BrandId),
ProductName Nvarchar(60) not null,
Size Nvarchar(10) not null,
Color Nvarchar(50) not null,
Cost Decimal(10,2)  not null,
SalePrice Decimal(10,2) not null,
StockQuantity int not null,
ImageURL Nvarchar(255) not null
)

create table Customers(
CustomerId int primary key identity(1,1),
CustomerName Nvarchar(50) not null,
CustomerLastName Nvarchar(50) not null,
Gender char(1) check (Gender in ('M','F')),
City Nvarchar(50) not null,
Phone Nvarchar(20) not null,
CustomerAddress Nvarchar(255) not null,
Email Nvarchar(100) not null UNIQUE,
RegistrationDate date not null
)

create table Stores(
StoreId int primary key identity(1,1),
StoreName Nvarchar(70) not null,
City Nvarchar(60) not null,
Region Nvarchar(60) not null
)

create table Employees(
EmployeeId int primary key identity(1,1),
EmployeeName Nvarchar(50) not null,
EmployeeLastName Nvarchar(50) not null,
Position Nvarchar(50) not null,
StoreId int foreign key references Stores(StoreId)
)

create table PaymentMethods(
PaymentMethodId int primary key identity(1,1),
PaymentMethodName Nvarchar(50) not null
)



create table Orders(
OrderId int primary key identity(1,1),
CustomerId int foreign key references Customers(CustomerId),
EmployeeId int foreign key references Employees(EmployeeId),
BrandId int foreign key references Brands(BrandId),
ProductId int foreign key references Products(ProductId),
PaymentMehodId int foreign key references PaymentMethods(PaymentMethodId),
StoreId int foreign key references Stores(StoreId),
OrderDate date not null,
Quantity int not null
)
