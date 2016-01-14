class Todo < ActiveRecord::Base

 attr_accessible :todo_item
 #The line lets the controller method mass assign value to the todo_item while creating a new entry in the database using Todo.create.
 #this is where attribute whitelisting would usually be done before rails 4.1, but now, it must be done in the controller. (WHY?)
 validates :todo_item, presence: true
 #validates is a rails model validation helper.
end