use Cape_Codd
select *
from SKU_DATA
where SKU_Description like '%Tent%';

select *
from SKU_DATA
where SKU like '____0_';

select *
from CATALOG_SKU_2017
where CatalogPage is null;

select *
from CATALOG_SKU_2017
where CatalogPage is not null;

SELECT count (distinct department) as Dept
from sku_data;

select SKU, SKU_Description, concat(Buyer, 'in',Department) as sponsor
from sku_data order by SKU;

select department, count(SKU) as NumberOfCatalogItems
from CATALOG_SKU_2017
where CatalogPage is not null
group by department
having count(SKU) > 2;

select sum(ExtendedPrice) as watersportsRevenue
from ORDER_ITEM
where SKU in (100100, 100200, 100300, 100400, 100500, 101100, 101200);

