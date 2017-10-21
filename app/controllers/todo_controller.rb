class TodoController < ApplicationController
    def index
    end
    def show
        @todo_description="Make The Curriculum"
        @todo_pomodoro= 4
    end
end
