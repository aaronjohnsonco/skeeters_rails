class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def create
  	@event = Event.new(event_params)
  	if @event.save
  		redirect_to dashboard_events_path
  	else
      redirect_to dashboard_events_path
  	end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to dashboard_events_path
    else
      redirect_to dashboard_events_path
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to dashboard_events_path
  end

  private
    def event_params
      params.require(:event).permit(:title, :location, :start_date, :end_date, :description, :team, :event_type, :team_id)
    end

end
