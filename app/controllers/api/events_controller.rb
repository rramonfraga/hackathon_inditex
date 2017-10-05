module Api
  class EventsController < ApplicationController
    def create
      @event = Event.create!(event_params)
      json_response(event, :created)
    end

    private

    def event_params
      params.permit(:name, :store_id, :product_id, :user_id)
    end
  end
end
