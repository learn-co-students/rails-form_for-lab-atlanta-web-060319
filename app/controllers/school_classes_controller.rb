class SchoolClassesController < ApplicationController

	def index
		@school_classes = SchoolClass.all
		render 'index.html.erb'
	end

	def create
		@school_class = SchoolClass.create(params.require(:school_class).permit(:title, :room_number))
		redirect_to "/school_classes/#{@school_class.id}"
	end

	def new
		@school_class = SchoolClass.new
		render 'new.html.erb'
	end

	def edit
		@school_class = SchoolClass.find(params[:id])
		render 'edit.html.erb' 
	end

	def show
		@school_class = SchoolClass.find(params[:id])
		render 'show.html.erb'
	end

	def update
		SchoolClass.update(params.require(:school_class).permit(:title, :room_number))
		@school_class = SchoolClass.find(params[:id])
		redirect_to "/school_classes/#{@school_class.id}"
	end

end