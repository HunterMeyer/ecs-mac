class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all
    authorize! :read, @attendees
  end

  def show
    @attendee = Attendee.find(params[:id])
  end  

	def new
    @attendee = Attendee.new
  end

  def create
    @attendee = Attendee.new(attendee_params)
    if @attendee.save 
      flash[:success] = 'Thanks for signing up!'
      redirect_to root_path
    else
      render 'new'
    end
  end

private
  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :industry, :pull_out, :concerns, :questions)
  end
end
