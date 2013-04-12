class TasksController < ApplicationController

	def index
		@tasks = Task.all	
	end

	def new
		@task = Task.new
		@tasks = Task.all	
	end

	def create
		
		
	end

end
