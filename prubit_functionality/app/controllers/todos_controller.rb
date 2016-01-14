class TodosController < ApplicationController
  def index  #this is the index action of the todos controller
  	#by default this action fetches the index.html.erb file from views.
  	@todo_items = Todo.all #this fetches all todos from the Todo model and creates an instance variable @todo_items which is an array
  end

  def delete
  	#put delete logic here
  	t = Todo.last  #assign the last item on the todo list a variable t
  	t.delete     #delete that row.
  end

  def add
   todo = Todo.create(:todo_item => params[:todo_text])
   if !todo.valid?
        flash[:error] = todo.errors.full_messages.join("<br>").html_safe
   end
   redirect_to :action => 'index'
end

end
