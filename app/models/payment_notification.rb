class PaymentNotification < ActiveRecord::Base
	belongs_to :attendee
	serialize :params
	after_create :mark_attendee_paid

	private

	def mark_attendee_paid
		if status == 'Completed'
			attendee.update_attribute(:paid, Time.now)
			UserMailer.welcome_email(attendee).deliver
		end
	end
end
