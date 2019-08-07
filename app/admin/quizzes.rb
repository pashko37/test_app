ActiveAdmin.register Quiz do
  permit_params :title,:desc

  index do
    selectable_column
    id_column
    column :title
    column :desc
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :desc
    end
    f.actions
  end

end
