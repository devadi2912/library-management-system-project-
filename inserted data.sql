-- values inserted into the category table 
insert into category 
( id , type )
values 
( 101 , "general"),
( 102 , "course"),
( 103 , "guide"),
( 104 , "pyqs"),
( 105 , "research");


-- values into the student table 
insert into student 
(roll , name , stream , borrowed , returned , pending)
values 
(1001, 'Aarav Sharma', 'CSE', 0, 0, 0),
(1002, 'Ananya Das', 'CSE', 0, 0, 0),
(1003, 'Rohan Mukherjee', 'CSE', 0, 0, 0),
(1004, 'Priya Banerjee', 'CSE', 0, 0, 0),
(1005, 'Arjun Roy', 'CSE', 0, 0, 0),
(1006, 'Sneha Ghosh', 'CSE', 0, 0, 0),
(1007, 'Rahul Sen', 'CSE', 0, 0, 0),
(1008, 'Ishita Paul', 'CSE', 0, 0, 0),
(1009, 'Sayan Dutta', 'CSE', 0, 0, 0),
(1010, 'Neha Saha', 'CSE', 0, 0, 0),
(1011, 'Aditya Bose', 'CSE', 0, 0, 0),
(1012, 'Riya Chatterjee', 'CSE', 0, 0, 0),

(1013, 'Amit Verma', 'IT', 0, 0, 0),
(1014, 'Kavya Singh', 'IT', 0, 0, 0),
(1015, 'Sourav Pal', 'IT', 0, 0, 0),
(1016, 'Meera Nair', 'IT', 0, 0, 0),
(1017, 'Kunal Gupta', 'IT', 0, 0, 0),
(1018, 'Pooja Yadav', 'IT', 0, 0, 0),
(1019, 'Abhishek Roy', 'IT', 0, 0, 0),
(1020, 'Tania Mitra', 'IT', 0, 0, 0),
(1021, 'Vivek Kumar', 'IT', 0, 0, 0),
(1022, 'Diya Das', 'IT', 0, 0, 0),
(1023, 'Siddharth Jain', 'IT', 0, 0, 0),
(1024, 'Moumita Ghosh', 'IT', 0, 0, 0),

(1025, 'Debanjan Roy', 'ECE', 0, 0, 0),
(1026, 'Sanjana Bose', 'ECE', 0, 0, 0),
(1027, 'Akash Kumar', 'ECE', 0, 0, 0),
(1028, 'Ritika Sharma', 'ECE', 0, 0, 0),
(1029, 'Subham Das', 'ECE', 0, 0, 0),
(1030, 'Nikita Sen', 'ECE', 0, 0, 0),
(1031, 'Pratik Ghosh', 'ECE', 0, 0, 0),
(1032, 'Swati Paul', 'ECE', 0, 0, 0),
(1033, 'Anirban Dey', 'ECE', 0, 0, 0),
(1034, 'Shreya Banerjee', 'ECE', 0, 0, 0),
(1035, 'Manish Singh', 'ECE', 0, 0, 0),
(1036, 'Payel Dutta', 'ECE', 0, 0, 0),

(1037, 'Rajesh Das', 'EE', 0, 0, 0),
(1038, 'Pallavi Roy', 'EE', 0, 0, 0),
(1039, 'Suman Ghosh', 'EE', 0, 0, 0),
(1040, 'Aditi Sharma', 'EE', 0, 0, 0),
(1041, 'Kaushik Sen', 'EE', 0, 0, 0),
(1042, 'Rashmi Singh', 'EE', 0, 0, 0),
(1043, 'Niloy Dutta', 'EE', 0, 0, 0),
(1044, 'Tanushree Paul', 'EE', 0, 0, 0),
(1045, 'Sandeep Verma', 'EE', 0, 0, 0),
(1046, 'Madhurima Das', 'EE', 0, 0, 0),
(1047, 'Rajat Kumar', 'EE', 0, 0, 0),
(1048, 'Sohini Mitra', 'EE', 0, 0, 0),

(1049, 'Deepak Sharma', 'Mechanical', 0, 0, 0),
(1050, 'Riya Singh', 'Mechanical', 0, 0, 0),
(1051, 'Soumyajit Roy', 'Mechanical', 0, 0, 0),
(1052, 'Priyanka Das', 'Mechanical', 0, 0, 0),
(1053, 'Abhishek Sen', 'Mechanical', 0, 0, 0),
(1054, 'Nandini Ghosh', 'Mechanical', 0, 0, 0),
(1055, 'Suman Kumar', 'Mechanical', 0, 0, 0),
(1056, 'Ishani Bose', 'Mechanical', 0, 0, 0),
(1057, 'Arnab Paul', 'Mechanical', 0, 0, 0),
(1058, 'Monika Verma', 'Mechanical', 0, 0, 0),
(1059, 'Tanmoy Dey', 'Mechanical', 0, 0, 0),
(1060, 'Srija Chatterjee', 'Mechanical', 0, 0, 0);

-- values into the books table 
INSERT INTO books
(book_id, title, author, subject, type, version, total, available, price, description)
VALUES
(1, 'Python Basics', 'Mark Smith', 'Python', 102, '2023-01-15', 5, 3, 450.00, 'Introduction to Python programming for beginners.'),
(2, 'Advanced Python', 'John Miller', 'Python', 103, '2022-06-10', 4, 2, 650.00, 'Advanced concepts and techniques in Python.'),
(3, 'Learning Java', 'James Brown', 'Java', 102, '2021-08-20', 6, 4, 550.00, 'Complete introduction to Java programming.'),
(4, 'Java Programming', 'Robert Clark', 'Java', 103, '2023-03-12', 5, 5, 700.00, 'Practical guide to Java programming concepts.'),
(5, 'C Programming', 'Dennis White', 'C', 102, '2020-07-05', 7, 4, 400.00, 'Fundamentals of C programming and syntax.'),
(6, 'C++ Fundamentals', 'David Wilson', 'C++', 102, '2022-02-18', 4, 2, 500.00, 'Introduction to C++ programming fundamentals.'),
(7, 'Data Structures', 'Alan Davis', 'DSA', 102, '2023-05-14', 8, 6, 750.00, 'Core concepts of data structures and implementation.'),
(8, 'Algorithms', 'Peter Martin', 'DAA', 103, '2021-11-09', 5, 3, 800.00, 'Fundamental algorithms and problem solving techniques.'),
(9, 'Database Systems', 'Tom Anderson', 'DBMS', 102, '2022-09-21', 6, 4, 650.00, 'Introduction to database management systems.'),
(10, 'SQL Fundamentals', 'Chris Thomas', 'SQL', 101, '2023-01-30', 5, 2, 450.00, 'Basic SQL queries and database operations.'),

(11, 'Operating Systems', 'Andrew Moore', 'OS', 102, '2020-04-15', 7, 5, 700.00, 'Fundamental concepts of operating systems.'),
(12, 'Computer Networks', 'Brian Taylor', 'CN', 102, '2021-06-18', 6, 3, 750.00, 'Introduction to computer networking concepts.'),
(13, 'Computer Architecture', 'Kevin Harris', 'CA', 102, '2022-10-11', 5, 4, 800.00, 'Fundamentals of computer organization and architecture.'),
(14, 'Compiler Design', 'George Lewis', 'CD', 102, '2023-02-07', 4, 2, 650.00, 'Introduction to compiler design and construction.'),
(15, 'Software Engineering', 'Edward Walker', 'SE', 102, '2021-03-22', 6, 5, 600.00, 'Software engineering principles and development practices.'),
(16, 'Discrete Mathematics', 'Daniel Hall', 'Maths', 102, '2020-08-17', 8, 6, 500.00, 'Essential concepts of discrete mathematics.'),
(17, 'Linear Algebra', 'Paul Allen', 'Mathematics', 101, '2022-01-12', 5, 3, 450.00, 'Introduction to linear algebra and its applications.'),
(18, 'Probability Basics', 'Frank Young', 'Probability', 101, '2023-04-25', 4, 4, 350.00, 'Basic concepts of probability and random events.'),
(19, 'Statistics', 'Henry King', 'Statistics', 101, '2021-09-13', 6, 3, 500.00, 'Fundamentals of statistics and data analysis.'),
(20, 'Machine Learning', 'Sam Wright', 'ML', 103, '2023-07-19', 7, 5, 850.00, 'Introduction to machine learning concepts and methods.'),

(21, 'Deep Learning', 'Andrew Ng', 'AI', 103, '2022-11-14', 5, 2, 900.00, 'Fundamentals of deep learning and neural networks.'),
(22, 'Artificial Intelligence', 'Stuart Russell', 'AI', 103, '2021-12-03', 6, 4, 950.00, 'Introduction to artificial intelligence.'),
(23, 'Neural Networks', 'Ian Good', 'AI', 103, '2023-05-08', 4, 2, 750.00, 'Basic concepts of neural networks and learning.'),
(24, 'Natural Language Processing', 'James Lee', 'NLP', 103, '2022-07-22', 5, 3, 850.00, 'Introduction to natural language processing.'),
(25, 'Computer Vision', 'Michael Scott', 'CV', 103, '2023-03-18', 4, 1, 800.00, 'Fundamentals of computer vision and image processing.'),
(26, 'Data Science', 'Rachel Green', 'DS', 102, '2021-10-10', 7, 5, 700.00, 'Introduction to data science and analytics.'),
(27, 'Big Data', 'Steve Adams', 'Big Data', 103, '2022-05-16', 5, 3, 750.00, 'Fundamentals of big data technologies.'),
(28, 'Cloud Computing', 'Jason Baker', 'Cloud', 102, '2023-01-05', 6, 4, 650.00, 'Introduction to cloud computing concepts.'),
(29, 'DevOps Handbook', 'Mark Evans', 'DevOps', 103, '2022-08-27', 4, 3, 800.00, 'Practical introduction to DevOps practices.'),
(30, 'Docker Guide', 'Paul Scott', 'Docker', 103, '2023-06-11', 5, 2, 550.00, 'Beginner guide to Docker and containers.'),

(31, 'Linux Basics', 'Richard Wood', 'Linux', 101, '2020-05-19', 8, 6, 450.00, 'Introduction to Linux operating system and commands.'),
(32, 'Git Essentials', 'David Hill', 'Git', 101, '2022-03-14', 5, 4, 400.00, 'Essential Git version control concepts.'),
(33, 'GitHub Guide', 'Alex Turner', 'GitHub', 103, '2023-02-22', 4, 3, 450.00, 'Practical guide to using GitHub.'),
(34, 'Web Development', 'Daniel Adams', 'Web', 102, '2021-07-09', 6, 4, 600.00, 'Introduction to modern web development.'),
(35, 'HTML and CSS', 'John Carter', 'Web', 101, '2020-11-12', 7, 5, 400.00, 'Fundamentals of HTML and CSS.'),
(36, 'JavaScript Guide', 'Chris Parker', 'JavaScript', 103, '2022-04-21', 5, 3, 650.00, 'Introduction to JavaScript programming.'),
(37, 'React Handbook', 'Ryan Cooper', 'React', 103, '2023-08-15', 4, 2, 700.00, 'Practical introduction to React development.'),
(38, 'Node.js Basics', 'Adam Reed', 'Node.js', 102, '2022-09-18', 5, 4, 600.00, 'Introduction to Node.js and server-side JavaScript.'),
(39, 'REST API Design', 'Peter Evans', 'API', 103, '2023-01-17', 6, 3, 650.00, 'Fundamentals of designing REST APIs.'),
(40, 'FastAPI Guide', 'Luke Morris', 'FastAPI', 103, '2023-06-20', 4, 2, 550.00, 'Introduction to FastAPI application development.'),

(41, 'MySQL Essentials', 'Robert King', 'MySQL', 102, '2022-02-11', 7, 5, 600.00, 'Essential concepts of MySQL databases.'),
(42, 'PostgreSQL Guide', 'James Moore', 'PostgreSQL', 103, '2021-05-23', 5, 3, 650.00, 'Practical guide to PostgreSQL databases.'),
(43, 'MongoDB Basics', 'Daniel Brown', 'MongoDB', 102, '2023-03-07', 6, 4, 600.00, 'Introduction to MongoDB and document databases.'),
(44, 'Redis Handbook', 'Kevin Smith', 'Redis', 103, '2022-10-19', 4, 2, 550.00, 'Introduction to Redis data storage.'),
(45, 'Database Design', 'Michael Brown', 'DBMS', 103, '2020-12-15', 8, 6, 750.00, 'Principles of effective database design.'),
(46, 'SQL Practice', 'William Jones', 'SQL', 104, '2023-04-12', 5, 3, 350.00, 'Practice problems for SQL programming.'),
(47, 'DBMS PYQs', 'Thomas Wilson', 'DBMS', 104, '2022-06-25', 6, 4, 300.00, 'Previous year questions for DBMS preparation.'),
(48, 'OS PYQs', 'Henry Davis', 'OS', 104, '2023-02-14', 5, 2, 300.00, 'Previous year questions for operating systems.'),
(49, 'DAA PYQs', 'George Miller', 'DAA', 104, '2021-09-09', 7, 5, 350.00, 'Previous year questions for algorithm preparation.'),
(50, 'CN PYQs', 'Edward Taylor', 'CN', 104, '2022-11-21', 4, 3, 300.00, 'Previous year questions for computer networks.'),

(51, 'AI Research Papers', 'Alan Johnson', 'AI', 105, '2023-01-09', 3, 2, 500.00, 'Collection of research papers in artificial intelligence.'),
(52, 'ML Research', 'Sarah Wilson', 'ML', 105, '2022-07-14', 4, 3, 550.00, 'Research material covering machine learning topics.'),
(53, 'NLP Research', 'Emily Brown', 'NLP', 105, '2023-05-17', 3, 1, 500.00, 'Research papers covering natural language processing.'),
(54, 'Computer Vision Research', 'Laura Davis', 'CV', 105, '2021-08-29', 5, 3, 600.00, 'Research material covering computer vision.'),
(55, 'Deep Learning Research', 'Mark Taylor', 'DL', 105, '2022-12-01', 4, 2, 650.00, 'Research papers focused on deep learning.'),
(56, 'Cyber Security', 'James Anderson', 'Security', 102, '2023-03-24', 6, 4, 700.00, 'Introduction to cybersecurity principles and practices.'),
(57, 'Ethical Hacking', 'David Thomas', 'Security', 103, '2021-06-30', 5, 2, 750.00, 'Introduction to ethical hacking techniques.'),
(58, 'Cryptography', 'Robert Martin', 'Security', 102, '2022-01-25', 7, 5, 650.00, 'Fundamentals of cryptography and secure communication.'),
(59, 'Network Security', 'Paul Jackson', 'Security', 103, '2023-07-07', 4, 3, 700.00, 'Concepts and techniques for securing networks.'),
(60, 'Blockchain Basics', 'Steve Harris', 'Blockchain', 102, '2022-05-12', 5, 4, 600.00, 'Introduction to blockchain technology.'),

(61, 'Computer Graphics', 'John Lewis', 'Graphics', 102, '2021-11-18', 6, 3, 700.00, 'Fundamentals of computer graphics and visualization.'),
(62, 'Operating System Concepts', 'Abraham Silbers', 'OS', 103, '2020-09-10', 8, 6, 850.00, 'Detailed concepts of operating system design.'),
(63, 'Modern Operating Systems', 'Andrew Tanen', 'OS', 103, '2022-02-17', 5, 3, 900.00, 'Modern concepts and technologies in operating systems.'),
(64, 'Computer Networks Guide', 'James Kurose', 'CN', 103, '2021-04-22', 7, 5, 850.00, 'Comprehensive guide to computer networks.'),
(65, 'Data Communications', 'William Stall', 'CN', 102, '2023-01-13', 4, 2, 750.00, 'Fundamentals of data communication systems.'),
(66, 'Compiler Principles', 'Alfred Aho', 'CD', 103, '2020-10-05', 6, 4, 800.00, 'Core principles of compiler construction.'),
(67, 'Software Testing', 'Robert Press', 'SE', 103, '2022-08-11', 5, 3, 650.00, 'Fundamentals of software testing techniques.'),
(68, 'Agile Development', 'Martin Fowler', 'SE', 103, '2023-02-28', 4, 2, 600.00, 'Introduction to agile software development.'),
(69, 'UML Fundamentals', 'Grady Booch', 'SE', 102, '2021-05-15', 5, 4, 650.00, 'Introduction to UML modeling techniques.'),
(70, 'Design Patterns', 'Erich Gamma', 'SE', 103, '2020-07-21', 7, 5, 800.00, 'Reusable design patterns for software development.'),

(71, 'Clean Code', 'Robert Martin', 'Programming', 101, '2022-03-08', 6, 4, 750.00, 'Principles for writing clean and maintainable code.'),
(72, 'Effective Java', 'Joshua Bloch', 'Java', 103, '2021-12-20', 5, 3, 800.00, 'Best practices for professional Java programming.'),
(73, 'Effective Python', 'Brett Slatkin', 'Python', 103, '2023-06-05', 4, 2, 750.00, 'Best practices for writing effective Python code.'),
(74, 'C Programming Language', 'Brian Kern', 'C', 103, '2020-05-11', 8, 6, 650.00, 'Comprehensive guide to C programming.'),
(75, 'C++ Primer', 'Stanley Lipp', 'C++', 103, '2022-09-01', 6, 4, 850.00, 'Comprehensive introduction to modern C++.'),
(76, 'Head First Java', 'Kathy Sierra', 'Java', 101, '2021-03-16', 5, 3, 700.00, 'Beginner-friendly guide to Java programming.'),
(77, 'Head First Python', 'Paul Barry', 'Python', 101, '2023-01-28', 4, 4, 700.00, 'Beginner-friendly guide to Python programming.'),
(78, 'Learning SQL', 'Alan Beaulieu', 'SQL', 101, '2022-06-08', 7, 5, 600.00, 'Practical introduction to SQL programming.'),
(79, 'SQL Cookbook', 'Anthony Molinar', 'SQL', 103, '2021-10-24', 5, 2, 750.00, 'Practical SQL solutions and examples.'),
(80, 'Database Internals', 'Alex Petrov', 'DBMS', 103, '2023-04-19', 4, 3, 850.00, 'Exploration of database storage and internal systems.'),

(81, 'Hands-On ML', 'Aurélien Géron', 'ML', 103, '2022-01-31', 6, 4, 900.00, 'Practical introduction to machine learning.'),
(82, 'Pattern Recognition', 'Christopher Bishop', 'ML', 103, '2021-07-17', 5, 3, 950.00, 'Fundamentals of pattern recognition and machine learning.'),
(83, 'Reinforcement Learning', 'Richard Sutton', 'AI', 103, '2020-11-09', 4, 2, 900.00, 'Introduction to reinforcement learning methods.'),
(84, 'AI Modern Approach', 'Stuart Russell', 'AI', 103, '2022-10-05', 7, 5, 950.00, 'Comprehensive introduction to artificial intelligence.'),
(85, 'Speech Recognition', 'Daniel Jurafsky', 'NLP', 105, '2023-05-25', 3, 2, 600.00, 'Research material on speech and language processing.'),
(86, 'Data Mining', 'Jiawei Han', 'Data Mining', 102, '2021-09-16', 6, 4, 750.00, 'Fundamentals of data mining techniques.'),
(87, 'Data Analytics', 'Thomas Davenport', 'Analytics', 102, '2022-04-13', 5, 3, 650.00, 'Introduction to data analytics and decision making.'),
(88, 'Statistics for Data Science', 'Peter Bruce', 'Statistics', 102, '2023-02-09', 4, 2, 700.00, 'Statistics concepts for data science applications.'),
(89, 'R Programming', 'Hadley Wickham', 'R', 102, '2020-08-22', 5, 4, 600.00, 'Introduction to R programming for data analysis.'),
(90, 'TensorFlow Guide', 'Martin Abadi', 'TensorFlow', 103, '2022-12-12', 6, 3, 800.00, 'Introduction to TensorFlow machine learning tools.'),

(91, 'PyTorch Guide', 'Soumith Chintala', 'PyTorch', 103, '2023-03-29', 4, 2, 800.00, 'Introduction to PyTorch deep learning development.'),
(92, 'Computer Science Handbook', 'John Smith', 'CS', 101, '2021-01-18', 8, 6, 700.00, 'Broad reference guide to computer science topics.'),
(93, 'Programming Fundamentals', 'David Miller', 'Programming', 101, '2020-06-14', 7, 5, 500.00, 'Fundamental programming concepts for beginners.'),
(94, 'Algorithms Unlocked', 'Thomas Cormen', 'DAA', 103, '2022-07-01', 5, 3, 700.00, 'Accessible introduction to important algorithms.'),
(95, 'Introduction to Algorithms', 'Cormen', 'DAA', 103, '2021-11-25', 6, 4, 950.00, 'Comprehensive reference for algorithms and data structures.'),
(96, 'Discrete Mathematics Guide', 'Kenneth Rosen', 'Maths', 103, '2023-01-11', 5, 2, 750.00, 'Guide to discrete mathematics and its applications.'),
(97, 'Linear Algebra Done Right', 'Sheldon Axler', 'Maths', 103, '2022-05-30', 4, 3, 800.00, 'Modern approach to linear algebra concepts.'),
(98, 'Engineering Mathematics', 'B.S. Grewal', 'Maths', 102, '2020-09-27', 8, 6, 850.00, 'Comprehensive mathematics reference for engineering students.'),
(99, 'Research Methodology', 'Wayne Booth', 'Research', 105, '2021-06-16', 3, 2, 650.00, 'Introduction to research methods and academic writing.'),
(100, 'Technical Writing', 'John Day', 'Writing', 101, '2023-08-01', 5, 4, 550.00, 'Fundamentals of technical and professional writing.');


update books 
set available = total 
where available < total ;   -- setting the value of total and available to be teh same at the start of the project 

update books 
set author = "aditya pramanik"
where author = "Cormen";

update books 
set subject = "programming"
where subject in ( "Python" , "java" , "c" , "c++" , "javascript" , "node.js" , "react" , "programming" , "r" );

update books 
set subject = "database"
where subject in ( "sql" , "dbms" , "big data" , "mysql" , "postgresql" , "mongodb" );

update books 
set subject = "maths"
where subject in ( "mathematics" , "probability" , "statictics" );

update books 
set subject = "developement"
where subject in ( "devops" , "docker" ,"linux","git","github","api","fastapi","tensorflow","pytorch","web" ,"cloud","blockchain");

update books 
set subject = "AIML"
where subject in ( "ai" , "ml" ,"nlp","ds" );

START TRANSACTION;

-- 1. Insert 100 borrow records with unique book assignments per student and varying issue dates
INSERT INTO borrow (name, roll, title, book_id, issue_date, fine) VALUES
-- Student 1001: Aarav Sharma (3 books)
('Aarav Sharma', 1001, 'Python Basics', 1, '2020-03-15', 0.0),
('Aarav Sharma', 1001, 'Data Structures', 7, '2022-07-10', 0.0),
('Aarav Sharma', 1001, 'Operating Systems', 11, '2024-01-20', 0.0),

-- Student 1002: Ananya Das (3 books)
('Ananya Das', 1002, 'Advanced Python', 2, '2019-11-05', 0.0),
('Ananya Das', 1002, 'Algorithms', 8, '2021-05-18', 0.0),
('Ananya Das', 1002, 'Computer Networks', 12, '2023-09-12', 0.0),

-- Student 1003: Rohan Mukherjee (3 books)
('Rohan Mukherjee', 1003, 'Learning Java', 3, '2020-02-14', 0.0),
('Rohan Mukherjee', 1003, 'Database Systems', 9, '2022-08-22', 0.0),
('Rohan Mukherjee', 1003, 'Computer Architecture', 13, '2025-02-10', 0.0),

-- Student 1004: Priya Banerjee (3 books)
('Priya Banerjee', 1004, 'Java Programming', 4, '2021-04-11', 0.0),
('Priya Banerjee', 1004, 'SQL Fundamentals', 10, '2023-01-30', 0.0),
('Priya Banerjee', 1004, 'Compiler Design', 14, '2024-06-15', 0.0),

-- Student 1005: Arjun Roy (3 books)
('Arjun Roy', 1005, 'C Programming', 5, '2019-08-20', 0.0),
('Arjun Roy', 1005, 'Software Engineering', 15, '2022-10-05', 0.0),
('Arjun Roy', 1005, 'Discrete Mathematics', 16, '2024-03-25', 0.0),

-- Student 1006: Sneha Ghosh (3 books)
('Sneha Ghosh', 1006, 'C++ Fundamentals', 6, '2020-12-01', 0.0),
('Sneha Ghosh', 1006, 'Linear Algebra', 17, '2022-06-14', 0.0),
('Sneha Ghosh', 1006, 'Probability Basics', 18, '2023-11-20', 0.0),

-- Student 1007: Rahul Sen (3 books)
('Rahul Sen', 1007, 'Statistics', 19, '2021-03-10', 0.0),
('Rahul Sen', 1007, 'Machine Learning', 20, '2023-04-15', 0.0),
('Rahul Sen', 1007, 'Deep Learning', 21, '2025-01-08', 0.0),

-- Student 1008: Ishita Paul (3 books)
('Ishita Paul', 1008, 'Artificial Intelligence', 22, '2019-09-15', 0.0),
('Ishita Paul', 1008, 'Neural Networks', 23, '2021-07-22', 0.0),
('Ishita Paul', 1008, 'Natural Language Processing', 24, '2024-05-19', 0.0),

-- Student 1009: Sayan Dutta (3 books)
('Sayan Dutta', 1009, 'Computer Vision', 25, '2020-05-12', 0.0),
('Sayan Dutta', 1009, 'Data Science', 26, '2022-11-11', 0.0),
('Sayan Dutta', 1009, 'Big Data', 27, '2024-08-30', 0.0),

-- Student 1010: Neha Saha (3 books)
('Neha Saha', 1010, 'Cloud Computing', 28, '2021-01-25', 0.0),
('Neha Saha', 1010, 'DevOps Handbook', 29, '2023-03-14', 0.0),
('Neha Saha', 1010, 'Docker Guide', 30, '2025-03-01', 0.0),

-- Student 1011: Aditya Bose (3 books)
('Aditya Bose', 1011, 'Linux Basics', 31, '2019-06-18', 0.0),
('Aditya Bose', 1011, 'Git Essentials', 32, '2022-02-10', 0.0),
('Aditya Bose', 1011, 'GitHub Guide', 33, '2024-04-05', 0.0),

-- Student 1012: Riya Chatterjee (3 books)
('Riya Chatterjee', 1012, 'Web Development', 34, '2020-10-20', 0.0),
('Riya Chatterjee', 1012, 'HTML and CSS', 35, '2022-09-09', 0.0),
('Riya Chatterjee', 1012, 'JavaScript Guide', 36, '2023-12-12', 0.0),

-- Student 1013: Amit Verma (3 books)
('Amit Verma', 1013, 'React Handbook', 37, '2021-08-15', 0.0),
('Amit Verma', 1013, 'Node.js Basics', 38, '2023-05-20', 0.0),
('Amit Verma', 1013, 'REST API Design', 39, '2025-01-15', 0.0),

-- Student 1014: Kavya Singh (3 books)
('Kavya Singh', 1014, 'FastAPI Guide', 40, '2019-12-10', 0.0),
('Kavya Singh', 1014, 'MySQL Essentials', 41, '2021-10-01', 0.0),
('Kavya Singh', 1014, 'PostgreSQL Guide', 42, '2024-07-22', 0.0),

-- Student 1015: Sourav Pal (3 books)
('Sourav Pal', 1015, 'MongoDB Basics', 43, '2020-04-18', 0.0),
('Sourav Pal', 1015, 'Redis Handbook', 44, '2022-03-25', 0.0),
('Sourav Pal', 1015, 'Database Design', 45, '2023-10-10', 0.0),

-- Student 1016: Meera Nair (3 books)
('Meera Nair', 1016, 'SQL Practice', 46, '2021-02-14', 0.0),
('Meera Nair', 1016, 'DBMS PYQs', 47, '2022-12-05', 0.0),
('Meera Nair', 1016, 'OS PYQs', 48, '2024-09-18', 0.0),

-- Student 1017: Kunal Gupta (3 books)
('Kunal Gupta', 1017, 'DAA PYQs', 49, '2020-07-07', 0.0),
('Kunal Gupta', 1017, 'CN PYQs', 50, '2022-05-15', 0.0),
('Kunal Gupta', 1017, 'Python Basics', 1, '2024-02-11', 0.0),

-- Student 1018: Pooja Yadav (3 books)
('Pooja Yadav', 1018, 'Advanced Python', 2, '2019-10-01', 0.0),
('Pooja Yadav', 1018, 'C Programming', 5, '2021-06-20', 0.0),
('Pooja Yadav', 1018, 'SQL Fundamentals', 10, '2023-08-19', 0.0),

-- Student 1019: Abhishek Roy (3 books)
('Abhishek Roy', 1019, 'Learning Java', 3, '2020-01-11', 0.0),
('Abhishek Roy', 1019, 'C++ Fundamentals', 6, '2022-04-22', 0.0),
('Abhishek Roy', 1019, 'Operating Systems', 11, '2024-11-03', 0.0),

-- Student 1020: Tania Mitra (3 books)
('Tania Mitra', 1020, 'Java Programming', 4, '2021-09-09', 0.0),
('Tania Mitra', 1020, 'Data Structures', 7, '2023-02-28', 0.0),
('Tania Mitra', 1020, 'Computer Networks', 12, '2025-02-01', 0.0),

-- Student 1021: Vivek Kumar (3 books)
('Vivek Kumar', 1021, 'Algorithms', 8, '2019-05-14', 0.0),
('Vivek Kumar', 1021, 'Computer Architecture', 13, '2021-11-12', 0.0),
('Vivek Kumar', 1021, 'Software Engineering', 15, '2024-01-14', 0.0),

-- Student 1022: Diya Das (3 books)
('Diya Das', 1022, 'Database Systems', 9, '2020-08-19', 0.0),
('Diya Das', 1022, 'Compiler Design', 14, '2022-10-30', 0.0),
('Diya Das', 1022, 'Discrete Mathematics', 16, '2023-07-04', 0.0),

-- Student 1023: Siddharth Jain (3 books)
('Siddharth Jain', 1023, 'Linear Algebra', 17, '2021-12-25', 0.0),
('Siddharth Jain', 1023, 'Statistics', 19, '2023-06-11', 0.0),
('Siddharth Jain', 1023, 'Artificial Intelligence', 22, '2025-03-10', 0.0),

-- Student 1024: Moumita Ghosh (3 books)
('Moumita Ghosh', 1024, 'Probability Basics', 18, '2019-04-10', 0.0),
('Moumita Ghosh', 1024, 'Machine Learning', 20, '2022-01-15', 0.0),
('Moumita Ghosh', 1024, 'Neural Networks', 23, '2024-10-12', 0.0),

-- Student 1025: Debanjan Roy (3 books)
('Debanjan Roy', 1025, 'Deep Learning', 21, '2020-06-22', 0.0),
('Debanjan Roy', 1025, 'Natural Language Processing', 24, '2022-08-14', 0.0),
('Debanjan Roy', 1025, 'Computer Vision', 25, '2024-03-09', 0.0),

-- Student 1026: Sanjana Bose (3 books)
('Sanjana Bose', 1026, 'Data Science', 26, '2021-03-19', 0.0),
('Sanjana Bose', 1026, 'Cloud Computing', 28, '2023-04-20', 0.0),
('Sanjana Bose', 1026, 'Linux Basics', 31, '2025-01-20', 0.0),

-- Student 1027: Akash Kumar (3 books)
('Akash Kumar', 1027, 'Big Data', 27, '2019-11-20', 0.0),
('Akash Kumar', 1027, 'DevOps Handbook', 29, '2022-07-16', 0.0),
('Akash Kumar', 1027, 'Git Essentials', 32, '2024-08-01', 0.0),

-- Student 1028: Ritika Sharma (3 books)
('Ritika Sharma', 1028, 'Docker Guide', 30, '2020-02-18', 0.0),
('Ritika Sharma', 1028, 'GitHub Guide', 33, '2022-09-14', 0.0),
('Ritika Sharma', 1028, 'Web Development', 34, '2023-11-05', 0.0),

-- Student 1029: Subham Das (3 books)
('Subham Das', 1029, 'HTML and CSS', 35, '2021-07-01', 0.0),
('Subham Das', 1029, 'JavaScript Guide', 36, '2023-01-18', 0.0),
('Subham Das', 1029, 'React Handbook', 37, '2024-12-10', 0.0),

-- Student 1030: Nikita Sen (3 books)
('Nikita Sen', 1030, 'Node.js Basics', 38, '2019-09-05', 0.0),
('Nikita Sen', 1030, 'REST API Design', 39, '2021-04-12', 0.0),
('Nikita Sen', 1030, 'FastAPI Guide', 40, '2023-06-25', 0.0),

-- Student 1031: Pratik Ghosh (2 books)
('Pratik Ghosh', 1031, 'MySQL Essentials', 41, '2020-11-15', 0.0),
('Pratik Ghosh', 1031, 'MongoDB Basics', 43, '2023-08-22', 0.0),

-- Student 1032: Swati Paul (2 books)
('Swati Paul', 1032, 'PostgreSQL Guide', 42, '2021-05-10', 0.0),
('Swati Paul', 1032, 'Redis Handbook', 44, '2024-02-14', 0.0),

-- Student 1033: Anirban Dey (2 books)
('Anirban Dey', 1033, 'Database Design', 45, '2020-01-20', 0.0),
('Anirban Dey', 1033, 'SQL Practice', 46, '2022-10-10', 0.0),

-- Student 1034: Shreya Banerjee (2 books)
('Shreya Banerjee', 1034, 'DBMS PYQs', 47, '2021-08-05', 0.0),
('Shreya Banerjee', 1034, 'OS PYQs', 48, '2023-05-12', 0.0),

-- Student 1035: Manish Singh (2 books)
('Manish Singh', 1035, 'DAA PYQs', 49, '2020-03-30', 0.0),
('Manish Singh', 1035, 'CN PYQs', 50, '2022-11-28', 0.0);

-- 2. Explicit Student Updates (Incrementing counts safely)
UPDATE student 
SET borrowed = borrowed + 3, pending = pending + 3 
WHERE roll BETWEEN 1001 AND 1030;

UPDATE student 
SET borrowed = borrowed + 2, pending = pending + 2 
WHERE roll BETWEEN 1031 AND 1035;

-- 3. Explicit Book Updates (Decrementing each book's availability individually matching its exact frequency of 2)
UPDATE books SET available = available - 2 WHERE book_id = 1;
UPDATE books SET available = available - 2 WHERE book_id = 2;
UPDATE books SET available = available - 2 WHERE book_id = 3;
UPDATE books SET available = available - 2 WHERE book_id = 4;
UPDATE books SET available = available - 2 WHERE book_id = 5;
UPDATE books SET available = available - 2 WHERE book_id = 6;
UPDATE books SET available = available - 2 WHERE book_id = 7;
UPDATE books SET available = available - 2 WHERE book_id = 8;
UPDATE books SET available = available - 2 WHERE book_id = 9;
UPDATE books SET available = available - 2 WHERE book_id = 10;
UPDATE books SET available = available - 2 WHERE book_id = 11;
UPDATE books SET available = available - 2 WHERE book_id = 12;
UPDATE books SET available = available - 2 WHERE book_id = 13;
UPDATE books SET available = available - 2 WHERE book_id = 14;
UPDATE books SET available = available - 2 WHERE book_id = 15;
UPDATE books SET available = available - 2 WHERE book_id = 16;
UPDATE books SET available = available - 2 WHERE book_id = 17;
UPDATE books SET available = available - 2 WHERE book_id = 18;
UPDATE books SET available = available - 2 WHERE book_id = 19;
UPDATE books SET available = available - 2 WHERE book_id = 20;
UPDATE books SET available = available - 2 WHERE book_id = 21;
UPDATE books SET available = available - 2 WHERE book_id = 22;
UPDATE books SET available = available - 2 WHERE book_id = 23;
UPDATE books SET available = available - 2 WHERE book_id = 24;
UPDATE books SET available = available - 2 WHERE book_id = 25;
UPDATE books SET available = available - 2 WHERE book_id = 26;
UPDATE books SET available = available - 2 WHERE book_id = 27;
UPDATE books SET available = available - 2 WHERE book_id = 28;
UPDATE books SET available = available - 2 WHERE book_id = 29;
UPDATE books SET available = available - 2 WHERE book_id = 30;
UPDATE books SET available = available - 2 WHERE book_id = 31;
UPDATE books SET available = available - 2 WHERE book_id = 32;
UPDATE books SET available = available - 2 WHERE book_id = 33;
UPDATE books SET available = available - 2 WHERE book_id = 34;
UPDATE books SET available = available - 2 WHERE book_id = 35;
UPDATE books SET available = available - 2 WHERE book_id = 36;
UPDATE books SET available = available - 2 WHERE book_id = 37;
UPDATE books SET available = available - 2 WHERE book_id = 38;
UPDATE books SET available = available - 2 WHERE book_id = 39;
UPDATE books SET available = available - 2 WHERE book_id = 40;
UPDATE books SET available = available - 2 WHERE book_id = 41;
UPDATE books SET available = available - 2 WHERE book_id = 42;
UPDATE books SET available = available - 2 WHERE book_id = 43;
UPDATE books SET available = available - 2 WHERE book_id = 44;
UPDATE books SET available = available - 2 WHERE book_id = 45;
UPDATE books SET available = available - 2 WHERE book_id = 46;
UPDATE books SET available = available - 2 WHERE book_id = 47;
UPDATE books SET available = available - 2 WHERE book_id = 48;
UPDATE books SET available = available - 2 WHERE book_id = 49;
UPDATE books SET available = available - 2 WHERE book_id = 50;

COMMIT;


-- displaying all the data in the tables 
select * from books;
select * from student; 
select * from category; 
select * from borrow;  