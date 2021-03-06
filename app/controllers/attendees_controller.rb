class AttendeesController < ApplicationController
  def index
    @attendees = Attendee.all
    authorize! :manage, @attendees
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
      redirect_to @attendee
    else
      render 'new'
    end
  end

private
  def attendee_params
    params.require(:attendee).permit(:first_name, :last_name, :email, :phone, :address, :city, :state, :zip, :industry, :questions)
  end
end
