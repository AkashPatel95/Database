/*before update trigger*/
use triggers;

DROP TABLE IF EXISTS sales;

CREATE TABLE sales (
    id INT AUTO_INCREMENT,
    product VARCHAR(100) NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    fiscalYear SMALLINT NOT NULL,
    fiscalMonth TINYINT NOT NULL,
    CHECK(fiscalMonth >= 1 AND fiscalMonth <= 12),
    CHECK(fiscalYear BETWEEN 2000 and 2050),
    CHECK (quantity >=0),
    UNIQUE(product, fiscalYear, fiscalMonth),
    PRIMARY KEY(id)
);

INSERT INTO sales(product, quantity, fiscalYear, fiscalMonth)
VALUES
    ('2003 Harley-Davidson Eagle Drag Bike',120, 2020,1),
    ('1969 Corvair Monza', 150,2020,1),
    ('1970 Plymouth Hemi Cuda', 200,2020,1);

delimiter //
create trigger before_update3
before update on sales
for each row
begin
declare errormessage varchar(250);
set errormessage=concat('the new quantity', new.quantity, 'should not be 3 times the', old.quantity);
if new.quantity>(3*old.quantity) then
signal sqlstate '45000' set message_text=errormessage;
end if;
end //
delimiter ;

UPDATE sales 
SET quantity = 500
WHERE id = 1;

