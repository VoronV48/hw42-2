ActiveAdmin.register Dish do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :description, :price, :restaurant_id

form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :price
      f.label :restaurant_id
      f.collection_select :restaurant_id,
		Restaurant.all, :id, :name
    end
    f.actions
  end

end
