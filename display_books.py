from connect import db
from color import * 

# fixing connection if the connection was lost .. 
cursor = db.cursor(dictionary= True)

def formated_table_books (result):
    print (f"{"book_id":<10}{"title":<30}{"author":<20}{"subject":13}{"type":<6}{"total":<7}{"avail":7}{"price":7}{"description":30}")
    for book in result :
        print (f"{yellow}{book["book_id"]:<10}{book["title"]:<30}{book["author"]:<20}{book["subject"]:<13}{book["type"]:<6}{book["total"]:<7}{book["available"]:<7}{book["price"]:<7}{book["description"]:<30}{reset}")
    print ()
    
    
def display_all_books ():
    try :
        cursor.execute ("select * from books;")
        result = cursor.fetchall()
        formated_table_books(result)
        # print (f"{yellow}{result}{reset}")
    except Exception as err :
        print (f"{red}error :{err}{reset}")
 


def display_distinct_subjects ():
    try :
        # to print the distinct subjects of the books
        query = "select distinct subject subjects from books ;"
        cursor.execute(query)
        result = cursor.fetchall()
        print(f"{blue}the distinct subject of books available in the library are :{reset}")
        print (f"{"subject"}")
        # print (result)
        count =0 
        for i in result :
            count = count + 1
            print (f"{yellow}{i["subjects"]}")
        print (f"{reset}the total number of distinct subjects are {yellow}{count}{reset}")
    except Exception as err :
        print (f"{red}error : {err}")
    finally :
        print ()


# function to display all the books of a given subject 
def display_books_of_subject (subject):
    try :
        query = "select * from books where subject = %s"
        cursor.execute(query , (subject,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}all books of the subject {reset}{subject}{blue} are :{reset}")
            formated_table_books (result)
        else :
            print (f"{red}no books found of this subject{reset}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")



def display_distinct_authors ():
    try :
        # to print all distinct authors 
        query = "select distinct author from books ;"
        cursor.execute(query)
        result = cursor.fetchall ()
        print(f"{blue}all the distinct authors whose books are present in the library are as follows :{reset}")
        print (f"{"author"}")
        # print (result)
        count = 0 
        for i in result :
            count = count + 1
            print (f"{yellow}{i["author"]}")
        print (f"{reset}the total number of distinct authors are {yellow}{count}{reset}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    finally :
        print ()
        


def display_count_all_subject_books ():
    try :
        # this function is designed in a way that it displays the count of books for each subject 
        query = """select subject , count(book_id)
        from books
        group by subject
        order by count(book_id) desc;"""
        cursor.execute(query)
        result = cursor.fetchall()
        # print (result)
        print(f"{blue}the number of books for each subject are as follows :{reset}")
        print (f"{"subject":<15}{"count(book_id)":6}")
        # print (result)
        for i in result :
            print (f"{yellow}{i["subject"]:<15}{i["count(book_id)"]:<6}{reset}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    finally :
        print ()
# display_count_all_subject_books()



def display_count_books_of_subject (subject):
    try :
        # counts the number of total and available books for a particular subjects 
        query = """select subject , count(available), count(total)
        from books 
        where subject = %s
        group by subject 
        order by count(total);"""
        cursor.execute(query , (subject,))
        result = cursor.fetchall()
        # print (result)
        print (f"{blue}availability status for the subject {subject} is as follows:{reset}")
        print (f"{"subject":<13}{"count(available)":<20}{"count(total)":<20}")
        for i in result :
            print (f"{yellow}{i["subject"]:<13}{i["count(available)"]:<20}{i["count(total)"]:<20}{reset}")
        # the return type of the query is a list of dictionary so always access it wither with numerical indicies or with a loop in python 
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    finally :
        print ()
# display_count_books_of_subject ("engineering")


# function to display all the books of a given author 
def display_books_by_author (author):
    try :
        query =" select * from books where author = %s;"
        cursor.execute(query, (author,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}all books of the author {reset}{author}{blue} are as follows :{reset}")
            formated_table_books(result)
        else :
            print (f"{red}author not found !")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        


# print all the books in a price range 
def display_books_with_price_range (low , high):
    try : 
        query = "select * from books where price between %s and %s order by price desc;"
        cursor.execute(query, (low,high,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}the books available in the library in the range {reset}({low},{high}){blue} are :")
            formated_table_books(result)
        else :
            print (f"{red}no book found !")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# display_books_with_price_range (500,600) 

# prints all available books 
def available_books ():
    try :
        query = "select * from books where available > 0;"
        cursor.execute (query )
        result = cursor.fetchall()
        if result :
            print (f"{blue}the books that are available in the library are as follows :{reset}")
            formated_table_books (result)
        else :
            print (f"{red}no book found !")
        
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        



def fetch_book_by_id (book_id):
    try :
        query = "select * from books where book_id = %s;"
        cursor.execute(query, (book_id,))
        result = cursor.fetchall()
        # print (result)
        if result :
            print (f"{blue}book found{reset}")
            formated_table_books(result)
        else :
            print (f"{red}book not found !{reset}")
    except Exception as err:
        print (f"{red}book not found !{reset}")
        print (f"{red}error : {err}{reset}")


# fetch_book_by_id (10)


def fetch_book_by_title (title ):
    try :
        query = "select * from books where title = %s;"
        cursor.execute(query, (title ,))
        result = cursor.fetchall()
        # print (result)
        if result :
            print (f"{blue}book found{reset}")
            formated_table_books(result)
        else :
            print (f"{red}book not found !{reset}")
    except Exception as err:
        print (f"{red}book not found !{reset}")
        print (f"{red}error : {err}{reset}")


# fetch_book_by_title ("SQL Fundamentals")
    

# function to find the books with availibility of books under a givenn value
def books_with_availability_custom (threshold):
    try :
        query = "select *  from books where available <= %s order by available desc;"
        cursor.execute ( query , (threshold,))
        result = cursor.fetchall()
        print (f"{blue}the books with availibility less then or equal to {reset}{threshold}{blue} are :{reset}")
        formated_table_books(result)
        
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# books_with_availability_custom(7)



def check_exists_book (title):
    try :
        cursor_tuple = db.cursor()
        query = """select exists (
            select 1 
            from books 
            where title = %s)"""
        cursor_tuple.execute (query, (title,))
        exist = cursor_tuple.fetchone ()
        # print (exist)      # this is a tuple 
        if exist[0] == 1 :
            print (f"{green}book found !{reset}")
            cursor.execute ("select * from books where title = %s;",(title,))
            result = cursor.fetchall()
            
            formated_table_books(result)
        else :
            print (f"{red}book not found in databse !{reset}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    finally :
        cursor_tuple.close()
        
# check_exists_book ("Introduction to Algorithms") 
