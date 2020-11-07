"""
Assigment: milestone 3 python files
Group letter: B
Developer: Peter Keres, Micheal Faramer, tyler yann
NOTE: depending on needs, might need to create the file path to the database or change file name in main
"""

import sqlite3
from sqlite3 import Error


def create_connection(db_file):
    """ create a database connection to a SQLite database """
    try:
        conn = sqlite3.connect(db_file)
        print(sqlite3.version)
        print("Connected")
        return conn
    except Error as e:
        print(e)

    return None


def select_all_students(conn):
    """
    Query all rows in the student table
    :param conn: the Connection object
    :return:
    """
    cur = conn.cursor()
    cur.execute("SELECT * FROM STUDENT")

    rows = cur.fetchall()

    for row in rows:
        print(row)


def select_student(conn, student):
    """
    gets a student from the student table and prints to screen
    param conn: connection object to the database
    param student: is the id of the student they want to view
    """

    cur = conn.cursor()
    cur.execute("SELECT * FROM STUDENT WHERE studentID=?", (student,))

    rows = cur.fetchall()

    print("the informatoin of student " + student + " is:")
    for row in rows:
        print(row)
    print("================================================\n")


def create_student(conn, student):
    """
    adds a new student to the database
    :param conn:
    :param task:
    :return:
    """

    sql = '''INSERT INTO STUDENT(studentID,lastName,firstName,dateBirth,isActive)
            VALUES(?,?,?,?,?)'''

    cur = conn.cursor()
    cur.execute(sql, student)
    return cur.lastrowid


def delete_student(conn, id):
    """
    Delete a student by studentID
    :param conn:  Connection to the SQLite database
    :param id: id of the task
    :return:
    """

    sql = 'DELETE FROM STUDENT WHERE studentID=?'
    cur = conn.cursor()
    cur.execute(sql, (id,))


def update_student_lastname(conn, student):
    """
    update lastname
    :param conn:
    :param task:
    :return: project id
    """
    sql = ''' UPDATE STUDENT
              SET lastName = ?
              WHERE studentID = ?'''
    cur = conn.cursor()
    cur.execute(sql, student)



if __name__ == '__main__':
    print("This is the beginning of the database application.")
    print("")


    # making a connection to database STEP 1
    print("Connecting to the database file C:\\temp\\assigment_4.db.")
    conn = create_connection("C:\\temp\\assigment_4.db")


    with conn:

        print("\nStarting files in the student table.")
        select_all_students(conn)

        # adding in students STEP 2
        student_1 = (100008, "Bond", "James", "1996-07-15", "N")
        student_2 = (100009, "Cruise", "Tom", "2000-01-16", "N")
        student_3 = (100010, "Ethan", "Hunt", "1998-07-29", "N")
        create_student(conn, student_1)
        create_student(conn, student_2)
        create_student(conn, student_3)

        print("\nSTEP2: Added new students, students table is now")
        select_all_students(conn)


        # deleting students STEP 2
        student_4 = (100005)
        student_5 = (100006)
        student_6 = (100010)
        delete_student(conn,student_4)
        delete_student(conn,student_5)
        delete_student(conn,student_6)
        conn.commit()

        print("\nSTEP2: Deleted students, the students table is now")
        select_all_students(conn)


        # updating last name STEP 3
        student_7 = ("Keres", 100007)
        update_student_lastname(conn, student_7)
        conn.commit()

        print("\nSTEP3: Changed the last name of student id: 100007")
        select_all_students(conn)


        #getting user input on which record they want to see STEP 4
        user = 'y'
        while user.lower() == 'y':
            student = (input("\nSTEP4: Which student's information do you want to see? Enter student number:"))
            select_student(conn, student)

            user = input("Do you want to see another student(y/n)?")
            while user.lower() != 'y' and user.lower() != 'n':
                user = input("didnt understand, a Y for yes and a N for no?")

    conn.close()


    print("\nThank you. Program Terminated.")
