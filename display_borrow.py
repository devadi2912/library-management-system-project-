from connect import db 
from color import * 

cursor = db.cursor(dictionary = True)


def formated_table_borrow (result):
    print (f"{"id":<4}{"name":<23}{"roll":<6}{"title":30}{"book_id":<10}{"issue_date":<13}{"fine":7}")
    for entry in result :
        print (f"{yellow}{entry["id"]:<4}{entry["name"]:<23}{entry["roll"]:<6}{entry["title"]:<30}{entry["book_id"]:<10}{entry["issue_date"].strftime("%d-%m-%y"):<13}{entry["fine"]:<7}")
    print (reset)

def display_all_borrow ():
    try :
        query = "select * from borrow ;"
        cursor.execute(query)
        result = cursor.fetchall()
        # print (f"{yellow}{result}{reset}")
        formated_table_borrow(result)
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# display_all_borrow()
# <date time object>.strftime("%d-%m-%Y")  is to print the date in a fomrated manner 



def display_borrow_by_roll (roll):
    try :
        query = "select * from borrow where roll = %s;"
        cursor.execute (query, (roll,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}all the borrowed book by the roll number {reset}{roll}{blue} are :{reset}")
            formated_table_borrow(result)
        else :
            print (f"{red}no books borrowed by the student with roll{reset}{roll}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# display_borrow_by_roll(1051)



def display_borrow_by_name (name):
    try :
        name = name.strip()
        query = "select * from borrow where name = %s;"
        cursor.execute (query, (name,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}all the borrowed book by the student {reset}{name}{blue} are :{reset}")
            formated_table_borrow(result)
        else :
            print (f"{red}no books borrowed by the student {reset}{name}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")

# display_borrow_by_name ("Rohan Mukherjee")



def display_borrow_by_title  (title):
    try :
        title = title.strip()
        query = "select * from borrow where title = %s;"
        cursor.execute (query, (title,))
        result = cursor.fetchall()
        if result :
            print (f"{blue}all students who borrowed the book {reset}{title}{blue} are :{reset}")
            formated_table_borrow(result)
        else :
            print (f"{reset}{title}{red} book was not borrowed by any student ")
    except Exception as err :
        print (f"{red}error : {err}{reset}")

# display_borrow_by_title ("Introduction to Algorithms")

def check_exists_borrow (book_id , roll):
    try :
        query = """select exists (
            select 1 
            from borrow 
            where book_id = %s and roll = %s);"""
        cursor_tuple = db.cursor()
        cursor_tuple.execute (query , (book_id, roll, ))
        # creating a cursor that returns a tuple 
        exist = cursor_tuple.fetchone()
        if exist[0] == 1 :
            print (f"{green}student data found with the specifications mentioned {reset}")
            cursor.execute ("""select * 
                        from borrow 
                        where book_id = %s and roll = %s""" , (book_id, roll))
            result = cursor.fetchall()
            formated_table_borrow ( result )
        else :
            print (f"{red}student data not found !{reset}")
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    finally :
        cursor_tuple.close()
            
            
# check_exists_borrow (95, 1003)


def count_no_of_borrowed (name):
    try :
        query = """select name , count(book_id)
        from borrow 
        where name = %s 
        group by name ; """
        cursor.execute(query, (name,))
        result = cursor.fetchall()
        print (result )
        if result :
            print (f"{green}borrow records found for the student {reset}{name}{green} currently{reset}")
            print (f"{"name":<23}{"total borrowed"}")
            for i in result :
                print (f"{yellow}{i["name"]:<23}{i["count(book_id)"]}{reset}")
            # formated_table_borrow(result)
        else :
            print (f"{red}no borrow recorder found for the student {reset}{name}")
    except Exception as err :
        print (f"{red}error :{err}{reset}")
    finally :
        print ()
        
        
        
count_no_of_borrowed ("aarav sharma")