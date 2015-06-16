class EventsController < ApplicationController

  def create
  	@event = Event.new(event_params)
  	if @event.save 
  		respond_to do |format|
  			format.html
  			format.json {render json:@events.to_json}
  		end
  	else

  	end
  end

  private
    def event_params
      params.require(:event).permit(:title, :start_date, :end_date, :description, :team, :type)
    end

end
