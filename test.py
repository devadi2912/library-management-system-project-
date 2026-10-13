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

def formated_table_borrow (result):
    print (f"{"id":<4}{"name":<23}{"roll":<6}{"title":30}{"book_id":<10}{"issue_date":<13}{"fine":7}")
    for entry in result :
        print (f"{yellow}{entry["id"]:<4}{entry["name"]:<23}{entry["roll"]:<6}{entry["title"]:<30}{entry["book_id"]:<10}{entry["issue_date"].strftime("%d-%m-%y"):<13}{entry["fine"]:<7}")
    print ()

def display_all_borrow ():
    try :
        query = "select * from borrow ;"
        cursor.execute(query)
        result = cursor.fetchall()
        print (f"{yellow}{result}{reset}")
        formated_table_borrow(result)
    except Exception as err :
        print (f"{red}error : {err}{reset}")
        
# display_all_borrow()



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
            print (f"{"name":<23}{"count(book_id)"}")
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