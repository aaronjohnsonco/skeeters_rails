class CoachesController < ApplicationController

	def create
		@coach = Coach.new(coach_params)
		if @coach.save
			redirect_to '/dashboard/coaches'
		else
			redirect_to '/dashboard/coaches'
		end
	end

	private
		def coach_params
			params.require(:coach).permit(:name, :type, :team_id)
		end

end
