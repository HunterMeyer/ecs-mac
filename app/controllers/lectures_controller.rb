class LecturesController < ApplicationController
  def index
  	@lecture = Lecture.new
	end

	def new
		@lecture = Lecture.new
	end

	def create
		@lecture = Lecture.new(lecture_params)
		if @lecture.save
			flash[:success] = 'Thanks for the input.'
			redirect_to lectures_path
		else
			render 'new'
		end
	end

  private

	def lecture_params
		params.require(:lecture).permit(:topic, :email)
	end
end