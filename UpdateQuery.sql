/*Updating a table's column
UPDATE 'database_name'.'table_name' SET 'new_column or existing' = 'value' WHERE ('primary_key' = 'PK_value');
*/
UPDATE `classwork`.`human` SET `location` = 'Kaduna' WHERE (`HumanId` = '1');
UPDATE `classwork`.`human` SET `location` = 'Lagos' WHERE (`HumanId` = '2');
UPDATE `classwork`.`human` SET `location` = 'Abuja' WHERE (`HumanId` = '3');
UPDATE `classwork`.`human` SET `location` = 'Lagos' WHERE (`HumanId` = '4');
UPDATE `classwork`.`human` SET `location` = 'Kano' WHERE (`HumanId` = '5');
UPDATE `classwork`.`human` SET `location` = 'Osun' WHERE (`HumanId` = '6');
UPDATE `classwork`.`human` SET `location` = 'Oyo' WHERE (`HumanId` = '7');