-- this is a function that handles the function to return a book if the book data already exists ..
set @per_day_fine = 5.00 ;

describe borrow ; 

/*
soumyajit roy                    -- (returned) Discrete Mathematics , Learning Java , Programming Fundamentals , AI Modern Approach
priyanka das                      -- Learning SQL , Statistics for Data Science
Abhishek Sen                     -- Learning SQL , TensorFlow Guide , Natural Language Processing
Akash Kumar                      -- AI Modern Approach , Hands-On ML , Learning SQL
Riya Chatterjee                  -- Statistics for Data Science , TensorFlow Guide
Rohan Mukherjee                  -- Hands-On ML , Introduction to Algorithms , Database Internals ,(returned) Statistics for Data Science
*/

set @roll = 1003 ;
set @name = ( select name from student where roll = @roll );
set @title = "Statistics for Data Science" ;
set @current_date = CURDATE() ;  -- this variable will help in comparing th date of issue to the date of return of the book 

/*
SELECT EXISTS (
    SELECT 1
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_SCHEMA = 'hello_world'
      AND TABLE_NAME = 'borrow'
      AND COLUMN_NAME = 'fine'
);
*/

select * from student where roll = @roll ; 
select * from books where title = @title ; 
select * from borrow where name = @name and title = @title ; 

-- if the student has rented out the book then the return value is true else the return value is false 
select exists (
    select 1 
    from borrow 
    where roll = @roll
    and title = @title 
);

-- function for returning the book 
-- update the student table and the borrow table books table 
/* if the above code return that the student has availed the book then we move forward to the accepting the retuen of the book */

-- fine calculation 

set @fine = (select fine from borrow where name = @name and title = @title);

-- deleting the row from the borrow table where name = @name and title = @title 
delete from borrow 
where roll = @roll and title = @title ; 

-- updating the books table to account for the returned books 
update books 
set available = available + 1 
where title = @title ; 

-- updating the student table to account for the returned book 
update student 
set returned = returned +1 , pending = pending -1 
where name = @name ; 

-- displaying the result 
select * from student where roll = @roll ;
select * from books where title = @title ; 

