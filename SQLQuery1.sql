use cape_codd
select SKU, SKU_Description, Department, Buyer
from sku_DATA;

select TOP 5 Buyer, Department
FROM SKU_DATA;
/*to select top-5 distinct buyers */
select Distinct Top 5 Buyer, Department
from SKU_DATA

select *
from SKU_DATA
where  Buyer = 'Nancy Meyers'

select *
from CATALOG_SKU_2017
/*where DateOnWebSite = '01-JAN-2017'*/

where CatalogPage = '23' and  DateOnWebSite = '01-JAN-2017'

/*check the operators < > <> != <= >=*/
select *
from CATALOG_SKU_2017
where SKU != 202000

/*using the "order by" to set order of preceedence*/
select *
from ORDER_ITEM
order by OrderNumber

/*using the "order by" keyword to determine preceedence desc and asc*/
select *
from ORDER_ITEM
order by price desc, OrderNumber asc

/*Using 'and' with conditional keyword "where" */
select *
from SKU_DATA
where Department = 'Water sports' and Department = 'climbing'


/*Using 'and not' with conditional keyword "where" */
select *
from SKU_DATA
where Department = 'Water sports' and not Buyer = 'cindy lo'

/*Using the IN, Where, <= and >= , between*/
select *
from order_item
/*Where ExtendedPrice >= 100 and ExtendedPrice <= 200*/
Where ExtendedPrice between 100 and 200
order by ExtendedPrice desc;