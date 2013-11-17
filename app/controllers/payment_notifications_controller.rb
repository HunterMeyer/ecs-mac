class PaymentNotificationsController < ApplicationController
  protect_from_forgery :except => [:create]

  def create
  	PaymentNotification.create!(:params => params, :attendee_id => params[:invoice], :status => params[:payment_status], :transaction_id => params[:txn_id])
  	attendee = Attendee.find(params[:invoice])
  	attendee.update_attribute(:paid, Time.now)
  	render :nothing => true
  end
end
