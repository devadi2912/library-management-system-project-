# main.py
from connect import db
from color import * 
from display_student import *
from display_books import *

# creating the cursor to execute sql commands in main
cursor = db.cursor(dictionary=True)
cursor.execute("""use hello_world;""")


# this main file will have indivisual modules that handle all the functions of the library management system 
def display_student ():
    print (f"{green}student display menu{reset}")
    while True :
        # this is a match case in python to print the menu and to direct the user to the task they want to perform 
    
        print (f"{blue}please select from the following tasks you would like to perform !{reset}")
        print (f"enter {yellow} 1 {reset} to view all students ")
        print (f"enter {yellow} 2 {reset} to view all distinct streams os student ")
        print (f"enter {yellow} 3 {reset} to view all students with borrowed books ")
        print (f"enter {yellow} 4 {reset} to view all students of a specific stream ")
        print (f"enter {yellow} 5 {reset} to view student with some pending books ")
        print (f"enter {yellow} 6 {reset} to view student with no pending books ")
        print (f"enter {yellow} 7 {reset} to view a student with a specific roll ")
        print (f"enter {yellow} 8 {reset} to check if the student of a given name exists ")
        print (f"enter {yellow} 9 {reset} to check is the student with a given roll exists ")
        print (f"enter {yellow} 10 {reset} to view the top borrowers (students with the most pending books) ")
        print (f"enter {yellow}-10{reset} to exit the library ")
        choice = int (input(f"{magenta}enter your desired task number :{yellow}"))
        print (reset)
        match choice :
            case 1:
                display_all()
            case 2:
                display_distinct_stream() 
            case 3:
                # take n to print the number of students of these type 
                n = int (input(f"enter the limit :{yellow}"))
                print (reset)
                student_with_borrowed(n) 
            case 4:
                stream = input (f"enter the specific stream of students u want to search for :{yellow}")
                print (reset)
                student_with_stream(stream) # placeholder value 
            case 5:
                n = int(input(f"display student with no of pending books greater than or equal to :{yellow}"))
                print (reset)
                student_with_pending(n) 
            case 6:
                student_with__nopending() 
            case 7:
                roll = int(input (f"enter roll no :{yellow}"))
                student_with_roll(roll) 
            case 8:
                name = input (f"enter the name of the student :{yellow}")
                print (reset)
                check_exists_name(name) 
            case 9:
                roll = input (f"enter the roll of the student :{yellow}")
                print (reset)
                check_exists_roll(roll)
            case 10:
                num = int (input(f"limit to top borrowers :{yellow}"))
                print (reset)
                top_borrowers(num=4)
            case -10:
                print ()
                print (f"{green}thankyou for your time redirecting to the main menu :{reset}")
                break  # breaks the outer while loop 
            case _:
                print ()
                print (f"{blue}it appears that you have typed an {red}invlaid choice{blue} please try again {reset}\n") 
    


def display_books ():
    try :
       print (f"{green}books display menu{reset}")
       while True :
           # this is a match case in python to print the menu and to direct the user to the task they want to perform 
       
           print (f"{blue}please select from the following tasks you would like to perform !{reset}")
           print (f"enter {yellow} 1 {reset} to view all books ")
           print (f"enter {yellow} 2 {reset} to view all distinct subjects of books in the library ")
           print (f"enter {yellow} 3 {reset} to view books of a specific subject ")
           print (f"enter {yellow} 4 {reset} to view all distinct authors ")
           print (f"enter {yellow} 5 {reset} to view number of books for each subject ")
           print (f"enter {yellow} 6 {reset} to view number of books for a specific subject")
           print (f"enter {yellow} 7 {reset} to view the book of a specific author")
           print (f"enter {yellow} 8 {reset} to view the books in a specific price range ")
           print (f"enter {yellow} 9 {reset} to view all available books ")
           print (f"enter {yellow} 10 {reset} to search book of a specific id")
           print (f"enter {yellow} 11 {reset} to search book with a title")
           print (f"enter {yellow} 12 {reset} to view books with a specific availability")
           print (f"enter {yellow} 13 {reset} to check if a book exists ")
           print (f"enter {yellow}-10{reset} to exit the library ")
           choice = int (input(f"{magenta}enter your desired task number :{yellow}")) 
           print (reset)
           match choice :
               case 1:
                   display_all_books()
               case 2:
                   display_distinct_subjects()
               case 3 :
                   subject = input (f"enter the subject you want to search for :{yellow}")
                   subject = subject.strip()
                   print (reset)
                   display_books_of_subject(subject)
               case 4 :
                   display_distinct_authors()
               case 5 :
                   display_count_all_subject_books()
               case 6 :
                   subject = input (f"enter the subject for which number of books should be printed :{yellow}")
                   subject = subject.strip()
                   print (reset)
                   display_count_books_of_subject(subject)
                   # display_count_books_of_subject("engineering") 
               case 7 :
                   author = input (f"enter the authour name of the books u want displayed :{yellow}")
                   author = author.strip()
                   print (reset)
                   display_books_by_author(author)
               case 8 :
                   low = int (input (f"enter the lower limit to the price range : {yellow}"))
                   high = int (input (f"{reset}enter the upper limit to the price range :{yellow}"))
                   print (reset)
                   display_books_with_price_range ( low, high) 
               case 9 :
                   available_books()
               case 10 :
                   title = input (f"please enter the title of the book you want to search for :{yellow}")
                   title = title.strip()
                   fetch_book_by_title(title) 
               case 11 :
                   id = input (f"please enter the book_id of the book you want to search for :{yellow}")
                   print (reset)
                   fetch_book_by_title(id) 
                   pass 
               case 12 :
                   avail = int (input(f"enter the number of available copies that (available <= <value>):{yellow}")) 
                   print (reset)
                   books_with_availability_custom(avail)
               case 13 :
                   title = input (f"enter the title of the book whose existence is to be checked :{yellow}")
                   title = title.strip()
                   check_exists_book(title)
               case -10 :
                   print ()
                   print (f"{green}exiting the student view !{reset}")
                   print ()
                   break  
               case _:
                   print ()
                   print (f"{blue}it appears that you have typed an {red}invlaid choice{blue} try again {reset}\n")            
       
    except Exception as err :
        print (f"{red}error : {err}{reset}")
       
    
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
    print (f"{green}main menu{reset}")
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
            choice = int (input(f"{magenta}enter your desired task number :{yellow}"))
            print (reset)
            match choice :
                case 1:
                    display_student()
                case 2:
                    display_books() 
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
                    print (f"{blue}it appears that you have typed an {red}invlaid choice{blue} try again {reset}\n")
            # break ; 
        
cursor.close(); 
        
        
        
if __name__ == "__main__":
    menu()
        
