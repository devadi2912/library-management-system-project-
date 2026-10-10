/* 
queries for performing operations on the books table 
*/

-- function 1 : display all books 
select * from books ; 
-- displa total number of books
select count(book_id) 
from books ; 



-- display distinct subjects 
select distinct subject from books ; 
select count(distinct subject ) from books ; -- displays the distinct subjects on which teh library has books 
-- the order of the distinct and the subject is important 


select max(price) from books ; -- shows the costliest book in the library 
select min(price) from books ; -- shows the cheapist book in the library 


-- select number of books on each subject 
select subject , count(book_id)
from books 
group by subject
order by count(book_id) desc;  

-- displaying all the book names on a particular subject 
select * from books 
where subject in ("dbms") ;

-- displaying all the books where the price is greater than a aprticular value 
select * from books 
where price >= 800 ; 

-- display the number of books in each subject where the price is in a certain range 
select subject , count(book_id)
from books 
where price between 500 and 900 
group by subject 
order by count(book_id) DESC ;


-- check the status of a book in the libarary
select * from books 
where title = "Discrete Mathematics Guide" ;


-- check the status of a book in the libarary if available 
select * from books 
where title = "Discrete Mathematics Guide" and available > 0  ; 


-- display the books that are unavailable 
select * from books
where available =0 ; 

-- search books by title 
select * from books 
where title = "Node.js Basics" ;

-- display books sorted byprice high to low 
select * from books 
order by price desc ; 

-- display all books of a prticular subject 
select * from books 
where subject = "MongoDB"; 


/*
queries for performing operations on the student table
*/

-- working on the student queries now 
select * from student ; 

-- group by strem count the nunmber  of students in each stream 
select stream , count(roll)
from student 
group by stream 
order by count(roll);

-- name of students from a particular stream 
select * from student 
where stream = "cse" ;     -- can be done for all subjects 

select distinct stream from student ;  -- select the distinct stream fo students 

-- student with max availes book 
select * from student 
where pending = ( select max(pending) from student ) ;    -- using sub querry 

-- find students who have borrowed books 
select * from student 
where borrowed > 0 ; 


-- find studetns with pending books 
select * from student 
where pending > 0 ; 


/*
queries for performing operations on the borrow table
*/


