class ApplicationController < ActionController::Base
  include ExceptionHandler
  include Response

  protect_from_forgery with: :exception

  def create_event(name:, store_id:, product_id:, user_id:)
    EventCreaterJob.perform_asycn(name, store_id, product_id, user_id)
  end
end
