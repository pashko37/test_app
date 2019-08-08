ActiveAdmin.register Answer do
  permit_params :matter, :question_id, :check_status

  index do
    selectable_column
    id_column
    column :matter
    column :question_id
    column :check_status
    actions
  end

  form do |f|
    f.inputs do
      f.input :matter
      f.input :question_id, as: :select, collection: Question.all.map { |q| [q.matter, q.id] }
      f.input :check_status
    end
    f.actions
  end
end
