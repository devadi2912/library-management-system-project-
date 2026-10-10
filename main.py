from connect import database_connect
from color import * 
# this recursively imports all the files imported in the connect folder as well for example the color values from color.py 

db = None  # initial initialization of the database value 

if db == None :
    db = database_connect ()
    if db == None :
        print (f"error in connection :")  
        exit (0)

# creating the cursor to execute sql commands .. 
cursor = db.cursor(dictionary=True)

# this main file will have indivisual modules that handle all the functions of the library management system 
def display_student ():
    pass 

def display_books ():
    pass 

def display_borrow ():
    pass 

def update_student ():
    pass 

def update_books ():
    pass 

def update_borrow ():
    pass 

def issue_book ():
    pass 

def return_book ():
    pass 

def records_check ():
    pass 


def menu ():
    
    print (f"{magenta} \t\t\t\t\t\tWELCOME TO THE LIBRARY ! {reset}")
    while True :
        # this is a match case in python to print the menu and to direct the user to the task they want to perform 
            print (f"{blue}please select from the following tasks you would like to perform !{reset}")
            print (f"enter {yellow} 1 {reset} to view student data ")
            print (f"enter {yellow} 2 {reset} to view the books data ")
            print (f"enter {yellow} 3 {reset} to view the data of lend out books data ")
            print (f"enter {yellow} 4 {reset} to update student data ")
            print (f"enter {yellow} 5 {reset} to update library data ")
            print (f"enter {yellow} 6 {reset} to update the bdate of the books lend out ")
            print (f"enter {yellow} 7 {reset} to issue a book ")
            print (f"enter {yellow} 8 {reset} to return a book ")
            print (f"enter {yellow} 9 {reset} for records check ")
            print (f"enter {yellow}-10{reset} to exit the library ")
            choice = int (input(f"enter your desired task number :{yellow}"))
            print (reset)
            match choice :
                case 1:
                    pass
                case 2:
                    pass 
                case 3:
                    pass 
                case 4:
                    pass
                case 5:
                    pass 
                case 6:
                    pass 
                case 7:
                    pass 
                case 8:
                    pass 
                case 9:
                    pass
                case -10:
                    print ()
                    print (f"{magenta}\t\t\t\tWE THANK YOU FOR YOUR VISIT .. HAVE A GREAT DAY AHEAD! {reset}")
                    break 
                case _:
                    print ()
                    print (f"{blue}it appears that you have types an {red}invlaid choice{blue} try again {reset}\n")
            # break ; 
        
        
        
        
        
        
menu () 
cursor.close(); 