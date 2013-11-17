class PaymentNotification < ActiveRecord::Base
	belongs_to :attendee
	serialize :params
	after_create :mark_attendee_paid

	private

	def mark_attendee_paid
		if status == 'Completed'
			attendee.update(:paid, Time.now)
		end
	end
end
