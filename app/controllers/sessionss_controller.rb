class SessionssController < ApplicationController
	def create

    user = User1.from_omniauth(env["omniauth.auth"])
    session[:user1_id] = user.id
    redirect_to new_blog_path
  end

  def destroy
    session[:user1_id] = nil
    redirect_to new_blog_path
  end
end

