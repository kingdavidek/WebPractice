class TodosController < ApplicationController
  def index  #this is the index action of the todos controller
  	#by default this action fetches the index.html.erb file from views.
  	@todo_array = ["Buy Milk", "Buy Soap", "Pay Bill", "Draw Money"]  #this instance variable can be shown in the view
  	@todo_items = Todo.all #this fetches all todos from the Todo model and creates an instance variable @todo_items which is an array
  end

  def delete
  	#put delete logic here
  	t = Todo.last  #assign the last item on the todo list a variable t
  	t.delete     #delete that row.
  end

  def add
    Todo.create(:todo_item => params[:todo_text])
    redirect_to :action => 'index'
  end
end
