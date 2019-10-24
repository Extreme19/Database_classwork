select SKU, SKU_Description, Department, Buyer
from SKU_DATA;
/* *** SQL-Query-CH02-05 ****/
SELECT   DISTINCT Buyer,  Department
FROM	SKU_DATA;


select Distinct Buyer, department
from SKU_DATA
Limit 5;


select  *
from SKU_DATA
where Department = 'Water Sports';


select *
from catalog_sku_2017
/*using the and or && operator*/
where CatalogPage = '23' and DateOnWebSite = '2017-01-01';

select *
From SKU_DatA
where SKU <= 200000;


/*using the "order by" keyword to determine preceeding and is ascending by default*/
select *
from order_item
order by OrderNumber;


/*using the "order by" keyword to determine preceedence desc and asc*/
select *
from order_item
order by price desc, OrderNumber asc;


/*using the Where and &&*/
select *
from sku_DATA
WHERE Department = 'Water sports' or Buyer = 'Nancy Meyers';


/*Using 'and not' with conditional keyword "where" */
select *
from SKU_DATA
where Department = 'Water sports' and not Buyer = 'pete hansen';


/*Using the IN, Where, <= and >= , between*/
select *
from order_item
/*Where ExtendedPrice >= 100 and ExtendedPrice <= 200*/
Where ExtendedPrice between 100 and 200
order by ExtendedPrice desc;

/* using % '_'*/
select *
from sku_data
where SKU like '%2_';

/* to select and perform calculations on a row of a column and save its resulting value to a new column*/
select sum(ExtendedPrice) as OrderItemSum, Avg(ExtendedPrice) as OrderItemAvg, min(ExtendedPrice) as OrderItemMin, max(ExtendedPrice) as OrderItemmMax
from order_item;

/*calculation queries MIN MAX SUM AVG (average), count(both count * and count name */
SELECT COUNT(Department) AS DeptCount
FROM SKU_DATA;

/* performing multiplication operation within a column operation */
SELECT OrderNumber, SKU, (Quantity * Price) AS EP
FROM ORDER_ITEM
ORDER BY OrderNumber;
/* USING not equal to sign <> and equal to sign =*/
select ordernumber, SKU
FROM order_item
WHERE (QUANTITY * PRICE) = EXTENDEDPRICE
ORDER BY ORDERNUMBER, SKU;

select SKU, SKU_Description, concat(Buyer, 'in',  Department) as sponsor
from sku_data order by SKU;


/*to remove white spaces from the data we use RTRIM or LTrim as the case may be*/
select sku, sku_description, LTRIM(Buyer),' in ' ,LTRIM(Department) as sponsor
from SKU_data
order by sku;

/*To use the group by key word and the count(which counts the number of rows in a specified column)*/

select department, count(SKU) as NumberOfCatalogItems
from CATALOG_SKU_2017
where catalogpage is not null
group by department
having Count(SKU) >=2;


/* check this out*/
select department, buyer, count(SKU) as Dept_Buyer_SKU__Count
from SKU_DATA
Group by department, buyer;

/* */
select department, count(SKU) as Dept_SKU_Count /*select the columns and save the number of the counted sku's rows*/
from sku_data /*from he table sku_data*/
where sku <> 302000 /* conditioning sku column to skip 302000*/
group by department /* making departmental grouping*/
having count(sku) > 1 /* another condition for the counted rows for sku's column to be greater than 1*/
order by dept_SKU_count; /*ordering the new column for counted rows in a default ascending order*/


/*to use aggregiate functions and a  second level(nested) query*/
select sum(ExtendedPrice) as WatersportsRevenue
from ORDER_ITEM
where SKU in
	(select sku
    from sku_data
    where Department= 'water sports');
    
select min(ExtendedPrice) as WatersportsRevenue
from ORDER_ITEM
where SKU in
	(select sku
    from sku_data
    where Department= 'water sports');
    
/*more on subqueries*/
select distinct Buyer, Department
from sku_data
where SKU in
	(Select SKU
    from order_item
    where OrderNumber in	
		(select ordernumber
        from retail_order
        where OrderMonth = 'January'
        and OrderYear = 2018));
      /*combining two tables implicitly*/  
select *
from retail_order, order_item
where retail_order.OrderNumber = order_item.OrderNumber; /*  where the primary key is used for boh tables */

select Buyer, sku_data.SKU, SKU_Description, 
sum(ExtendedPrice) as BuyerSKURevenue
from sku_data,/* ',' can be replaced with 'join' and 'where' with 'On'*/ order_item
WHERE sku_data.SKU = order_item.SKU
group by Buyer, sku_data.SKU, SKU_Description
order by BuyerSKURevenue desc;

/*using join and ON*/
select *
from retail_order join order_item
on retail_order.OrderNumber = order_item.OrderNumber
where OrderYear = 2017
order by retail_order.OrderNumber, order_item.SKU;

/*recurssion*/
select BuyerName, Department, Position, Supervisor 
from BUYER
order by position desc;

select S.BuyerName as SupervisorName, S.Position as SupervisorPosition, B.BuyerName, B.Position
from BUYER S join BUYER B
on S.BuyerName = B.Supervisor
order by S.BuyerName;


/*Using the set operators UNION(or), INTERSECT(and) and SUBSET  to output duplicates add the keyword ALL to the operator as UNION ALL*/
select SKU, SKU_Description, Department
from CATALOG_SKU_2017
UNION ALL
SELECT SKU, SKU_Description, Department
FROM CATALOG_SKU_2018;

/*performing intersection set operation using IN keyword matches instersecting data sets in a specified column*/
select SKU, SKU_Description, Department
from catalog_sku_2017
where SKU_Description in (
select SKU_Description
from catalog_sku_2018);

select count(SKU) as sku, sku, SKU_Description, Department
from catalog_sku_2018;

/*perform intersection without repetition of data*/
select sku, count(SKU) as skuNum,  Sku_Description, Department
from catalog_sku_2016
where SKU in(
select distinct SKU
from catalog_sku_2018)
;

/*Using the except operator*/
select SKU, SKU_Description, Department
from catalog_sku_2017
where SKU_Description not in
(select  SKU_Description
from catalog_SKU_2018);