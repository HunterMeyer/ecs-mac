class StaticPagesController < ApplicationController
  def lectures
		@lecture = Lecture.new
	end

	def create
		@lecture = Lecture.new(lecture_params)
		if @lecture.save
			flash[:success] = 'Thanks for the input.'
			redirect_to lectures_path
		else
			render 'lectures'
	end

  def faq
  end

  private

	def lectures_params
		params.require(:lectures).permit(:topic, :email)
	end
end
