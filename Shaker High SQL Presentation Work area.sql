-- Where clause and order by
select firstname,lastname, creditlimit from Customer
  where accounttype=1  order by CreditLimit desc 

-- Max function
select max(creditlimit) from customer

-- Join two tables
select * from salesdetail
   join salesmain on salesdetail.saleid = salesmain.saleid
   

   -- Join 3 tables
   select * from salesdetail
   join salesmain on salesdetail.saleid = salesmain.saleid
   join customer on salesmain.CustomerID = customer.CustomerID


   -- Combined field
   select firstname + ' '+  lastname 'Name'  , customerid from customer


   -- Transaction example
   select AccountNum,CreditLimit from CustomerMaster

   begin tran

   update Customer set Creditlimit = 55555
     where CurrentBalance>500

	 rollback

	 commit








