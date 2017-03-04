class WelcomeController < ApplicationController
  def index
 
  if params[:search]
    @blog = Blog.search(params[:search])
  else
    @blog = Blog.all.order("created_at DESC")
  end
  end
end
