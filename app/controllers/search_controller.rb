class SearchController < ApplicationController
	def search
  if params[:q].nil?
    blog= []
  else
    @blog = Blog.search params[:q]
  end
end

end
