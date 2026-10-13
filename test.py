# indivisual function code will be tested before i insert them and segregate then into module files .. 
from connect import * 
from connect import database_connect
# this recursively imports all the files imported in the connect folder as well for example the color values from color.py 

db = None  # initial initialization of the database value 

if db == None :
    db = database_connect ()
    if db == None :
        print (f"error in connection :")  
        exit (0)

# creating the cursor to execute sql commands .. 
cursor = db.cursor(dictionary=True)

# working on the display student files .. 
'''cursor.execute("""use hello_world;""")

cursor.execute ("""select * from student ; """)
result = cursor.fetchall()
for value in result :
    print (value)
'''

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
 
display_all_books()
  


# prints all available books 
def available_books ():
    try :
        query = "select * from books where available > 0;"
        cursor.execute (query )
        result = cursor.fetchall()
        print (f"{blue}the books that are available in the library are as follows :{reset}")
        formated_table_books (result)
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# available_books()


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

