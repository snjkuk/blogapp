class ComnntsController < InheritedResources::Base
  def create
    @blog = Blog.find(params[:blog_id])
    @comment = @blog.comments.create(comment_params)
    redirect_to blog_path(@blog)
  end
  private

    def comnnt_params
      params.require(:comnnt).permit(:title, :description)
    end
end

