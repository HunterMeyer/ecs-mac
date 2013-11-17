class Lecture < ActiveRecord::Base
	validates :topic, presence: true
	validates :email, presence: true
end
