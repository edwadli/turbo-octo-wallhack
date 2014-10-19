
$TYPELIST = ["Study", "Chill", "Sport", "Meal","Other"]
class EventsController < ApplicationController
    def new
        @event = Event.new
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Event.all 
    end

    def update
        @event = Event.find(params[:id])
        @event.update(event_params)
        redirect_to @event
    end

    def destroy
        @event = Event.find(params[:id])
        @event.destroy

        redirect_to events_path
    end


    def create
        @event = Event.new(event_params)
        @datemeet = Date.civil(params[:range][:"datemeet(11i)"].to_i,params[:range][:"datemeet(2i)"].to_i,params[:range][:"datemeet(3i)"].to_i) 


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
                                      :datemeet,
                                      :content_date,
                                      :urgency,
                                      :location, :description)
    end
end
