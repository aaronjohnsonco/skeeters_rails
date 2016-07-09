class PlayersController < ApplicationController

	def create
		@player = Player.new(player_params)
		if @player.save
			redirect_to "/dashboard/players"
		else
			redirect_to "/dashboard/players"
		end
	end

	private

		def player_params
			params.require(:player).permit(:name, :number, :team_id)
		end

end
