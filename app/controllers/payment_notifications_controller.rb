class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
  	PaymentNotification.create!(:params => params, :attendee_id => params[:invoice], :status => params[:payment_status], :transaction_id => params[:txn_id])
  	if params[:payment_status] == 'Complete'
      @attendee = Attendee.find(params[:invoice])
  	  UserMailer.welcome_email(@attendee).deliver
      @attendee.update_attribute(:paid, Time.now)
  	end
    render nothing: true
  end
end
