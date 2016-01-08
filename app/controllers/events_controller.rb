class EventsController < ApplicationController

  def index
    @events = Event.where('event_date >= ?', Date.today).order('event_date ASC')
  end

  def show
    @event = Event.find(params[:id])
  end

  def ryder_cup
    @event = Event.where(event_type: 'ryder_cup')
  end

  def knockout
  end
end
