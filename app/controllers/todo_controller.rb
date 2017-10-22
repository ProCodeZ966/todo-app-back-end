class TodoController < ApplicationController
    def index
    @todos = Todo.all
    end
    def show
        @todo = Todo.find_by_id(params[:id])
    
    end
    def new
    end
    def create
      t = Todo.new
      t.task_name = params['task_name']
      t.due_date = params['due_date']
      t.completed = false
      t.save
      redirect_to "/todo/show/#{ t.id }"
    end
    def edit
        @todo =  Todo.find_by_id(params[:id])
    end
    def update
      t = Todo.find_by_id(params[:id])
      t.due_date = params['due_date']
      t.task_name = params['task_name']
      t.completed = params['completed']
      t.save
      redirect_to "/todo/show/#{ t.id }"
    end
end
