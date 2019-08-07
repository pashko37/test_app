ActiveAdmin.register Question do
  permit_params :matter,:quiz_id

  index do
    selectable_column
    id_column
    column :matter
    column :quiz_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :matter
      f.input :quiz_id ,as: :select, collection: Quiz.all.map {|q| [q.title, q.id]}
    end
    f.actions
  end

end
