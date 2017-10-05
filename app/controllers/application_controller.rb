class ApplicationController < ActionController::Base
  include ExceptionHandler
  include Response

  protect_from_forgery with: :exception

  def create_event(name:, product_id:, user_id:)
    EventCreaterJob.perform_asycn(name, product_id, user_id, current_store.id)
  end

  def current_store
    @current_store ||= Store.take_config_store
  end
end
