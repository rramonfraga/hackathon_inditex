class ApplicationController < ActionController::Base
  include ExceptionHandler
  include Response

  protect_from_forgery with: :exception
end
