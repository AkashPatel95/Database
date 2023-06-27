/*after insert*/
use triggers;
CREATE TABLE student_info1 (  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  PRIMARY KEY (stud_id)  
) ;


INSERT INTO student_info1 
VALUES
    (1, 'SC001', 'John Smith', 'Mathematics', 85, '555-1234'),
    (2, 'SC002', 'Emily Johnson', 'Science', 92, '555-5678'),
    (3, 'SC003', 'Michael Davis', 'English', 78, '555-9876'),
    (4, 'SC004', 'Sarah Thompson', 'History', 88, '555-4321'),
    (5, 'SC005', 'David Wilson', 'Geography', 76, '555-8765');


CREATE TABLE student_detail1 (  
  stud_id int NOT NULL,  
  stud_code varchar(15) DEFAULT NULL,  
  stud_name varchar(35) DEFAULT NULL,  
  subject varchar(25) DEFAULT NULL,  
  marks int DEFAULT NULL,  
  phone varchar(15) DEFAULT NULL,  
  Lasinserted Time,  
  PRIMARY KEY (stud_id)  
);  

INSERT INTO student_detail1
VALUES
    (1, 'SC001', 'John Smith', 'Mathematics', 85, '555-1234', '09:25:00'),
    (2, 'SC002', 'Emily Johnson', 'Science', 92, '555-5678', '10:15:30'),
    (3, 'SC003', 'Michael Davis', 'English', 78, '555-9876', '12:45:20'),
    (4, 'SC004', 'Sarah Thompson', 'History', 88, '555-4321', '14:10:45'),
    (5, 'SC005', 'David Wilson', 'Geography', 76, '555-8765', '16:30:10');
    
    delimiter //
    create trigger add_details2
    after insert on student_info1
    for each row
    begin
    insert into student_details1 values(new.stud_id, new.stud_code, new.stud_name, new.subject, new.marks, new.phone, now());
    end //
    delimiter ;

insert into student_info1 values(6, 'sc6006', 'warner', 'science', 77, '555-5555');
    
