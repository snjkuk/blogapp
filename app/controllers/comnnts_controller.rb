class ComnntsController < InheritedResources::Base

  private

    def comnnt_params
      params.require(:comnnt).permit(:title, :description)
    end
end

