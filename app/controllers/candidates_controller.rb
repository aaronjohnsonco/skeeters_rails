class CandidatesController < ApplicationController

	def create
		@candidate = Candidate.new(candidate_params)
		if @candidate.save
			RegistrationMailer.registration_email(@candidate).deliver
			RegistrationMailer.registration_confirmation_email(@candidate).deliver
			redirect_to root_path
		else
			redirect_to tryout_path
		end
	end

	private

		def candidate_params
			params.require(:candidate).permit(:player_name, :dob, :player_experience, :city_of_residence, :contact1_name, :contact1_phone, :contact1_email, :contact2_name, :contact2_phone, :contact2_email)
		end

end
