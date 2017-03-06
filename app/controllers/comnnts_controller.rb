class ComnntsController < InheritedResources::Base
  def create
    @blog = Blog.find(params[:blog_id])
    @comnnt = @blog.comnnts.create(comnnt_params)
    redirect_to blog_path(@blog)
  end
  private

    def comnnt_params
      params.require(:comnnt).permit(:title, :description)
    end
  #   def create
  #   @article = Article.find(params[:article_id])
  #   @comment = @article.comments.create(comment_params)
  #   redirect_to article_path(@article)
  # end
 
  # private
  #   def comment_params
  #     params.require(:comment).permit(:commenter, :body)
  #   end
end

# class CommentsController < ApplicationController
#   def create
#     @article = Article.find(params[:article_id])
#     @comment = @article.comments.create(comment_params)
#     redirect_to article_path(@article)
#   end
 
#   private
#     def comment_params
#       params.require(:comment).permit(:commenter, :body)
#     end
# end
