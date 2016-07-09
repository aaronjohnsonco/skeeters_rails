class Team < ActiveRecord::Base
	has_many :coaches
	has_many :players

	validates_presence_of :name
	
end
