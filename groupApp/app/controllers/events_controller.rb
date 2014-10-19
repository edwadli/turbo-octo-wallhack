class EventsController < ApplicationController
    def new
        @typelist = ["Study", "Chill", "Sport", "Meal","Other"]
        event = params[:event]
    end

    def show
        @event = Event.find(params[:id])
    end

    def index
        @events = Event.all
    end

    def create
        @event = Event.new(event_params)
        @datemeet = Date.civil(params[:range][:"datemeet(11i)"].to_i,params[:range][:"datemeet(2i)"].to_i,params[:range][:"datemeet(3i)"].to_i) 
        @event.save
        redirect_to @event
    end
    private
    def event_params
        params.require(:event).permit(:title,
                                      :typemeet,
                                      :datemeet,
                                      :datemeet1,
                                      :datemeet2,
                                      :datemeet3,
                                      :datemeet4,
                                      :datemeet5,
                                      :datemeet6,
                                      :datemeet7,
                                      :datemeet8,
                                      :datemeet9,
                                      :datemeet10,
                                      :datemeet11,
                                      :datemeet12,
                                      :datemeet13,
                                      :datemeet14,
                                      :datemeet15,
                                      :datemeet16,
                                      :datemeet17,
                                      :datemeet18,
                                      :datemeet19,
                                      :datemeet20,
                                      :datemeet21,
                                      :datemeet22,
                                      :datemeet23,
                                      :datemeet24,
                                      :datemeet25,
                                      :datemeet26,
                                      :datemeet27,
                                      :datemeet28,
                                      :datemeet29,
                                      :datemeet30,
                                      :datemeet31,
                                      :datemeet32,
                                      :datemeet33,
                                      :datemeet34,
                                      :datemeet35,
                                      :datemeet36,
                                      :datemeet37,
                                      :datemeet38,
                                      :datemeet39,
                                      :datemeet40,
                                      :datemeet41,
                                      :datemeet42,
                                      :datemeet43,
                                      :datemeet44,
                                      :datemeet45,
                                      :datemeet46,
                                      :datemeet47,
                                      :datemeet48,
                                      :datemeet49,
                                      :datemeet50,
                                      :datemeet51,
                                      :datemeet52,
                                      :datemeet53,
                                      :datemeet54,
                                      :datemeet55,
                                      :datemeet56,
                                      :datemeet57,
                                      :datemeet58,
                                      :datemeet59,
                                      :datemeet60,
                                      :datemeet61,
                                      :datemeet62,
                                      :datemeet63,
                                      :datemeet64,
                                      :datemeet65,
                                      :datemeet66,
                                      :datemeet67,
                                      :datemeet68,
                                      :datemeet69,
                                      :datemeet70,
                                      :datemeet71,
                                      :datemeet72,
                                      :datemeet73,
                                      :datemeet74,
                                      :datemeet75,
                                      :datemeet76,
                                      :datemeet77,
                                      :datemeet78,
                                      :datemeet79,
                                      :datemeet80,
                                      :datemeet81,
                                      :datemeet82,
                                      :datemeet83,
                                      :datemeet84,
                                      :datemeet85,
                                      :datemeet86,
                                      :datemeet87,
                                      :datemeet88,
                                      :datemeet89,
                                      :datemeet90,
                                      :datemeet91,
                                      :datemeet92,
                                      :datemeet93,
                                      :datemeet94,
                                      :datemeet95,
                                      :datemeet96,
                                      :datemeet97,
                                      :datemeet98,
                                      :datemeet99,
                                      :datemeet100,
                                      :urgency,
                                      :location, :description)
    end
end
