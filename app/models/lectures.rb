class Lectures < ActiveRecord::Base
	validates :topic, presence: true
	validates :email, presence: true
end
