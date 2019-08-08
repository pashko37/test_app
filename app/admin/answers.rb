ActiveAdmin.register Answer do
  permit_params :matter, :question_id

  index do
    selectable_column
    id_column
    column :matter
    column :question_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :matter
      f.input :question_id, as: :select, collection: Question.all.map { |q| [q.matter, q.id] }
    end
    f.actions
  end
end
