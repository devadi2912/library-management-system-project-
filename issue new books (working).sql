
/*
soumyajit roy                    -- (returned) Discrete Mathematics , Learning Java , Programming Fundamentals , AI Modern Approach
priyanka das                      -- Learning SQL , Statistics for Data Science
Abhishek Sen                     -- Learning SQL , TensorFlow Guide , Natural Language Processing
Akash Kumar                      -- AI Modern Approach , Hands-On ML , Learning SQL
Riya Chatterjee                  -- Statistics for Data Science , TensorFlow Guide
Rohan Mukherjee                  -- Hands-On ML , Introduction to Algorithms , Database Internals , (returned) Statistics for Data Science
*/
/*setting up two variables to deal with the errors of changing the names and subjects repeatedly */

set @roll = 1003 ;
set @name = (select name from student where roll = @roll);
set @title = "Statistics for Data Science" ; 
set @book_id = (select book_id from books where title = @title ) ; 


select * from books where title = @title ; 
-- checking if the book being asked for is available or not in the library 
-- returns true if the book is available returns false if the book is not available 
select exists (
    select 1 
    from books
    where title = @title 
    and available > 0
);

-- helper code 
/*
select * from student where name = "Rohan Mukherjee" ; 
select * from borrow;
select book_id from books where title = "Introduction to Algorithms" ; 
*/


-- inserting or removing data from the borrow table will require updating both the books and the student table as well  

select * from student      -- not the main code 
where name = @name ; 

select * from books        -- not the main code 
where book_id = @book_id ;          -- just to check the before and after state 

-- borrowing book from a student 
insert into borrow 
( name , roll , title , book_id , issue_date )
values 
( @name , @roll , @title , @book_id , curdate() ); 

-- updating the student details table 
update student 
set borrowed = borrowed + 1 , pending = pending +1 
where roll = @roll ;

-- updating book details 
update books 
set available = available -1 
where book_id = @book_id ;

-- checking the after state 
select * from student where roll = @roll ; 
select * from books where title  = @title ; 
select * from borrow ; 

/*
develop the logic of checking the availability of the book in python 
check if the person with the roll number already has the same book or not if he does do not give him the same book 
if the person has more them 6 books do not lend him another book tell him to clear back logs 


the logic is working perfectly just add checks and use variables for the book name and teh student naem and teh roll no .. 
( just the roll number is enough you can get the name from sql using jsut the roll number and all the other information )
*/




/* fully working update database sql command for my sql to lend books form teh library */