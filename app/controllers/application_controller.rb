class ApplicationController < ActionController::Base
  protect_from_forgery
  rescue_from ActionController::UnknownAction, ActionController::RoutingError do
    redirect_to root_url
  end
end
