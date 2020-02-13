require_relative "../config/environment.rb"

class Student
  attr_accessor :id, :name, :grade 

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  # Takes in 3 args id, name, grade. id = nil 
  def initialize(id, name, grade)
    @id = id 
    @name = name 
    @grade = grade 
  end 

  def self.create_table
    # This class method creates the students table with columns 
    # that match the attributes of our individual 
    # students: an id (which is the primary key), 
    # the name and the grade.
  end 

  def self.drop_table 
    # This class method should be responsible 
    # for dropping the students table.
  end 

  def save 
    # This instance method inserts a new row into the database 
    # using the attributes of the given object. This method 
    # also assigns the id attribute of the object once the 
    # row has been inserted into the database.
  end 

  def self.create 
    # This method creates a student with two attributes, name and grade, 
    # and saves it into the students table.
  end 

  def self.new_from_db(row)
    # This class method takes an argument of an array. 
    # When we call this method we will pass it the array 
    # that is the row returned from the database by the execution 
    # of a SQL query. We can anticipate that this array will contain 
    # three elements in this order: the id, name and grade of a student.

    # The .new_from_db method uses these three array elements to create 
    # a new Student object with these attributes.
  end 

  def self.find_by_name(name) 
    # This class method takes in an argument of a name. It queries the database table 
    # for a record that has a name of the name passed in as an argument. Then it uses the 
    # #new_from_db method to instantiate a Student object with the database row that the SQL 
    # query returns.
  end 

  def update 
    # This method updates the database row mapped to the given Student instance.
  end 
end








