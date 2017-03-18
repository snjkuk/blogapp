class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
private
  def current_user1
    @current_user1 ||= User1.find(session[:user1_id]) if session[:user1_id]
  end
  helper_method :current_user1
  
end
