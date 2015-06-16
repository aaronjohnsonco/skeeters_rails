class TeamsController < ApplicationController

	def create
		@team = Team.new(team_params)
		if @team.save
			redirect_to "/dashboard"
		end
	end

	private
		def team_params
			params.require(:team).permit(:name)
		end

end
