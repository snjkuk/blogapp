class BlogsController < InheritedResources::Base
def index
	if 
     @blogs = Blog.search(params[:search])
	else
    @blogs = Blog.all
   end
end


# def show
#     @blogs = Blog.find(params[:id])
#   end
 
    

  private

    def blog_params
      params.require(:blog).permit(:title, :description, :images, :dropdown)
    end
end

