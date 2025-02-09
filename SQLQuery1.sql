create table books (

Bookid int primary key ,
title varchar(50),
AuthorID int  , 
PublishedYear Date ,
CopiesAvailable INT ,
BookCategory VARCHAR(50)
);
Create table authors (
AuthorID INT primary key , 
FirstName varchar(100) ,
LastName varchar(100) ,
BirthYear Date 
);

insert into Books ( BookID , Tiltle , AuthorID , PublishedYear , CopiesAvailable , Bookcategory )  values  
(1, 'The Great Gatsby', 101, 1925, 5, 'Fiction'),
(2, 'A Brief History of Time', 102, 1988, 3, 'Science'),
(3, 'To Kill a Mockingbird', 103, 1960, 7, 'Classic'),
(4, 'The Art of War', 104, -500, 10, 'Philosophy'),
(5, 'The Catcher in the Rye', 105, 1951, 2, 'Fiction');
 
select * from Authors 
select Title , CopiesAvailable 
From Books 
where CopiesAvailable  = ( Select MAX(CopiesAvailable )From Books ) or CopiesAvailable  = ( Select MIN(CopiesAvailable )From Books ) ;

Select AVG (Cast (PublishedYear As Float ) ) As AveragePublicationYear FROM Books;

 Select Sum (CopiesAvailable) As NumberOfBooks From Books;

 Delete From Books;

 Drop Table Books;

 Alter Table Authors
 Add Email  varchar (100) ,
  PhoneNumber varchar (30);

  UPDATE Authors
SET Email = 'Ralph@gmail.com', PhoneNumber = '+777777777'
WHERE AuthorID = 1;

UPDATE Authors
SET Email = 'James@gmail.com', PhoneNumber = '+888888888'
WHERE AuthorID = 2;

UPDATE Authors
SET Email = 'James@gmail.com', PhoneNumber = '+999999999'
WHERE AuthorID = 3;

UPDATE Authors
SET Email = 'Frank@gmail.com', PhoneNumber = '+66666666'
WHERE AuthorID = 4;

UPDATE Authors
SET Email = 'Patrick@gmail.com', PhoneNumber = '+1444555666'
WHERE AuthorID = 5;

Drop Table Authors;