class EventsController < ApplicationController
    def new
        @typelist = ["Study", "Chill", "Sport", "Meal","Other"]
    end

    def show
        @event = Event.find(params[:id])
    end

    def create
        @event = Event.new(event_params)

        @event.save
        redirect_to @event
    end
    private
    def event_params
        params.require(:event).permit(:title,
                                      #:type,
                                      :urgency,
                                      :location, :description)
    end
end
