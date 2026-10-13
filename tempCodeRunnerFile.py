
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
