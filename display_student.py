# this file will have all the display functions related to the student table 
# from main import db , cursor 
"""
do not import from main function this leads to a circular import problem that is a viscious cycle 
instead import the connections from the connect fiel directly """

# display_student.py
from connect import db
from color import *

# Create a cursor for this module using the db instance imported 
cursor = db.cursor(dictionary=True)



def formated_table (result):
    print (f"{"roll":<6}{"name":<25}{"stream":<10}{"borrowed":10}{"returned":<10}{"pending":<10}")
    for student in result :
        print (f"{yellow}{student["roll"]:<6}{student["name"]:<25}{student["stream"]:<12}{student["borrowed"]:<10}{student["returned"]:<10}{student["pending"]:<10}{reset}")
    print ()
    

def display_all ():
    try :
        # print (f"{blue} printing the student data available in the table :{reset}")
        cursor.execute("""select * from student ; """)
        print (f"{blue}all the students in the database currently are as followes : {reset}")
        result = cursor.fetchall()
        formated_table ( result )   
    except Exception as err:
        print (f"{red}error occured :{err}{reset}")


def display_distinct_stream ():
    try :
        cursor.execute ("""select distinct stream from student ;""")
        result = cursor .fetchall()
        print (f"{blue}the distinct streams in the student database are :{reset}")
        print (f"{"stream":<12}")
        for i in result :
            print (f"{yellow}{i["stream"]}{reset}")       
    except Exception as err:
        print (f"{red}error occured :{err}{reset}")


def student_with_borrowed (num=0):
    try :
        print (f"{blue}all students with number of books borrowed greater then {reset}{num}{blue} are :{reset}")
        cursor.execute ("""select * from student where borrowed > %s order by borrowed; """ , (num,))
        result = cursor .fetchall ()
        formated_table (result)
    except Exception as err:
        print (f"{red}error occured :{err}{reset}")
   
    
def student_with_stream (stream):
    try :
        print (f"{blue}all students in the stream {reset}{stream}{blue} are{reset}")
        cursor.execute("select * from student where stream in (%s);",(stream,))
        result = cursor.fetchall ()
        formated_table (result)
    except Exception as err:
        print (f"{red}error occured :{err}{reset}")
     
    
def student_with_pending (num = 0):
    try:
        print(f"{blue}students with number of books greater then or equal to {reset}{num}{blue} are: {reset}")
        query = """select * from student where pending >= %s ; """
        cursor.execute(query,(num,))
        result = cursor.fetchall()
        if result :
            formated_table (result)
        else :
            print (f"{red}no student with the parameters mentioned found !{reset}")
            print ()
    except Exception as err :
        print (f"{red}error : {err}{reset}")
    
    
    
def student_with__nopending ():
    try :
        print (f"{blue}all students with no pending books to return are :{reset}")
        query = """select * from student where pending = 0 ; """
        cursor.execute(query)
        result = cursor.fetchall()
        formated_table (result)
    except Exception as err :
        print (f"{red}error : {err}{reset}")


def student_with_roll (roll):
    try :
        print (f"{blue}the student with the specific roll num is {reset}")
        query = """select * from student where roll = %s ;"""
        cursor.execute (query,(roll,))
        result = cursor.fetchall()
        if result :
            formated_table(result)
        else :
            print (f"{red}student data dosent exists!{reset}")
    except Exception as err:
        print (f"{red}error : {err}{reset}")
        
    
    
def top_borrowers (num = 3):
    try :
        # expects the number of borrowes to be displayed 
        print (f"{num}{blue} of students with the highest pending count is :{reset}")
        query = f"""
        select * from student 
        where pending > 0 
        order by pending desc
        limit %s; """
        cursor.execute(query, (num, ))
        result = cursor.fetchall()
        formated_table(result)
    except Exception as err:
        print (f"{red}error : {err}{reset}")
    
    
def check_exists_name (name):
    # this function will help check if the student exists in the table or not 
    try :
        print (f"{blue}searching for student with name{reset}{name}")
        cursor_tuple = db.cursor()
        query = """
        select exists (
            select 1
            from student 
            where name = %s
            );"""
        cursor_tuple.execute(query , (name,))
        exists = cursor_tuple.fetchone()
        if exists[0] :
            print (f"{green}student exists in the database :{reset}")
            cursor.execute("""select * from student where name = %s""", (name,))
            result = cursor.fetchall ()
            formated_table (result)
        else :
            print (f"{yellow}student data dosent exist!")  
            print (f"{green}safe to insert.{reset}")
            
        # closing local cursor after execution 
            cursor_tuple.close ()      
    except Exception as err:
        print (f"{red}error : {err}{reset}")
        
       
"""
# check_exists("where roll = 1052")
print (f"{blue}searching for the student where :{reset}")
name = input(f"name :{yellow}")
print (reset)
check_exists_name (name)
"""

       
def check_exists_roll (roll):
    # this function will help check if the student exists in the table or not 
    try :
        print (f"{blue}searching for student with roll {reset}{roll} ")
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
            print (f"{red}student data dosent exist!")  
            # print (f"{green}safe to insert.{reset}")
            
            
        # closing local cursor after execution 
        cursor_tuple.close ()
        
    except Exception as err:
        print (f"{red}error : {err}{reset}")       
    
    
"""  
# check_exists("where roll = 1052")
print (f"{blue}searching for the student where :{reset}")
roll = input(f"roll :{yellow}")
print (reset)
check_exists_roll (roll)
"""

