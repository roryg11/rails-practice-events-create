class EventsController < ApplicationController
  def new
    @event=Event.new
  end

  def create
    @event=Event.create(event_params)
    if @event.save
      redirect_to events_path
    else
      render :new
    end
  end

  def index
    @events=Event.all
  end

  private
  def event_params
    params.require(:event).permit(
    :date,
    :description,
    :requires_id,
    :capacity,
    :directions,
    )
  end

end
