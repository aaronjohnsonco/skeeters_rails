class Candidate < ActiveRecord::Base
	include ActiveModel::Validations
	validates :team, :player_name, :dob, :player_experience, :city_of_residence,
						:contact1_name, :contact1_phone, :contact1_email,
						presence: true
						

	
end
