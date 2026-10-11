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

def formated_table (result):
    print (f"{"roll":<6}{"name":<25}{"stream":<10}{"borrowed":10}{"returned":<10}{"pending":<10}")
    for student in result :
        print (f"{yellow}{student["roll"]:<6}{student["name"]:<25}{student["stream"]:<12}{student["borrowed"]:<10}{student["returned"]:<10}{student["pending"]:<10}{reset}")
    print ()
    

def check_exists_roll (roll):
    # this function will help check if the student exists in the table or not 
    cursor_tuple  = db.cursor()    # using a new cursor that returned tuples to use the fetchone () value for exists more easily 
    
    """ the local tuple returns tuples which are easier to access . 
    for the rest of the program the nomral dictionary cursor is used for the easr of display """
    query = """
    select exists (
        select 1
        from student 
        where roll = %s
        );"""
    cursor_tuple .execute(query , (roll,))
    exists = cursor_tuple.fetchone()
    print (exists)
    print (exists[0])
    # print (list(exists))
    if exists[0] == 1 :
        print (f"{green}student exists in the database :{reset}")
        cursor.execute("""select * from student where roll = %s""", (roll,))
        result = cursor.fetchall ()
        formated_table (result)
    else :
        print (f"{yellow}student data dosent exist!")  
        # print (f"{green}safe to insert.{reset}")
          
    
    
    
# check_exists("where roll = 1052")
print (f"{blue}searching for the student where :{reset}")
roll = input(f"roll :{yellow}")
print (reset)
check_exists_roll (roll)


