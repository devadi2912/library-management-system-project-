from connect import db 
from datetime import date
# this is the predefined package that helps in date calculation used in the function to find the number of days passed from the issue of a book in the library system 


"""
{'id': 1, 'name': 'Soumyajit Roy', 'roll': 1051, 'title': 'learning java', 'book_id': 3, 'issue_date': datetime.date(2026, 10, 10), 'fine': 0.0}
return dictionary  fromat notice that the issued date is in the form of a datetime.date() object
we use two datetime.date objects to calculare the number of days elapsed  
"""
fine = 5.00 # fine per elapsed day .. 
allowed = 60 # number of days allowed .. without fine 

