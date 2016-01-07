class EventsController < ApplicationController

  def index
    @events = Event.where(event_year: Time.now.year)
  end

  def show
    @event = Event.find(params[:id])
  end

end
