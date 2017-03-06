ActiveAdmin.register Categoryy do

# See permitted parameters documentation:
# 
  index do
    column :title
   end

#
 permit_params :title
 
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


end
