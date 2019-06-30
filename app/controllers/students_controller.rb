class StudentsController < ApplicationController

	def index
		@students = Student.all
		render 'index.html.erb'
	end

	def create
		@student = Student.create(params.require(:student).permit(:first_name, :last_name))
		redirect_to "/students/#{@student.id}"
	end

	def new
		@student = Student.new
		render 'new.html.erb'
	end

	def edit
		@student = Student.find(params[:id])
		render 'edit.html.erb' 
	end

	def show
		@student = Student.find(params[:id])
		render 'show.html.erb'
	end

	def update
		Student.update(params.require(:student).permit(:first_name, :last_name))
		@student = Student.find(params[:id])
		redirect_to "/students/#{@student.id}"
	end

end