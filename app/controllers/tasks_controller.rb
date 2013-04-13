class TasksController < ApplicationController

	before_filter :find_task,
    :only => [:show, :edit, :update, :destroy]

	def index
		redirect_to action: 'new'
	end

	def new
		@task = Task.new
		@tasks = Task.all	
	end

	def show
		
	end

	def create
      @task = Task.new(params[:task])
      if @task.save
            redirect_to action: 'new'
      else
            redirect_to action: 'new'
      end
   end

   	def edit

   	end

   	def update
   		if @task.update_attributes(params[:task])
   			redirect_to action: 'show'
   		else
   			redirect_to action: 'edit'
   		end
   	end

   def destroy
   		@task.destroy
   		redirect_to action: 'new'	
   end

   private
	    def find_task
	      @task = Task.find(params[:id])
	    end

end
