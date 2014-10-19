class EventsController < ApplicationController
    def new
        @typelist = ["Study", "Chill", "Sport", "Meal","Other"]
        @event = Event.new
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Event.all 
        @typelist = ["Study", "Chill", "Sport", "Meal","Other"]
    end

    def create
        @event = Event.new(event_params)

        if @event.save
            redirect_to @event
        else
            render 'new'
        end
    end
    private
    def event_params
        params.require(:event).permit(:title,
                                      :typemeet,
                                      :urgency,
                                      :location, :description)
    end
end
