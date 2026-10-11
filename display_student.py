# this file will have all the display functions related to the student table 
from main import db , cursor 
from color import *

cursor = db.cursor(dictionary= True)

def formated_table (result):
    print (f"{"roll":<6}{"name":<25}{"stream":<10}{"borrowed":10}{"returned":<10}{"pending":<10}")
    for student in result :
        print (f"{yellow}{student["roll"]:<6}{student["name"]:<25}{student["stream"]:<12}{student["borrowed"]:<10}{student["returned"]:<10}{student["pending"]:<10}{reset}")
    

def display_all ():
    print (f"{blue} printing the student data available in the table :{reset}")
    cursor.execute("""select * from student ; """)
    result = cursor.fetchall()
    formated_table ( result )

def display_distinct_stream ():
    cursor.execute ("""select distinct stream from student ;""")
    result = cursor .fetchall()
    print (f"{blue}the distinct streams in the student database are :{reset}")
    print (f"{"stream":<12}")
    for i in result :
        print (f"{yellow}{i["stream"]}{reset}")

def student_with_borrowed (num):
    cursor.execute ("""select * from student where borrowed > %s""" , num)
    result = cursor .fetchall ()
    formated_table (result)
    
def student_with_stream (stream):
    cursor.execute("select * from student where stream in (%s);",(stream,))
    result = cursor.fetchall ()
    formated_table (result)
    
def student_with_pending (num = 0):
    query = """select * from student where pending > %s ; """
    cursor.execute(query,num)
    result = cursor.fetchall()
    formated_table (result)
    

def student_with_roll (roll):
    query = """select * from student where roll = %s ;"""
    cursor.execute (query,(roll,))
    result = cursor.fetchall()
    formated_table(result)
    
def check_exists_name (name):
    # this function will help check if the student exists in the table or not 
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
          

# check_exists("where roll = 1052")
print (f"{blue}searching for the student where :{reset}")
name = input(f"name :{yellow}")
print (reset)
check_exists_name (name)

   
       