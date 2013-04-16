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
      @tasks = Task.all
      if @task.save
      		flash[:notice] = 'Task was successfully created.'
            redirect_to action: 'new'
      else
            render action: 'new'
      end
   end

   	def edit

   	end

   	def update
   		if @task.update_attributes(params[:task])
   			flash[:notice] = 'Task was successfully updated.'
   			redirect_to action: 'show'
   		else
   			redirect_to action: 'edit'
   		end
   	end

   def destroy
   		@task.destroy
   		flash[:notice] = 'Task was successfully destroyed.'
   		redirect_to action: 'new'	
   end

   private
	    def find_task
	      @task = Task.find(params[:id])
	    end
end