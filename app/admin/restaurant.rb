ActiveAdmin.register Restaurant do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :image

form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :image, :as => :file, :hint => image_tag(f.object.image.url(:thumb))
    end
    f.actions
  end

  index do
    selectable_column
    id_column
    column :image do |restaurant|
      image_tag restaurant.image.url(:thumb)
    end
    column :name do |restaurant|
      link_to restaurant.name, admin_restaurant_path(restaurant)
    end
    column :description
    actions
  end

  show do
 	attributes_table do
	   row :image do |restaurant|
	     image_tag restaurant.image.url(:medium)
	   end
	   row :name	
	   row :description
	end
	active_admin_comments
  end

end
