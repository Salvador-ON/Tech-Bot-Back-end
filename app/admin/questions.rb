ActiveAdmin.register Question do

  permit_params :question, :category_id
  
end
